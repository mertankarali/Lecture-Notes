# EE201 — Lecture 13: Input Resistance and the Δ–Y Transform

Lecture notes and slides for the thirteenth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_13.tex` | Handout / lecture notes (article, 3 pages). Self-contained: input resistance with a test source, the Δ–Y and Y–Δ transforms, two worked examples, a summary. |
| `EE201_Lecture_13_slides.tex` | Beamer deck (20 slides, 52 PDF pages) for the lecture itself — visual, low text. |
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

Following pp. 31–33 of Prof. Emre Tuna's notes (one-ports, input resistance, Δ–Y transform),
in the order of his recorded lecture (one-ports 01:04, input resistance 06:25, Δ to Y 16:13,
Y to Δ 30:52, symmetric case 34:24, example 36:11).

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

Then a summary table (situation → what to do).

## Slides

After the review comes a "Motivation" slide, and a roadmap slide opens each part: a road with
four stations (input resistance, Δ to Y, Y to Δ, an example). Circuits and questions come
first and the answers on later pages; no "Question" labels. The Δ is marked in red and the Y
in blue. Each step is an ordinary extra PDF page; that is why the deck has 20 slides but 52
pages.
