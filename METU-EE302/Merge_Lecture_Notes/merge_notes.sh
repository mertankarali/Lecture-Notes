#!/bin/bash

#Varibles to set
number_of_lectures=21
output_name=MertAnkaraliEE302_Complete

cd $PWD
rm -r $PWD/_outputs_/*
mkdir -p $PWD/_outputs_
touch /$PWD/_outputs_/outliner.txt

echo "1 1 Lecture 1">/$PWD/_outputs_/outliner.txt
let "page_number=$(pdfinfo ../Lecture\ 1/EE302_Lecture_1.pdf  | grep Pages | awk '{print $2}')+1"
echo "1 $page_number Lecture 2">>/$PWD/_outputs_/outliner.txt
pdfunite ../Lecture\ 1/EE302_Lecture_1.pdf  ../Lecture\ 2/EE302_Lecture_2.pdf _outputs_/merged.pdf
echo "Merging Lecture 1"
echo "Merging Lecture 2"


for ((c=3; c<=$number_of_lectures; c++))
do

let "page_number=$(pdfinfo _outputs_/merged.pdf | grep Pages | awk '{print $2}')+1"
echo "1 $page_number Lecture $c">>/$PWD/_outputs_/outliner.txt
pdfunite _outputs_/merged.pdf ../Lecture\ $c/[EE]*[.pdf] _outputs_/temp.pdf
echo "Merging Lecture $c"
rm $PWD/_outputs_/merged.pdf
mv $PWD/_outputs_/temp.pdf $PWD/_outputs_/merged.pdf

done

pdfoutline _outputs_/merged.pdf _outputs_/outliner.txt _outputs_/$output_name
echo "Outlining"
rm $PWD/_outputs_/merged.pdf
echo "Complete"
