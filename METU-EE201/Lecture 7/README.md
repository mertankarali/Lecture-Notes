# EE201 — Lecture 7: Circuit Graphs, the Incidence Matrix and Tellegen's Theorem

Lecture notes and slides for the seventh lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_7.tex` | Handout / lecture notes (article, 13 pages). Self-contained: definitions, eight worked examples plus one in the appendix, KCL and KVL in matrix form, Tellegen's theorem (general form and proof in the appendix). |
| `EE201_Lecture_7_slides.tex` | Beamer deck (27 slides, 83 PDF pages) for the lecture itself — visual, low text. |
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

Following pp. 12–15 of Prof. Emre Tuna's notes, his recorded Lecture 6 and the first 28 minutes
of his Lecture 7 on [METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351).

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
8. **Connected graphs** (46:52–48:00) — definition, with the graph of N (connected) next to
   a transformer circuit whose graph is in two pieces; other such circuits (a dependent
   source that senses in one part and acts in another: isolation amplifier, optocoupler).
   Connected ⇒ the n − 1 rows of A are independent. Separate pieces: treat each piece as
   a graph of its own (own reference node, own reduced matrix), then stack them —
   Example 7.5; p pieces give n − p independent rows
9. **KCL in matrix form** (50:15) — A i = 0: n − 1 independent KCL equations.
   Example 7.6 writes A_a, A and the equations for the circuit of Example 7.2
10. **Branch and node voltages** (L7 0:35–6:57) — v_k with + at the tail; e_k measured from
    the reference node; v_pq notation
11. **KVL on a circuit graph** (L7 8:30) — KVL around the loop formed by a branch and two node voltages gives v_k = e_tail − e_head, so v = Aᵀe with the same A;
    remarks (17:55): e fixes every branch voltage, and KVL puts no constraint on e (a loop
    check); node voltages as unknowns, the idea behind node analysis. Example 7.7: a
    ladder circuit (source, R, R, L, C), its graph and v = Aᵀe
12. **Tellegen's theorem** (L7 19:39, 24:31) — in any circuit Σ v_k i_k = 0 at every instant:
    conservation of power; the proof uses only KCL and KVL (it is in the appendix).
    Example 7.8: a 10 V source with 2, 4 and 12 Ω resistors solved
    with node voltages (KCL at ② gives e₂ = 6 V, then v = Aᵀe and Ohm's law); the table shows
    the source delivering 20 W and the resistors absorbing 20 W.
    **Appendix** (notes only): A.1 the general Tellegen's theorem (two circuits with the
    same graph) with a numerical check on N (Example A.1); A.2 its proof — write each v_k as
    tail minus head and collect the terms of each node voltage, every bracket is a KCL
    equation; then the same two steps in matrix form
13. **Looking ahead: why node voltages?** — a flow from the n − 1 node voltages to every
    branch voltage (KVL holds automatically), every branch current (element equations) and back to
    n − 1 KCL equations: the idea of node analysis, without the full method yet

## Conventions

Same colour code as before (current blue, voltage and node voltage orange, power green); nodes are dark red, with circled
node numbers in the text, figures and matrix row labels. Branch arrows in a circuit drawing
are blue (they are current references); in a graph they are plain arrows.

The bridge example, the 3-terminal example, the KCL equations (one node at a time, with
the node highlighted), the matrix (a row, then a column), linear dependence, the reduced
matrix, the separate-pieces example, the KCL example, KVL on the graph, and the Tellegen example build up **step by step** with beamer overlays. Each step is an
ordinary extra PDF page; that is why the deck has 27 slides but 83 pages.

## References

- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Section 2.4
- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits* — circuit graphs, the incidence matrix, Tellegen's theorem
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
