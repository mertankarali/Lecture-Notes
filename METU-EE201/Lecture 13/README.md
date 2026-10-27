# EE201 — Lecture 13: Linearity, Thévenin and Norton Equivalents

Lecture notes and slides for the thirteenth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_13.tex` | Handout / lecture notes (article, 9 pages). Self-contained: input resistance with a test source, linearity and superposition, Thévenin and Norton equivalents, maximum power transfer, a summary; Appendix A (take-home, new page): the Δ–Y and Y–Δ transforms. Nine worked examples. |
| `EE201_Lecture_13_slides.tex` | Beamer deck (54 slides and a 9-slide take-home part, 147 PDF pages) for the lecture itself — visual, low text. |
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

Following pp. 31–43 of Prof. Emre Tuna's notes, in the order of five of his recorded lectures:
one-ports and input resistance, linearity and superposition, Thévenin's and Norton's theorems
with the three-step example, then the load-design and ideal-transformer examples, and maximum power transfer. The Δ–Y
transform is a take-home part.

1. **Review and motivation** — equivalent one-ports (previously); a one-port with a dependent
   source: series and parallel are not enough
2. **Input resistance** — a one-port of LTI resistors, dependent sources (controls inside) and
   ideal transformers is equivalent to one resistor R_in; a 1 A test source (circuits I and
   II); Example 13.1: CCVS (3/2) i_x with 3 Ω and 2 Ω, R_in = 3/5 Ω
3. **Linearity** — inputs u, output y, each input alone gives y_j = k_j u_j and y = y₁ + … + y_m = k u; block diagram; Example 13.2 (i = i₁ + i₂): k₁ = 1/(R₁ + R₂),
   k₂ = −R₂/(R₁ + R₂) for y = i; the implication y(αu + βw) = α y(u) + β y(w)
4. **Superposition** — one independent source at a time; a killed voltage source is a short,
   a killed current source an open; dependent sources are not killed. Example 13.3: 20 V,
   4 A and a CCVS 5 i_x: i = 1 A + 2 A = 3 A. Example 13.4: three experiments,
   v₃ = (2/3) v₁ + (2/3) v₂ without any element value
5. **Thévenin and Norton** — conditions (A1) controls of the dependent sources inside N,
   (A2) the port both voltage- and current-controlled; v = R_th i + v_th and
   v = R_N i + R_N i_N; the same line in the i–v plane: R_th = R_N, v_th = R_th i_N
6. **Computing** — open circuit: v_oc = v_th; short circuit: i_sc = i_N; R_th = v_oc / i_sc,
   or kill the independent sources (dependent sources stay) and find R_in
7. **Examples** — Example 13.5: v_s with R, i_s and a CCCS 5 i_x: v_th = (R/4) i_s + v_s,
   i_N = −i_s − (4/R) v_s, R_th = −R/4 (also from a 1 V test source). Example 13.6: the
   Thévenin equivalent seen by R is −140/3 V with 170/3 Ω, and v_R = −7 V needs R = 10 Ω.
   Example 13.7: an ideal transformer 3 : 2 with a 2 Ω bridge and a 2 Ω load; a 1 A test source at the port gives R_in = 18/5 Ω
8. **Maximum power transfer** — motivation (a fixed circuit, the load R_L as the design
   parameter); the power P_L = R_L v_th²/(R_th + R_L)² and its two extremes (short, open);
   dP_L/dR_L = 0 gives R_L = R_th and P_L,max = v_th²/(4R_th) = R_N i_N²/4; at maximum power
   v_L = v_th/2 and, in the equivalent, half of the source power reaches the load. Example 13.8: 20 mA, 2 kΩ and two 1 kΩ feed a load R ∥ 6 kΩ:
   v_th = 40 V, R_th = 4 kΩ, so R = 12 kΩ and P_L,max = 0.1 W

Then a summary table (situation → what to do).

**Take-home (appendix): the Δ–Y transform** — Δ to Y (equal resistance between every two
terminals, R₁ = R_B R_C /(R_A + R_B + R_C), …), Y to Δ (R_A = (R₁R₂ + R₂R₃ + R₃R₁)/R₁, …),
equal resistors (Δ with R ≡ Y with R/3), an exercise in conductances (notes), and Example 13.9:
a bridge (7, 20, 10, 50, 40 Ω) whose Δ A–B–C becomes a Y with 5, 4, 20 Ω, giving 28 Ω.

## Slides

Right after the review comes the roadmap: a road with five stations (input resistance,
linearity, superposition, Thévenin and Norton, maximum power). A roadmap slide opens each part,
followed by a "Motivation" slide for the input-resistance, linearity, Thévenin–Norton and
maximum-power parts. The Δ–Y transform comes after the summary
as a "Take-home" part (its own divider slide, footer "Take-home", not counted in the slide
numbers); the Δ is marked in red and the Y in blue. Circuits and questions come first and the
answers on later pages; no "Question" labels. Dependent-source values are plugged in before
the equations are written. Each step is an ordinary extra PDF page; that is why the deck has
63 slides but 147 pages.
