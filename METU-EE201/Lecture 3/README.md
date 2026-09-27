# EE201 — Lecture 3: Lumped Elements, Characteristics and the LTI Resistor

Lecture notes and slides for the third lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_3.tex` | Handout / lecture notes (article, 9 pages). Self-contained: definitions, the classification table and five worked examples. |
| `EE201_Lecture_3_slides.tex` | Beamer deck (30 slides, 43 PDF pages) for the lecture itself — visual, low text. |
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

Built on the recorded lectures of Prof. Emre Tuna on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351) — Lecture 3 for sections 1–8,
and the opening of Lecture 4 for sections 9–10.

1. The other half of the equations — terminal equations (L3 2:00)
2. An element is a curve in the v–i plane: the **characteristic**
3. Independent voltage source — vertical line, both symbols, waveforms, short
   circuit (L3 6:50, 14:05)
4. Independent current source — horizontal line, open circuit (L3 16:19)
5. Sources are active — quadrants of the v–i plane (L3 20:55)
6. The resistor, generally defined: any element whose characteristic is a curve (L3 22:57),
   with a gallery of eight (L3 26:20)
7. Five words: linear (L3 33:24), bilateral (L3 35:20), active/passive (L3 38:34),
   voltage- and current-controlled (L3 40:50), time-varying (L3 42:22)
8. The gallery characterized (L3 43:10)
9. The **LTI resistor** (L4 1:00) — resistance and conductance (L4 3:44), short
   circuit (L4 7:00), open circuit (L4 9:23)
10. Power in an LTI resistor (L4 11:05) — heat, at once, never returned
11. Where two characteristics cross — a load-line example

The video lectures are packaged in one-hour blocks; these notes are not. The LTI resistor
belongs with the other memoryless elements, so it closes this lecture rather than opening
the next one.

## Conventions

The v–i plane is drawn with **v horizontal and i vertical** (Chua–Desoer–Kuh), so a
voltage source is a vertical line, a current source horizontal, and passive elements live
in quadrants 1 and 3. All characteristics are drawn in METU maroon; axes carry the
quantity colours (voltage orange, current blue).

Independent voltage sources are drawn with the **circle and ± symbol** from this lecture
onwards; the battery symbol used in Lectures 1–2 is shown alongside it once, so students
recognise both.

Four slides are built up **step by step** using beamer overlays — the characteristic, the
two-load demonstration, the three worked rows and the load-line example. Each step is an
ordinary extra page in the PDF, so it works in any viewer; that is why the deck has 30
slides but 43 pages.

## References

- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits*, Ch. 2 — the closest source to
  the treatment used here
- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Ch. 1–2
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
