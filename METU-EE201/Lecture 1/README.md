# EE201 — Lecture 1: Basic Concepts

Lecture notes and slides for the first lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_1.tex` | Handout / lecture notes (article, ~14 pages). Self-contained: full definitions, derivations and worked examples. |
| `EE201_Lecture_1_slides.tex` | Beamer deck (30 slides) for the lecture itself — visual, low text. |
| `build.sh` | Compiles both, removes auxiliary files, opens the PDFs. |

## Compiling

```
./build.sh              # both, clean up, open the PDFs
./build.sh --no-open    # compile and clean only
./build.sh slides       # only the deck
./build.sh notes        # only the handout
./build.sh --clean      # only remove *.aux, *.log, *.out, ...
```

Uses `latexmk` when available, otherwise two `pdflatex` passes. All figures are drawn
with `tikz` / `circuitikz` — no external image files, nothing to keep in sync.

## Contents

Following the order of the recorded lecture of Prof. Emre Tuna on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351) (video timestamps are listed
in the handout):

1. Why circuits? real system → graphical model → mathematical model → analysis
2. Charge — 3. Current — 4. Voltage (with the hydraulic analogy) — 5. Ground
6. Power and energy — 7. Passive sign convention — 8. Electric and lumped circuits
9. Terminals, nodes, branches

## Colour code

Used identically in the handout and the slides, and worth keeping in later lectures:

| Quantity | Colour |
|---|---|
| charge `q` | purple `ccharge` |
| current `i` | blue `ccur` |
| voltage `v` | orange `cvolt` |
| power `p`, energy `w` | green `cpow` |

Defined at the top of both `.tex` files as `\ccharge`, `\ccur`, `\cvolt`, `\cpow`
colours and the `\Qcol{} \Icol{} \Vcol{} \Pcol{}` wrappers.

## References

- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Ch. 1
- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits*, Ch. 1
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
