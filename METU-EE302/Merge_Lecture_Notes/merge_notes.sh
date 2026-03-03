#!/bin/bash

#Varibles to set
number_of_lectures=21
output_name=MertAnkaraliEE302_Complete

#This is set for copilation of notes from scratch. 
#You can set it to 0 if you have already compiled the notes and just want to merge them.
compile_notes=0

# Check if pdflatex is installed and compile_notes is set to
if [ $compile_notes -eq 1 ]; then
    if ! command -v pdflatex &> /dev/null
    then
        echo "pdflatex could not be found. Please install it to compile the notes."
        exit
    fi

    for ((c=1; c<=$number_of_lectures; c++))
    do
        echo "Compiling Lecture $c"
        pdflatex -output-directory=../Lecture\ $c ../Lecture\ $c/EE302_Lecture_$c.tex > /dev/null
    done
fi



cd $PWD
rm -r $PWD/_outputs_/*
mkdir -p $PWD/_outputs_

let "page_number=$(pdfinfo ../Lecture\ 1/EE302_Lecture_1.pdf  | grep Pages | awk '{print $2}')+1"
echo "1 $page_number Lecture 2">>/$PWD/_outputs_/outliner.txt
pdfunite ../Lecture\ 1/EE302_Lecture_1.pdf  ../Lecture\ 2/EE302_Lecture_2.pdf _outputs_/merged.pdf
# Keep these in for magical experience
echo "Merging Lecture 1"
echo "Merging Lecture 2"


# We add the first lecture file as merged so that loop works 
cp ../Lecture\ 1/EE302_Lecture_1.pdf $PWD/_outputs_/merged.pdf
for ((c=2; c<=$number_of_lectures; c++))
do
pdfunite _outputs_/merged.pdf ../Lecture\ $c/[EE]*[.pdf] _outputs_/temp.pdf
echo "Merging Lecture $c"
rm $PWD/_outputs_/merged.pdf
mv $PWD/_outputs_/temp.pdf $PWD/_outputs_/merged.pdf

done
mv $PWD/_outputs_/merged.pdf $PWD/_outputs_/$output_name.pdf
echo The merged file is located at $PWD/_outputs_/$output_name.pdf

echo "Complete"
