# EE201 — Lecture 5: The Inductor

Lecture notes and slides for the fifth lecture of EE201 (Section 2, Fall 2026/27).

| File | What it is |
|---|---|
| `EE201_Lecture_5.tex` | Handout / lecture notes (article, 7 pages). Self-contained: definitions, the R/C/L comparison table and three worked examples. |
| `EE201_Lecture_5_slides.tex` | Beamer deck (23 slides, 32 PDF pages) for the lecture itself — visual, low text. |
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

Following the recorded Lecture 5 of Prof. Emre Tuna on
[METU OCW](https://ocw.metu.edu.tr/course/view.php?id=351). The dependent-source material
in that video is held back for a lecture of its own.

1. The other way to store energy — the capacitor's field was electric, this one's is
   magnetic, and the two terminal equations are the same with *v* and *i* swapped
2. **A coil, and what it does** — a current makes a magnetic field through it; the
   interesting part is what happens when you change that current. *Coil* is used once for
   the physical object; everything after that says *inductor*
3. **The back EMF** (0:16) — the coil’s voltage always opposes the change that produced it
4. **Inductance** (5:38) — the constant in v = L di/dt; the henry read as "one volt of
   back EMF per amp-per-second"; what makes L large (turns, shape, core) and one concrete
   number, ≈ 2.5 mH for a 1000-turn air coil
5. **Volt-seconds**: integrate the voltage and you get φ = ∫v dτ in webers, exactly as
   integrating the current gave charge in amp-seconds. Then *why* it is called flux
   linkage — how much of the coil's own field the winding catches
6. The **inductor** — a curve in the *i*–φ plane; saturation in a real core; no *v*–*i*
   characteristic and no f with v(t) = f(i(t))
7. The **LTI inductor** (4:51) — φ = Li, whose slope is the L already met; the integral
   form; four things that follow
8. Example: constant voltage in → a current ramp
9. Example: trying to stop the current — the coil does whatever it takes to keep it going,
   and the air breaks down
10. **Where the energy goes** — raising the current means working against the back EMF;
    ∫Li di = ½Li². Run it backwards and it all comes back. It was kept in the magnetic
    field, as the capacitor's was in the electric field. Then the spring analogy
11. **The three LTI elements, side by side** (12:35) — and the duality that turns the last
    two columns into each other
12. Worked example (22:25) — Lecture 2's circuit with a C and an L added: in the DC steady
    state C is open and L is short, so it collapses to a resistive circuit
13. The power check (33:01) — the resistors dissipate all 36 W, and neither store absorbs
    any power

## Conventions

Carried over unchanged: v horizontal and i vertical in the *v*–*i* plane, and the same
layout for the new ***i*–φ plane** (current through, flux linkage stored). Flux linkage
gets its own colour (teal) beside charge (purple), current (blue), voltage (orange) and
power (green). Independent voltage sources use the circle-and-± symbol from Lecture 3.

Five slides build up **step by step** with beamer overlays — the constant-voltage example,
the switch-opening sequence, the energy derivation, the steady-state circuit and the power
check. Each step is an
ordinary extra PDF page; that is why the deck has 23 slides but 32 pages.

## References

- Alexander & Sadiku, *Fundamentals of Electric Circuits*, Chapter 6
- Chua, Desoer & Kuh, *Linear and Nonlinear Circuits*, Chapter 2
- Lecture notes and videos of Prof. Emre Tuna —
  [users.metu.edu.tr/etuna/ee201](https://users.metu.edu.tr/etuna/ee201/)
