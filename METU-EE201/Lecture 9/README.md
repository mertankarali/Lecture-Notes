# EE201 — Lecture 9: Trees, Cutsets and Fundamental Loops

Lecture notes and slides for the ninth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_9.tex` | Handout / lecture notes (article, 5 pages). Self-contained: definitions, four worked examples, the "any connected graph" summary. |
| `EE201_Lecture_9_slides.tex` | Beamer deck (20 slides, 63 PDF pages) for the lecture itself — visual, low text. |
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
`tikz` — no external image files.

## Contents

Following pp. 17–18 of Prof. Emre Tuna's notes and his recorded Lecture 8 on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351). The review part of the video
(00:00–14:27) is two slides only (the two matrices of the bridge graph; node voltages vs mesh currents).

1. **Beyond planar graphs** (15:51) — a nonplanar graph has no meshes (shown with a jumper wire); trees work for any
   connected graph
2. **Trees** (16:10, 18:01) — definition; Example 9.1 on the bridge graph: {2, 4, 5} and
   {3, 5, 6} are trees, {1, 2, 3, 5} is not (loop 1, 2, 3); a tree has n − 1 branches
3. **Cutsets** (22:33, 25:32) — definition (minimal set whose removal cuts the graph in two);
   Example 9.2 on a figure-eight graph: {4, 5, 7}, {1, 3}, {6, 7}; {1, 3, 4, 5, 6} is not a
   cutset ({4, 5, 6} is), {4, 6} is not either (parallel branches 4, 5); each candidate is checked step by step (highlight, remove, put one back); KCL on a cutset = KCL on a closed surface, checked with branch currents on {4, 5, 6}
4. **Fundamental cutsets** (30:35, 32:55, 38:32) — one per tree branch; the cotree; Example 9.3
   on a trapezoid graph G (n = 5, b = 7, tree {1, 3, 6, 7}): four KCL equations, independent;
   remark (41:48): cotree currents fix the tree currents
5. **Fundamental loops** (43:51, 47:07) — one per cotree branch; Example 9.4: three KVL
   equations, independent; remark (55:38): tree voltages fix the cotree voltages
6. **Any connected graph** — n − 1 tree branches ↔ KCL, b − n + 1 cotree branches ↔ KVL; works
   for nonplanar graphs and fixes the separable case met earlier (square with a triangle inside)
7. **Looking ahead** — tree branch voltages and cotree branch currents as the general version of
   node voltages and mesh currents

Then a summary, the next lecture (duality) and reading.

## Slides

The tree candidates, the cutsets, the fundamental cutsets and the fundamental loops build up
step by step with beamer overlays; candidates are shown first ("tree?", "a cutset?") and the
answer on the next page. Each step is an ordinary extra PDF page; that is why the deck has 20
slides but 63 pages.
