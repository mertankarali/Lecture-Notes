# EE201 — Lecture 17: Capacitors

Lecture notes and slides for the capacitor lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_17.tex` | Handout / lecture notes (article, 11 pages): step, ramp and impulse; the impulse as a pulse limit; sketches and derivatives with impulses; the sifting property; the LTI capacitor and its stored energy; three equivalent initial-condition models; parallel and series capacitors; current and voltage division; from 0⁻ to 0⁺ (continuity of the capacitor voltage, impulsive currents); RC discharge and the two-capacitor energy loss; a summary. Eight worked examples. |
| `EE201_Lecture_17_slides.tex` | Beamer deck (33 slides, 75 PDF pages) for the lecture itself — visual, low text, roadmap between topics. |
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

Follows Prof. Emre Tuna's recorded lectures 31–33 and the matching pages of his notes
(elementary functions, the LTI capacitor, initial-condition models, connections and division,
parallel and series RC from 0⁻ to 0⁺), with the examples reworked using simple numbers.
