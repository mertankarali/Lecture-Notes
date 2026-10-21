# EE201 — Lecture 12: Mesh Current Analysis

Lecture notes and slides for the twelfth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_12.tex` | Handout / lecture notes (article, 5 pages). Self-contained: procedure, four worked examples, a summary. |
| `EE201_Lecture_12_slides.tex` | Beamer deck (34 slides, 126 PDF pages) for the lecture itself — visual, low text. |
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

Following pp. 28–30 of Prof. Emre Tuna's notes, the second part of his recorded Lecture 12
(27:34–49:28) and his recorded Lecture 13 (00:00–44:09) on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351). Notation follows the mesh
matrix lecture: mesh currents i_M = [i_M1 … i_Mℓ]ᵀ, i = Mᵀ i_M, KVL M v = 0.

1. **The procedure, on an example** (L12 27:34, Example I) — Example 12.1 (three meshes,
   R₁…R₄, v_s1, v_s2; 12 branch unknowns vs 3 mesh currents) taught in four steps: find the
   inner meshes (planar, ℓ = b − n + 1); assign clockwise mesh currents (every branch current
   is a combination, so KCL holds automatically); resistor voltages R(i_Mk − i_Mj); KVL
   around every inner mesh
2. **Matrix form** — Z_M i_M = v_M (Z_M: mesh impedance matrix; v_M: source voltages rising
   along each mesh); Z_M directly from the circuit with three rules (diagonal, off-diagonal,
   right side) on one slide: each rule appears, then its entries of Example 12.1 are filled in
   (diagonal per mesh, off-diagonal per shared resistor, right side; each highlighted in the
   circuit), symmetric; Z_M from the graph: the graph of Example 12.1 (branches 1–4
   resistors, 5–6 sources), its mesh matrix M = [M_R M_S] built row by row; KVL, KCL and
   Ohm's law in block form (Mᵀ split into resistor rows i_R = M_Rᵀ i_M and source rows);
   Z_M = M_R R M_Rᵀ and v_M = −M_S v_S, checked on the example
3. **A current source on one mesh only** (L12 42:55, Example II) — Example 12.2: i_s on the
   outer branch of mesh 1 fixes i_M1 = i_s; no KVL around mesh 1; 2 × 2 system
4. **A current source between two meshes** (L13 01:09, modified mesh analysis) — Example
   12.3: Method I (its voltage v as an extra unknown, plus the constraint i_M1 − i_M2 = i_s,
   3 × 3) and Method II (the supermesh: v cancels, KVL around the outer loop, 2 × 2, not
   symmetric)
5. **Dependent sources** (L13 20:59) — one type only: Example 12.4, a dependent current
   source 3 v_x on mesh 3 only and a 2 A source between meshes 1 and 2; supermesh plus two
   constraints, i_M = (2, 4, 12) A, i = −10 A; a dependent voltage source is mentioned as the
   easy case (it adds a term to KVL, as a dependent current source added a term to KCL
   previously); remark (dependent current source on one mesh: no KVL there)
6. **Node or mesh?** (L13 ~34:00, node voltage formulation) — Example 12.4 again with node voltages (ground at the right
   node, the middle node at 12 V, e₁ = −28 V, e₂ = −24 V, the same i = −10 A); counting rule:
   mesh, ℓ minus the current sources; node, n − 1 minus the voltage sources

Then a summary table (situation → what to do).

## Slides

The "Z_M from the graph" slides are at the end of the deck, after the summary.

After the review of node voltage analysis comes a "Motivation" slide (node voltages vs mesh
currents: which law holds automatically, which one is written), and a roadmap slide opens
each part: a road with four stations (voltage sources, current sources, dependent sources,
node or mesh?). Questions are shown first and the answers on the next page; equations,
matrix rows and constraints appear one per page, and the mesh being written is shaded in
the circuit. Each step is an ordinary extra PDF page; that is why the deck has 34 slides but
126 pages.

Every example is also written in matrix form.

In the notes, Z_M of the first example is colour-coded (diagonal, off-diagonal, right side), matching the three rules, with a small table giving the reason for each entry.
