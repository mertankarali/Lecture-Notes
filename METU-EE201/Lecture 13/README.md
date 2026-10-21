# EE201 — Lecture 13: Equivalent Resistances and Linearity

Lecture notes and slides for the thirteenth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_13.tex` | Handout / lecture notes (article, 5 pages). Self-contained: input resistance with a test source, the Δ–Y and Y–Δ transforms, linearity and superposition, five worked examples, a summary. |
| `EE201_Lecture_13_slides.tex` | Beamer deck (33 slides, 86 PDF pages) for the lecture itself — visual, low text. |
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

Following pp. 31–36 of Prof. Emre Tuna's notes, in the order of two of his recorded lectures:
one-ports and input resistance (01:04, 06:25), Δ to Y (16:13), Y to Δ (30:52), the symmetric
case (34:24) and the bridge example (36:11); then linearity (00:31), its block diagram (14:07)
and implication (17:19), superposition with killed sources (22:18–34:46) and the three
experiments example (40:24).

1. **Review and motivation** — equivalent one-ports (previously); two cases that series and
   parallel cannot simplify: a one-port with a dependent source, and a bridge
2. **Input resistance** — a one-port of LTI resistors, dependent sources (controls inside) and
   ideal transformers is equivalent to one resistor R_in; the idea of a 1 A test source
   (circuits I and II); Example 13.1: CCVS (3/2) i_x with 3 Ω and 2 Ω, i_x = −1 A plugged in
   first, e₁ = 3/5 V, R_in = 3/5 Ω (without the dependent source it would be 6/5 Ω)
3. **Δ to Y** — equal resistance between every two terminals (third one open), equations
   (1)–(3), their half-sum (4), and R₁ = R_B R_C /(R_A + R_B + R_C), …; rule: product of the
   two Δ resistors at the terminal over the sum
4. **Y to Δ** — R_A = (R₁R₂ + R₂R₃ + R₃R₁)/R₁, …; rule: sum of the products over the Y
   resistor opposite; equal resistors: Δ with R ≡ Y with R/3; exercise in conductances (notes)
5. **Example 13.2** — a bridge (7, 20, 10, 50, 40 Ω): the Δ A–B–C becomes a Y with 5, 4, 20 Ω,
   then (7 + 5) ∥ (20 + 4) + 20 = 28 Ω; checked with node voltages

6. **Linearity** — inputs u (independent source values), output y (any branch voltage or
   current), y = k u; block diagram; Example 13.3: k₁ = 1/(R₁ + R₂), k₂ = −R₂/(R₁ + R₂) for
   y = i; the implication y(αu + βw) = α y(u) + β y(w)
7. **Superposition** — one independent source at a time; a killed voltage source is a short,
   a killed current source an open; dependent sources are not killed. Example 13.4: 20 V,
   4 A and a CCVS 5 i_x: i₁ = 1 A, i₂ = 2 A, i = 3 A. Example 13.5: three experiments,
   v₃ = (2/3) v₁ + (2/3) v₂ without any element value

Then a summary table (situation → what to do).

## Slides

After the review comes a "Motivation" slide, and a roadmap slide opens each part: a road with
four stations (input resistance, Δ and Y, linearity, superposition); a second "Motivation"
slide opens the linearity part. Circuits and questions come
first and the answers on later pages; no "Question" labels. The Δ is marked in red and the Y
in blue. Each step is an ordinary extra PDF page; that is why the deck has 33 slides but 86
pages.
