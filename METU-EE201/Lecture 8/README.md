# EE201 — Lecture 8: Planar Graphs, the Mesh Matrix and Mesh Currents

Lecture notes and slides for the eighth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_8.tex` | Handout / lecture notes (article, 6 pages). Self-contained: definitions, four worked examples, a node-voltage vs. mesh-current comparison. |
| `EE201_Lecture_8_slides.tex` | Beamer deck (19 slides, 54 PDF pages) for the lecture itself — visual, low text. |
| `build.sh` | Compiles both, removes auxiliary files, opens the PDFs. |

## Compiling

```
./build.sh              # both, clean up, open the PDFs
./build.sh --no-open    # compile and clean only
./build.sh slides       # only the deck
./build.sh notes        # only the handout
./build.sh --clean      # only remove *.aux, *.log, *.out, ...
```

Uses `latexmk` when available, otherwise two `pdflatex` passes. All figures and labelled
matrices are drawn with `tikz` / `circuitikz` — no external image files.

## Contents

Following pp. 15–16 of Prof. Emre Tuna's notes and his recorded Lecture 7 on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351), 27:59–53:57.

1. **From nodes to meshes** — the incidence matrix gave A i = 0 and v = Aᵀe; today the
   counterpart from meshes
2. **Planar graphs** (27:59–29:45) — definition; Example 8.1: the bridge graph N drawn as a
   square with crossing diagonals is the same graph as N (planar); the hexagon with three
   long diagonals is nonplanar. *Crossing is not touching*: the same drawings with the
   hop (bump) notation — the square needs one hop, the hexagon graph at least one — and the
   hexagon graph in 3D (diagonals lifted to different heights) from above, obliquely and
   from the side
3. **Nonseparable graphs** (33:02) — definition; two triangles sharing a node (separable)
   vs. the graph of N (nonseparable)
4. **Meshes** — inner meshes of a planar drawing, clockwise by convention; ℓ = b − n + 1
5. **The mesh matrix** (34:41–38:30) — M (ℓ × b): +1 along, −1 against; Example 8.2 builds M
   for N mesh by mesh; KVL as M v = 0
6. **Mesh currents** (47:10–48:43) — i = Mᵀ i_M; Example 8.3 for N; remarks: KCL puts no
   constraint on mesh currents, so A Mᵀ = 0; the idea behind mesh analysis.
   Example 8.4: the circuit solved earlier with node voltages, checked with mesh currents
7. **Looking ahead: why mesh currents?** — the same flow with KCL and KVL swapped: ℓ mesh
   currents, KCL built in, KVL gives ℓ equations — the idea of mesh analysis
8. **Summary** — a table comparing node voltages and mesh currents

## Conventions

Same colour code as before (current blue, voltage orange, nodes dark red with circled
numbers). Meshes are numbered in blue boxes with a clockwise arrow. Mesh currents are
i_M1, i_M2, …

The planar-graph example, the meshes, the mesh matrix (one row per step, with the mesh
shaded), mesh currents, the remarks and the circuit example build up **step by step**
with beamer overlays. Each step is an ordinary extra PDF page; that is why the deck has
19 slides but 54 pages.

## References

- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Section 3.4
- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits* — planar graphs, meshes, the mesh matrix
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
