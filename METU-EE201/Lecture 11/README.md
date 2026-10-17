# EE201 — Lecture 11: Node Voltage Analysis

Lecture notes and slides for the eleventh lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_11.tex` | Handout / lecture notes (article, 5 pages). Self-contained: procedure, six worked examples, a summary. |
| `EE201_Lecture_11_slides.tex` | Beamer deck (33 slides, 113 PDF pages) for the lecture itself — visual, low text. |
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

Following pp. 24–27 of Prof. Emre Tuna's notes, his recorded Lecture 11 (00:00–52:02) and the
first half of his recorded Lecture 12 (00:00–~35:00) on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351).

1. **The procedure, on an example** (L11 00:00) — Example 11.1 (14 branch unknowns vs 3 node
   voltages) taught in four steps: choose a reference node; label the node voltages (every
   branch voltage is a difference, so KVL holds automatically); write the currents,
   (e_k − e_j)/R; KCL at every node except the ground
2. **Matrix form** — Y_n e = i_s; Y_n written directly from the circuit with three rules (diagonal, off-diagonal, right side);
   Y_n from the graph: the graph of Example 11.1 (branches 1–5 resistors, 6–7 sources,
   node 0 the ground), its reduced incidence matrix A = [A_R A_S]; KVL v = Aᵀe and its
   resistor rows v_R = A_Rᵀe worked out on the example (each resistor voltage is tail minus
   head node voltage); then
   Y_n = A_R G A_Rᵀ and i_s = −A_S i_S, checked on the example; Y_n symmetric since G is
   diagonal
3. **A voltage source to the ground** (Example II) — Example 11.2, one slide: the source fixes
   e₃ = v_s, so e₃ is known and no KCL is written at node 3; two KCL equations, 2 × 2 system,
   v_s/R₄ on the right side
4. **A voltage source between two nodes** (Modified NVA, Method I) — Example 11.3: its current
   i as an extra unknown plus the constraint e₁ − e₂ = v_s2; one slide, the equations then
   the 4 × 4 matrix form
5. **Supernode** (L12 04:00, Method II) — adding KCL at nodes 1 and 2 cancels i; KCL at the
   supernode plus the constraint; 3 × 3, one unknown fewer, not symmetric (the notes no longer
   have the Method I vs Method II table)
6. **Dependent sources** (L12 11:20) — Example 11.4 (added): a dependent current source
   0.5 v_x, KCL as usual, v_x = e₁, e₁ = 3 V, e₂ = 6 V, Y_n not symmetric; Example 11.5: a
   dependent voltage source v_x = e₁ between nodes 3 and 2, supernode S, e₁ = 8 V, e₂ = 9 V,
   e₃ = 1 V, P₃Ω = 27 W; remark (dependent voltage source to ground: no KCL there)
7. **Choosing the ground** (L12 25:22, exercise) — Example 11.6: node 3 as the ground; every
   node voltage drops by e₃ = 1 V (7, 8, −1 V), branch voltages unchanged, the same 27 W; now
   v_x is between node 2 and the ground, no supernode; tip: put the ground at one end of a
   voltage source

Then a summary table (situation → what to do).

## Slides

After the review comes a "Motivation" slide (what simplifying cannot do, what node voltage
analysis does), and a roadmap slide opens each of the seven parts: a path of stops with
what is new at each stop and a small circuit icon (done parts greyed with a check mark, the current one highlighted). Questions are
shown first and the answers on the next page; the node being written is highlighted in the
circuit. Each step is an ordinary extra PDF page; that is why the deck has 33 slides but 113
pages.

Every example is also written in matrix form (Example 11.4 shows how the dependent source
changes one entry of Y_n; Example 11.6 checks the new-ground values in matrix form).
