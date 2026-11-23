# EE201 — Lecture 16: Operational Amplifiers

Lecture notes and slides for the op-amp lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_16.tex` | Handout / lecture notes (article, 16 pages): the op-amp, its terminals, supplies and transfer characteristic; the dependent-source and finite-gain models; negative feedback and why it keeps v₊ ≈ v₋; the infinite-gain ideal model and the region-by-region method; voltage follower and positive feedback; inverting and non-inverting amplifiers; summing and difference amplifiers; integrator and differentiator; the finite-gain check on the inverting amplifier; a summary. Seven worked examples. |
| `EE201_Lecture_16_slides.tex` | Beamer deck (35 slides, 57 PDF pages) for the lecture itself — visual, low text. |
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

Following the operational-amplifier pages of Prof. Emre Tuna's notes, with the examples reworked
using simple numbers; the finite-gain follower uses his model parameters. Following the
department's revised EE201 content, common-mode rejection ratio, piecewise-linear/nonlinear
elements in the feedback path and multistage op-amp circuits are not covered.
