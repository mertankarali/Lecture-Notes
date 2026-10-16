# EE201 — Lecture 11: Node Voltage Analysis

Lecture notes and slides for the eleventh lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_11.tex` | Handout / lecture notes (article, 5 pages). Self-contained: procedure, five worked examples, a summary. |
| `EE201_Lecture_11_slides.tex` | Beamer deck (32 slides, 104 PDF pages) for the lecture itself — visual, low text. |
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

1. **The idea** (L11 00:00) — node voltages as the unknowns: KVL v = Aᵀe holds automatically,
   the element laws give the currents, only KCL is left (n − 1 equations); the procedure
   (reference node, label node voltages, KCL); the current leaving node k through R is
   (e_k − e_j)/R
2. **Resistors and current sources** — Example 11.1 (14 branch unknowns vs 3 node voltages),
   KCL at each node, Y_n e = i_s; Y_n by inspection (diagonal, off-diagonal, right side);
   why Y_n is symmetric: Y_n = A_R G A_Rᵀ, i_s = −A_S i_S
3. **A voltage source to the ground** (Example II) — Example 11.2: KCL at node 3 gives nothing
   useful, but e₃ = v_s; remark (a known node voltage is not an unknown); Example 11.2
   revisited, 2 × 2, v_s/R₄ on the right side (a source transformation)
4. **A voltage source between two nodes** (Modified NVA, Method I) — Example 11.3: its current
   i as an extra unknown plus the constraint e₁ − e₂ = v_s2; 4 × 4 system
5. **Supernode** (L12 04:00, Method II) — adding KCL at nodes 1 and 2 cancels i; KCL at the
   supernode plus the constraint; 3 × 3, not symmetric; Method I vs Method II table
6. **Dependent sources** (L12 11:20) — Example 11.4: dependent source v_x = e₁ between nodes
   3 and 2, supernode S, e₁ = 8 V, e₂ = 9 V, e₃ = 1 V, P₃Ω = 27 W; remark (dependent voltage
   source to ground: no KCL there, write its constraint)
7. **Choosing a different ground** (L12 25:22, exercise) — Example 11.5: node 3 as the ground,
   e₁′ = 7 V, e₂′ = 8 V, e₀′ = −1 V, the same 27 W; every node voltage shifts by the same
   amount; tip: put the ground at one end of a voltage source

Then a summary table (situation → what to do).

## Slides

After the review comes a "Why this lecture?" slide, and a roadmap slide opens each of the
six parts (done parts greyed with a check mark, the current one highlighted). Questions are
shown first and the answers on the next page; the node being written is highlighted in the
circuit. Each step is an ordinary extra PDF page; that is why the deck has 32 slides but 104
pages.
