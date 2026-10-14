# EE201 — Lecture 10: LTI Resistive Circuits and Equivalent One-Ports

Lecture notes and slides for the tenth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_10.tex` | Handout / lecture notes (article, 5 pages). Self-contained: definitions, four worked examples, a summary. |
| `EE201_Lecture_10_slides.tex` | Beamer deck (26 slides, 73 PDF pages) for the lecture itself — visual, low text. |
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

1. **LTI resistive circuits** (00:00–07:32) — nonlinear / linear, time-varying /
   time-invariant, dynamic / resistive, each defined by what the circuit contains; independent
   sources do not count; Example 10.1 classifies five small circuits; all equations of an LTI
   resistive circuit are linear and algebraic
2. **Substitution theorem** (07:32) — N₂ replaced by a voltage source v_s = v or a current
   source i_s = i, nothing changes inside N₁ (configurations I, II, III); why it works, and the
   unique-solution condition; Example 10.2 (12 V, 2 Ω, 6 Ω with a 3 Ω load) checked in all
   three configurations
3. **Ports and equivalent one-ports** (15:37, 19:43) — port condition, one-port, i–v
   characteristic; equivalent one-ports give the same branch values in any N₀
4. **Series and parallel connections** (24:03, 27:53) — resistors and voltage sources in
   series, resistors and current sources in parallel, voltage and current dividers; two
   connections to avoid (parallel voltage sources, series current sources)
5. **One source and one resistor** (32:15, 41:05) — v = R₁i + v_s and v = R₂i + R₂i_s,
   equivalent when R₁ = R₂ = R and v_s = R i_s (i–v line, open-circuit voltage, short-circuit
   current); Example 10.3 (20 V, 10 Ω ≡ 2 A, 10 Ω); Example 10.4 solves Example 10.2 again by
   transformations
6. **Solving LTI resistive circuits** (42:50) — node voltage and mesh current analysis, next

Then a summary.

## Slides

After the review comes a "Why this lecture?" slide, and a roadmap slide opens each of the
five main parts (done parts greyed with a check mark, the current one highlighted).

The definitions, the substitution theorem, the examples and the source transformation build
up step by step with beamer overlays; questions are shown first and the answers on the next
page. Each step is an ordinary extra PDF page; that is why the deck has 26 slides but 73
pages.
