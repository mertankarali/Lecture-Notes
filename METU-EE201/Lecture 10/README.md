# EE201 — Lecture 10: LTI Resistive Circuits and Equivalent One-Ports

Lecture notes and slides for the tenth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_10.tex` | Handout / lecture notes (article, 5 pages). Self-contained: definitions, five worked examples, a summary. |
| `EE201_Lecture_10_slides.tex` | Beamer deck (31 slides, 90 PDF pages) for the lecture itself — visual, low text. |
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
   varies in time is the element law, not just the variables; Example 10.1 classifies five small circuits; KCL and KVL are
   always linear, and in an LTI resistive circuit the element equations are too
2. **A first example** (added) — Example 10.2 simplifies the 12 V, 2 Ω, 6 Ω, 3 Ω circuit by
   hand (6 Ω ∥ 3 Ω → 2 Ω, divider, back to the original); three questions it raises point to
   the substitution theorem, equivalent one-ports, and the series/parallel and source rules
3. **Substitution theorem** (07:32) — N₂ replaced by a voltage source v_s = v or a current
   source i_s = i, nothing changes inside N₁ (configurations I, II, III); why it works, and the
   unique-solution condition; Example 10.3: the first example cut at the 3 Ω load, checked in
   all three configurations
4. **Ports and equivalent one-ports** (15:37, 19:43) — port condition, one-port, i–v
   characteristic; equivalent one-ports give the same branch values in any N₀
5. **Series and parallel connections** (24:03, 27:53) — resistors and voltage sources in
   series, resistors and current sources in parallel, voltage and current dividers; two
   connections to avoid (parallel voltage sources, series current sources)
6. **One source and one resistor** (32:15, 41:05) — v = R₁i + v_s and v = R₂i + R₂i_s,
   equivalent when R₁ = R₂ = R and v_s = R i_s (i–v line, open-circuit voltage, short-circuit
   current); Example 10.4 (20 V, 10 Ω ≡ 2 A, 10 Ω); Example 10.5 solves Example 10.2 again by
   transformations
7. **Solving LTI resistive circuits** (42:50) — transform the circuit (this lecture) or write
   its equations as it is: node voltage and mesh current analysis, later

Then a summary.

## Slides

After the review comes a "Why this lecture?" slide, and a roadmap slide opens each of the
six main parts (done parts greyed with a check mark, the current one highlighted).

The definitions, the substitution theorem, the examples and the source transformation build
up step by step with beamer overlays; questions are shown first and the answers on the next
page. Each step is an ordinary extra PDF page; that is why the deck has 31 slides but 90
pages.
