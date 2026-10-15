# EE201 — Lecture 10: LTI Resistive Circuits and Equivalent One-Ports

Lecture notes and slides for the tenth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_10.tex` | Handout / lecture notes (article, 6 pages). Self-contained: definitions, six worked examples, a summary. |
| `EE201_Lecture_10_slides.tex` | Beamer deck (35 slides, 109 PDF pages) for the lecture itself — visual, low text. |
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

Following pp. 21–23 of Prof. Emre Tuna's notes and his recorded Lecture 10 on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351).

1. **LTI resistive circuits** (00:00–07:32) — resistive (memoryless, algebraic law: resistors,
   dependent sources, ideal transformers, later ideal op-amps) and dynamic (L, C) elements;
   nonlinear / linear, time-varying / time-invariant, dynamic / resistive circuits, each
   defined by the elements the circuit contains; independent
   sources are external inputs (signals of time) and are not part of the classification; what
   varies in time is the element law, not just the variables; Example 10.1 classifies five small circuits (on the slides in two rows: the same circuit with two inputs, then the 2 Ω replaced); KCL and KVL are
   always linear, and in an LTI resistive circuit the element equations are too
2. **A first example** (added) — Example 10.2: 12 V, 2 Ω, 6 Ω with an arbitrary resistive load
   R_L; R_L is left aside and one KCL at a gives the law of the part left of a–b,
   v = 9 − 1.5 i; a 9 V source with 1.5 Ω obeys the same law, so R_L cannot tell them apart and
   i = 9/(1.5 + R_L) for any load; three questions it raises point to the substitution theorem,
   equivalent one-ports, and the series/parallel and source rules
3. **Substitution theorem** (07:32) — N₂ replaced by a voltage source v_s = v or a current
   source i_s = i, nothing changes inside N₁ (configurations I, II, III). Then one case at a
   time, example first: (I) and (II) — Example 10.3, the first example with R_L = 3 Ω replaced
   by a 6 V source, KCL at a gives i = 2 A again; why it works (problem P: N₁ with a known
   voltage v*, solved by both (I) and (II), unique, so i = i*). (I) and (III) — Example 10.4, a
   2 A source gives v = 6 V again; why it works (problem Q: N₁ with a known current i*). The
   unique-solution condition (two 2 A sources in series)
4. **Ports and equivalent one-ports** (15:37, 19:43) — port condition, one-port, i–v
   characteristic; equivalent one-ports give the same branch values in any N₀
5. **Series and parallel connections** (24:03, 27:53) — resistors and voltage sources in
   series, resistors and current sources in parallel, voltage and current dividers; two
   connections to avoid (parallel voltage sources, series current sources)
6. **One source and one resistor** (32:15, 41:05) — v = R₁i + v_s and v = R₂i + R₂i_s,
   equivalent when R₁ = R₂ = R and v_s = R i_s (i–v line, open-circuit voltage, short-circuit
   current); Example 10.5 (20 V, 10 Ω ≡ 2 A, 10 Ω); Example 10.6 reaches the same 9 V with
   1.5 Ω by source transformations, without R_L in the algebra
7. **Solving LTI resistive circuits** (42:50) — transform the circuit (this lecture) or write
   its equations as it is: node voltage and mesh current analysis, later

Then a summary.

## Slides

After the review comes a "Why this lecture?" slide, and a roadmap slide opens each of the
six main parts (done parts greyed with a check mark, the current one highlighted).

The definitions, the substitution theorem, the examples and the source transformation build
up step by step with beamer overlays; questions are shown first and the answers on the next
page. Each step is an ordinary extra PDF page; that is why the deck has 35 slides but 109
pages.
