#!/usr/bin/env bash
#--------------------------------------------------------------
#  EE201 -- Lecture 1: Basic Concepts -- build script
#
#  Usage:   ./build.sh              compile both, clean, open PDFs
#           ./build.sh --no-open    compile and clean, do not open
#           ./build.sh slides       only EE201_Lecture_1_slides.tex
#           ./build.sh notes        only EE201_Lecture_1.tex
#           ./build.sh --clean      only remove auxiliary files
#--------------------------------------------------------------
set -euo pipefail
cd "$(dirname "$0")"

NOTES="EE201_Lecture_1"
SLIDES="EE201_Lecture_1_slides"

AUX_EXT=(aux log out toc nav snm vrb fls fdb_latexmk synctex.gz bbl blg lof lot)

clean_aux() {
    for ext in "${AUX_EXT[@]}"; do
        rm -f ./*."$ext"
    done
}

open_pdf() {
    if command -v open >/dev/null 2>&1; then          # macOS
        open "$1"
    elif command -v xdg-open >/dev/null 2>&1; then    # Linux
        xdg-open "$1" >/dev/null 2>&1 &
    else
        echo "   (no PDF viewer command found -- open $1 yourself)"
    fi
}

DO_OPEN=1
TARGETS=("$NOTES" "$SLIDES")

for arg in "$@"; do
    case "$arg" in
        --no-open)        DO_OPEN=0 ;;
        --clean)          clean_aux; echo "Auxiliary files removed."; exit 0 ;;
        slides)           TARGETS=("$SLIDES") ;;
        notes|handout)    TARGETS=("$NOTES") ;;
        -h|--help)        sed -n '2,12p' "$0"; exit 0 ;;
        *)                echo "Unknown option: $arg  (try --help)"; exit 1 ;;
    esac
done

command -v pdflatex >/dev/null 2>&1 || { echo "pdflatex not found in PATH."; exit 1; }

for f in "${TARGETS[@]}"; do
    echo "==> $f.tex"
    if command -v latexmk >/dev/null 2>&1; then
        if ! latexmk -pdf -interaction=nonstopmode -halt-on-error "$f.tex" >/dev/null 2>&1; then
            echo "    FAILED -- last errors from $f.log:"
            grep -A2 '^!' "$f.log" | head -30 || true
            exit 1
        fi
    else
        for pass in 1 2; do
            if ! pdflatex -interaction=nonstopmode -halt-on-error "$f.tex" >/dev/null 2>&1; then
                echo "    FAILED on pass $pass -- last errors from $f.log:"
                grep -A2 '^!' "$f.log" | head -30 || true
                exit 1
            fi
        done
    fi
    echo "    OK -> $f.pdf"
done

clean_aux
echo "Auxiliary files removed."

if [ "$DO_OPEN" -eq 1 ]; then
    for f in "${TARGETS[@]}"; do
        [ -f "$f.pdf" ] && open_pdf "$f.pdf"
    done
fi
