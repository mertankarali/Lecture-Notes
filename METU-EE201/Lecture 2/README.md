# EE201 — Lecture 2: Kirchhoff's Laws

Lecture notes and slides for the second lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_2.tex` | Handout / lecture notes (article, 7 pages). Self-contained: definitions, derivations and four worked examples. |
| `EE201_Lecture_2_slides.tex` | Beamer deck (24 slides) for the lecture itself — visual, low text. |
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
with `tikz` / `circuitikz` — no external image files.

## Contents

Following the order of the recorded Lecture 2 of Prof. Emre Tuna on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351)
(network and terminal equations 6:50, KCL 8:35, KVL 18:55):

1. A circuit and the question it asks — node/branch/loop, `2b` unknowns, terminal
   equations give only half, the missing half is the interconnection
2. KCL — statement, charge-conservation argument, sign rule, closed surfaces,
   elements in a chain carry one current (Examples 2.1, 2.2)
3. KVL — statement, node potentials telescoping, path independence, independent loops
   (Examples 2.3, 2.4)
4. Counting: `(n-1)` KCL + `(b-n+1)` KVL + `b` terminal = `2b`
5. The opening circuit solved with all eight equations, plus a power-balance check

Circuit graphs, equivalent resistance and the dividers are deliberately **not** here —
they belong to the following lectures.

## Running example

One circuit (12 V, 2 Ω, 6 Ω, 3 Ω; `n = 3`, `b = 4`) carries the whole lecture: it opens
the notes, supplies the loop-dependence example, the equation count, and the full `2b`
system at the end.

## Colour code

Identical to Lecture 1: current `ccur` blue, voltage `cvolt` orange, power `cpow` green,
charge `ccharge` purple; structure in METU maroon.

## References

- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Ch. 2
- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits*, Ch. 2
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
