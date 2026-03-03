# Merge_Lecture_Notes
​	This folder consists of a bash script "merge_notes" and a folder called _outputs\_ to store the outputs of the script. 

​	This script searches for PDF files in all Lecture folders, merges them   in order and outlines them so that one can easily locate any lecture in the PDF easily. 

##### How to use: 

One can easily run the script by first giving permission; 

`chmod +x merge_notes.sh`

and the run the script by using terminal

`./merge_notes.sh`


compile_notes option flag inside merge_notes.sh allows you to compile the pdf files again. Set it to 1 if you want to compile. 
Defaults to 0.

##### Dependencies:

I use pdfunite and pdfinfo commands which use "poppler-utils" package. 
If you also want to compile the pdf files you should have "tex-live" packages. 

To install it;

`sudo apt-get update`

`sudo apt-get install poppler-utils`

`sudo apt-get install texlive-full`
You may not need the full texlive suit currently it needs a disk space around 7GB however I didn't test the other variations.

##### Outputs

1. MertAnkaraliEE302_Complete.pdf: This is one of the final outputs. This is the merged and outlined PDF file. Note that name of this file can be configured inside the script. 

##### Parameters

There are two parameters to configure. One can configure them by just edit the script.

1. number_of_lectures : This should be set properly.
2. output_name

##### Notes

The script searches the PDF files in name format "[EE]...[.pdf]"  in Lecture folders. Therefore to use the script please don't add any other pdf file starts with "EE" inside Lecture folders and don't change the names of the Lecture PDF files.

In the previous versions there was a way for generating the outline which can be used to navigate the document however currently poppler package does not provide it as far as I can see to solve the problem there is an experimental (vibecoded) generate_merged.py file. 
`python ./generate_merged.py` 
then run 
`pdflatex ./Merged_lecture_notes.tex` 
