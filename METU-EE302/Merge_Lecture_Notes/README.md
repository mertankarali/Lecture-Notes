# Merge_Lecture_Notes
​	This folder consists of a bash script "merge_notes" and a folder called _outputs\_ to store the outputs of the script. 

​	This script searches for PDF files in all Lecture folders, merges them   in order and outlines them so that one can easily locate any lecture in the PDF easily. 

##### How to use: 

One can easily run the script by first giving permission; 

`chmod +x merge_notes.sh`

and the run the script by using terminal

`./merge_notes.sh`

##### Dependencies:

I use pdfunite and pdfinfo commands which use "poppler-utils" package. 

To install it;

`sudo apt-get update`

`sudo apt-get install poppler-utils`

##### Outputs

Script has two two final output and one intermediate output stored in _outputs\_

1. MertAnkaraliEE302_Complete.pdf: This is one of the final outputs. This is the merged and outlined PDF file. Note that name of this file can be configured inside the script. 
2. outliner.txt: This is the second final outputs. During merge process this file stores page numbers of the Lectures so that it can be used  for outlining process.
3. temp.pdf: This is temporary PDF file to merge files.

##### Parameters

There are two parameters to configure. One can configure them by just edit the script.

1. number_of_lectures : This should be set properly.
2. output_name

##### Notes

The script searches the PDF files in name format "[EE]...[.pdf]"  in Lecture folders. Therefore to use the script please don't add any other pdf file starts with "EE" inside Lecture folders and don't change the names of the Lecture PDF files.

