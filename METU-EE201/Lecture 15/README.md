# EE201 — Lecture 15: Nonlinear Resistive Circuits

Lecture notes and slides for the fifteenth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_15.tex` | Handout / lecture notes (article, 14 pages). Self-contained: one nonlinear resistor and the load line, a nonlinear resistor in a larger linear circuit, the ideal diode and its series/parallel connections, piecewise-linear circuits (analysis and synthesis), linear time-varying circuits, a summary. Eight worked examples, each with the problem in a box and a step-by-step solution below it. |
| `EE201_Lecture_15_slides.tex` | Beamer deck (53 slides, 80 PDF pages) for the lecture itself — visual, low text. |
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

Following pp. 54–56 and 61–67 of Prof. Emre Tuna's notes and three of his recorded lectures
(L23, L25, L26): nonlinear resistive elements, the operating point and the load line, the
Thévenin + substitution method; the ideal diode, series and parallel connections of diodes,
resistors and sources; the characteristic of a piecewise-linear circuit and a circuit from a
given characteristic; linear time-varying resistive circuits.

Omitted on purpose: **small-signal analysis** (Tuna's L24, pp. 57–60) and everything built on it,
the **common-mode rejection ratio**, and general (arbitrary) nonlinear or time-varying circuits.
Only piecewise-linear circuits and one simple linear time-varying example are covered.
The lecture is self-contained: the load line and the ideal diode are developed here from
scratch. Only the element curve (a resistor as a curve in the v–i plane), Thévenin equivalents
and the substitution theorem (Lecture 10) are assumed; the review slide recalls the first,
and the substitution theorem is stated where it is used.

1. **One nonlinear resistor** — E, R and a voltage-controlled resistor i = g(v): the algebraic
   solution and the load line R i + v = E. Example 15.1: 6 V, 1 Ω, i = v² (v ≥ 0) gives
   (2 V, 4 A). None, one or many operating points
2. **A larger circuit** — Thévenin equivalent of the linear part, operating point, then the
   substitution theorem. Example 15.2: 12 V source, R_th = 4 Ω, v_th = 10 V, i_R = v_R²/2 gives
   v_R = 2 V, i_R = 2 A; replacing the element by a 2 V source gives v = 5 V
3. **The ideal diode** — ON / OFF; turning an element around; series (add horizontally) and
   parallel (add vertically). First only the simple series and parallel connections (Cases I
   and II), then the assumed-state method on a simple example. Example 15.3: a diode, 2 Ω and
   4 V in series: i = (v−4)/2 for v ≥ 4 V, 0 for v < 4 V, also graphically. Then the other
   connections one by one (Cases III–VII; III and IV with R₁ = R₂ = R) and the ideal Zener diode. Voltage- or
   current-controlled (a short reminder): i = g(v) passes the vertical line test, v = r(i) the horizontal one; a
   resistor is both, a current source voltage-controlled, a voltage source current-controlled,
   the ideal diode neither; Case I is voltage-controlled, Case II current-controlled. Why it
   matters: node vs. mesh analysis, series/parallel addition, the assumed-state method, the
   number of operating points
4. **Piecewise-linear circuits** — 2ⁿ state combinations for n diodes. Example 15.4 (two
   diodes): 1 Ω in series with [D₁ + 2 V] ∥ 1 Ω ∥ [reversed D₂ + 1 V]: i = v − 2 for v ≥ 4 V,
   v/2 for −2 ≤ v ≤ 4 V, v + 1 for v ≤ −2 V; both ON is impossible; also graphically.
   A circuit from a characteristic (not unique): Example 15.5 (one breakpoint: 2 Ω in
   parallel with a 2 Ω–diode–2 V branch), Example 15.6 (two breakpoints, in series: diode ∥ 1 Ω,
   then reversed diode ∥ 2 Ω ∥ 1 A) and Example 15.7 (slope 1 S between ±2 V and 2 S outside:
   a 1 Ω resistor and two 1 Ω–diode–2 V branches)
5. **Linear time-varying circuits** — v = R(t) i. Example 15.8: v = k₁(t) v_s + k₂(t) i_s;
   superposition still holds

Then a summary table (situation → what to do).

## Slides

Right after the review comes the roadmap: a road with five stations (load line, substitution,
ideal diode, piecewise-linear circuits, time-varying). A roadmap slide opens each part.
Circuits and questions come first and the answers on later pages; no "Question" labels.
Each step is an ordinary extra PDF page; that is why the deck has 53 slides but 80 pages.
