# EE201 — Circuit Theory I, Fall 2026/27 — Syllabus (Section 2)

LaTeX source of the syllabus for **Section 2** (Mert Ankaralı).

| File | What it is |
|---|---|
| `2026_Syllabus.tex` | The full syllabus (article class, compact 2-page layout). Common content first (textbooks, ODTÜCLASS), then the Section 2 repository. |
| `2026_Syllabus_slides.tex` | The same syllabus as a beamer deck (17 slides), to walk through in the first lecture. |

## Compiling

```
pdflatex 2026_Syllabus.tex        # twice, for hyperref
pdflatex 2026_Syllabus_slides.tex # twice
```

Only standard TeX Live packages are used (`geometry`, `booktabs`, `enumitem`,
`titlesec`, `fancyhdr`, `tcolorbox`, `xcolor`, `hyperref`, `beamer`, `tikz`).
No external beamer theme is required.

## Editing

Course-wide strings are defined as macros at the top of **both** files —
keep them in sync:

```latex
\newcommand{\notesrepo}{https://github.com/mertankarali/Courses/EE201}
\newcommand{\notesrepotext}{github.com/mertankarali/Courses/EE201}
```

Changing the repository address, the section number, the office or the e-mail
only requires editing these macros.

## Source

Converted from the common departmental syllabus
`EE201_Syllabus_Fall_2026_27.docx` shared by the EE201 teaching team.
The only substantive addition is the **"Course Materials for Section 2"**
section (and the corresponding slides), which points to the public repository
holding the Section 2 lecture notes.
