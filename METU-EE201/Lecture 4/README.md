# EE201 — Lecture 4: The Capacitor

Lecture notes and slides for the fourth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_4.tex` | Handout / lecture notes (article, 6 pages). Self-contained: definitions, the resistor/capacitor comparison and four worked examples. |
| `EE201_Lecture_4_slides.tex` | Beamer deck (21 slides, 32 PDF pages) for the lecture itself — visual, low text. |
| `build.sh` | Compiles both, removes auxiliary files, opens the PDFs. |

## Compiling

```
./build.sh              # both, clean up, open the PDFs
./build.sh --no-open    # compile and clean only
./build.sh slides       # only the deck
./build.sh notes        # only the handout
./build.sh --clean      # only remove *.aux, *.log, *.out, ...
```

Uses `latexmk` when available, otherwise two `pdflatex` passes. All figures are drawn
with `tikz` / `circuitikz` — no external image files.

## Contents

Following the recorded Lecture 4 of Prof. Emre Tuna on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351), from 13:40 onwards — the LTI
resistor that opens that video (1:00–13:00) is covered at the end of Lecture 3 here, where
it sits with the other memoryless elements.

1. An element that **stores energy** — the resistor dissipates, this one does not, and
   why energy rather than charge is the idea that crosses domains (capacitor ½Cv²,
   moving mass ½mu², flywheel ½Jω²)
2. The **capacitor** (13:40) — a curve in the *v–q* plane, kept brief
3. The parallel-plate capacitor (17:24) — C = εA/d
4. The **LTI capacitor** (21:30) — i = C dv/dt and the integral form; open circuit at DC,
   voltage cannot jump, it remembers
5. Example: constant current in → a voltage ramp (27:40)
6. A first look at the **impulse** — a rectangle of height h and width 1/h, area 1 for
   every h; δ(t) defined by its area, not by any value
7. Example: constant voltage → i = 0, and why a step demands i = CVδ(t) (36:19);
   the same step with a series resistor, to be solved in detail later
8. Example: reading a current waveform
9. Power and stored energy (39:31) — w = ½Cv², the resistor/capacitor comparison,
   passive but **lossless**

## Conventions

Carried over unchanged: v horizontal and i vertical in the v–i plane; the same layout for
the new **v–q plane** (voltage across, charge stored). Independent voltage sources use the
circle-and-± symbol introduced in Lecture 3. Characteristics and waveforms are drawn in
METU maroon; axes carry the quantity colours.

Five slides build up **step by step** with beamer overlays — the parallel-plate figure,
the constant-current example, the growing rectangle, the impulse sequence and the
waveform-reading example. Each
step is an ordinary extra PDF page; that is why the deck has 21 slides but 32 pages.

The mechanical analogy is stated on voltage and current alone: i ↔ F, v ↔ u, C ↔ m, so
i = C dv/dt sits beside F = m du/dt and ½Cv² beside ½mu².

## References

- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits*, Ch. 2–3
- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Ch. 6
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
