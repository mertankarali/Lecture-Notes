# EE201 — Lecture 14: Two-Port Circuits

Lecture notes and slides for the fourteenth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_14.tex` | Handout / lecture notes (article, 16 pages). Self-contained: port variables, the resistance, conductance, hybrid and transmission matrices, when a matrix exists, measuring a two-port, the power of a two-port, a summary. Eight worked examples (and three in the appendix), each with the problem in a box and a step-by-step solution below it. |
| `EE201_Lecture_14_slides.tex` | Beamer deck (33 slides, 39 PDF pages) for the lecture itself — visual, low text. |
| `build.sh` | Compiles both, removes auxiliary files, opens the PDFs. |

## Compiling

```
./build.sh              # both, clean up, open the PDFs
./build.sh --no-open    # compile and clean only
./build.sh slides       # only the deck
./build.sh notes        # only the handout
./build.sh --clean      # only remove *.aux, *.log, *.out, ...
```

Uses `latexmk` when available, otherwise two `pdflatex` passes. All figures are drawn with
`tikz` / `circuitikz` — no external image files.

## Contents

Following pp. 44–48 of Prof. Emre Tuna's notes and two of his recorded lectures: two-port
circuits and the resistance matrix (00:45), the trivial case (10:25), Example II (13:13), the
open-circuit tests (18:39, 22:11), the conductance matrix (28:04, 31:18); then the hybrid
matrices (00:44, 02:30), the transmission matrix (04:30), the ideal transformer (06:11), and the
power of a two-port with passive and active two-ports (33:10, 37:39).

As agreed for this year, terminated two-ports (input resistance of a two-port with a load) and
interconnections of two-ports are not covered.

1. **Two-port circuits** — four port variables and two equations; a table of the
   representations
2. **Resistance matrix** — v = R i. Example 14.1: 2 Ω and 4 Ω on separate ports, R = diag(2, 4) Ω.
   Example 14.2: 2 Ω, 1 Ω and a CCVS 2 i₁: R = [3, 1; −1, 1] Ω by KVL, then again
   from the open-circuit tests
3. **Conductance matrix** — i = G v from short-circuit tests; G = R⁻¹ when both exist.
   Example 14.3: G of Example 14.2, G = [1/4, −1/4; 1/4, 3/4] S
4. **Hybrid matrices** — [v₁ i₂]ᵀ = H [i₁ v₂]ᵀ, H′ = H⁻¹. Example 14.4: the same circuit
   gives H = [4, 1; 1, 1] and H′ = H⁻¹ = [1/3, −1/3; −1/3, 4/3], checked by its own tests (port 2 open, port 1 shorted). Example 14.5: the ideal transformer,
   H = [0, n; −n, 0], with no R and no G
5. **Transmission matrix** — [v₁ i₁]ᵀ = T [v₂ −i₂]ᵀ. Example 14.6: the ideal transformer,
   T = diag(N₁/N₂, N₂/N₁)

When does a matrix exist? Set both of its inputs to zero; it exists if all port variables are
then forced to zero (R: both ports open; G: both shorted; T: port 2 with no voltage and no
current). Three cases: one resistor across both ports (no G, det R = 0), one resistor between
the ports (no R, det G = 0), two separate resistors (no T). From one matrix to another: G needs
det R ≠ 0, H needs r₂₂ ≠ 0, H′ needs r₁₁ ≠ 0 (or det H ≠ 0), T needs r₂₁ ≠ 0 (or g₂₁ ≠ 0).
6. **Power of a two-port** — P_N = v₁ i₁ + v₂ i₂ (from Tellegen's theorem); passive if
   P_N ≥ 0 for all port variables, active otherwise. Example 14.8: the ideal transformer has
   P_N = 0, so it is passive

Measuring a two-port: an ideal voltmeter is an open and an ideal ammeter a short, so the tests
are real experiments (a source at one port, meters at both). When a port cannot be opened or
shorted, any two independent experiments give R = V I⁻¹. Example 14.7: two measurements with no
open port give R = [4, 1; 2, 3].

Then a "Which test? Open or short" table (for each matrix: its inputs and which port is opened or shorted for each column) and a summary table (matrix → equation → how to find it).

**Appendix (notes only; not in Prof. Tuna's notes): passivity from the matrix.** P_N = iᵀ R i, so only the
symmetric part R_s = ½(R + Rᵀ) matters; the two-port is passive if and only if R_s is positive
semidefinite (r₁₁ ≥ 0, r₂₂ ≥ 0, r₁₁r₂₂ − ¼(r₁₂ + r₂₁)² ≥ 0). The same works with G and H, not
with T. Example A.1: Example 14.4 is passive despite its dependent source (R_s = diag(3, 1)). Example
A.2: the ideal transformer has an antisymmetric H, so P_N = 0. Example A.3: the same circuit
with a 6 i₁ source is active (P_N = −1 W at i₁ = 1 A, i₂ = 2 A).

## Slides

Right after the review comes the roadmap: a road with five stations (resistance matrix,
conductance matrix, hybrid matrices, transmission matrix, power). A roadmap slide opens each
part. Circuits and questions come first and the answers on later pages; no "Question" labels.
Each step is an ordinary extra PDF page; that is why the deck has 33 slides but 39 pages.
