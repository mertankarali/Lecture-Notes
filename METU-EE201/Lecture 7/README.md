# EE201 — Lecture 7: Circuit Graphs and the Incidence Matrix

Lecture notes and slides for the seventh lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_7.tex` | Handout / lecture notes (article, 7 pages). Self-contained: definitions, five worked examples, why the rows of A are independent for a connected graph. |
| `EE201_Lecture_7_slides.tex` | Beamer deck (20 slides, 49 PDF pages) for the lecture itself — visual, low text. |
| `build.sh` | Compiles both, removes auxiliary files, opens the PDFs. |

## Compiling

```
./build.sh              # both, clean up, open the PDFs
./build.sh --no-open    # compile and clean only
./build.sh slides       # only the deck
./build.sh notes        # only the handout
./build.sh --clean      # only remove *.aux, *.log, *.out, ...
```

Uses `latexmk` when available, otherwise two `pdflatex` passes. All figures and the
labelled matrices are drawn with `tikz` / `circuitikz` — no external image files and no
extra matrix packages.

## Contents

Following pp. 12–14 of Prof. Emre Tuna's notes and his recorded Lecture 6 on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351).

1. **Interconnection equations** (2:18) — the 2b equations split into b element equations
   (what the elements are) and b interconnection equations, KCL and KVL (how they are wired).
   The second group depends only on the graph
2. **The graph of a circuit** (4:00–7:55) — the four-step procedure: number the branches,
   give each an arbitrary arrow (the current reference; associated reference for the
   voltage), number the nodes, keep dots and arrows. Example 7.1: Prof. Tuna's bridge
   circuit N, n = 4, b = 6
3. **Elements with more than two terminals** (13:45) — a k-terminal element becomes k − 1
   branches to a chosen reference terminal, and why k − 1 (KCL on a surface, KVL); the
   transistor with the emitter as reference; Example 7.2, a circuit with a 3-terminal element
4. **KCL on a circuit graph** (21:49) — leaving +, entering −; the four node equations of N
5. **The incidence matrix** (26:04–30:40) — circuit matrices; A_a (n × b), KCL as
   A_a i = 0; reading a row (a node, its KCL) and a column (a branch, one +1 and one −1)
6. **Review: linear dependence** (35:19–37:24) — definition; Example 7.3; rank and full row rank
7. **The reduced incidence matrix** (40:45–43:45) — rows of A_a always sum to zero; delete
   the reference node's row to get A, (n − 1) × b; Example 7.4; deleting the row loses no
   equation and no part of the graph
8. **Connected graphs** (46:52–48:00) — definition and examples; for a connected graph the
   rows of A are independent, with a short argument; a circuit in two separate pieces
   (e.g. coupled only through a transformer) can be joined by one wire that carries no current
9. **KCL of a circuit graph** (50:15) — A i = 0: n − 1 independent KCL equations.
   Example 7.5 writes A_a, A and the equations for the circuit of Example 7.2

## Conventions

Same colour code as before (current blue, voltage orange); nodes are dark red, with circled
node numbers in the text, figures and matrix row labels. Branch arrows in a circuit drawing
are blue (they are current references); in a graph they are plain arrows.

The bridge example, the 3-terminal example, the KCL equations (one node at a time, with
the node highlighted), the matrix (a row, then a column), linear dependence, the reduced
matrix and the last example build up **step by step** with beamer overlays. Each step is an
ordinary extra PDF page; that is why the deck has 20 slides but 49 pages.

## References

- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Section 2.4
- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits* — circuit graphs and the incidence matrix
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
