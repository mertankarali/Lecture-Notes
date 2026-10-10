# EE201 — Lecture 6: Dependent Sources and the Ideal Transformer

Lecture notes and slides for the sixth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_6.tex` | Handout / lecture notes (article, 8 pages). Self-contained: definitions, four worked examples, the power theorem with proof. |
| `EE201_Lecture_6_slides.tex` | Beamer deck (25 slides, 41 PDF pages) for the lecture itself — visual, low text. |
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

Following p. 11 of Prof. Emre Tuna's notes and the second half of his recorded Lecture 5 on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351) (from 41:47).

1. **Sources controlled from elsewhere** (41:47) — circle: decides its own value; diamond:
   copies a variable from another branch, scaled. Linear dependent sources only
2. **The four kinds** (43:04–48:14) — VCVS, CCVS, VCCS, CCCS; voltage gain,
   transresistance, transconductance, current gain, and their units (out over in).
   The sensing side: open circuit for a voltage, short circuit for a current
3. **Why we need them** — the amplifier model (R_in, μ v_in, R_out); transistors and op-amps
4. **Reading a diagram** (49:15) — Prof. Tuna's example: the CCVS's terminal equation names
   a current in another branch. That is the only new thing compared with Lecture 2.
   A note on the two meanings of *controlled* (Lecture 3 resistor vs. dependent source)
5. **Solving circuits with dependent sources** — a three-step recipe; Example 6.2, a
   microphone amplifier (gain 64, power gain 51 200, and where the power comes from);
   Example 6.3, a CCCS whose controlling current is unknown, with the power check.
   What a dependent source cannot do: start anything, or be switched off
6. **The ideal transformer** (51:31) — two coils on one core (the element Lecture 2's
   footnote promised); v₁/N₁ = v₂/N₂ and N₁i₁ + N₂i₂ = 0; the dot convention; where the
   two equations come from; k windings. Resistive in the model, but no DC in reality
7. **Its power** (54:47) — Σ vⱼiⱼ = 0 at every instant, proved (Prof. Tuna's exercise);
   dissipate / store / pass through; Example 6.4, a 10:1 transformer; resistance seen
   through a transformer scales by (N₁/N₂)²
8. **A transformer is two dependent sources** — a CCCS and a VCVS whose powers cancel

## Conventions

Same colour code as before (current blue, voltage orange, power green) plus teal for the
core flux Φ. Independent voltage sources use the circle-and-± symbol; dependent sources
the diamond. Every two-port figure puts the sensing side on the left and the source on
the right.

Seven slides build up **step by step** with beamer overlays — reading the diamond, the
amplifier example and its power table, the CCCS example, the power proof, the transformer
example and the two-source equivalent. Each step is an ordinary extra PDF page; that is
why the deck has 25 slides but 41 pages.

## References

- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Sections 1.6 and 13.5
- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits* — controlled sources and the ideal
  transformer
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
