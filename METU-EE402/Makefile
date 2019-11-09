OUTDIR=./AllLectures/

$(OUTDIR):
	mkdir -p -v $(OUTDIR)
	cp Lecture\ 1/EE_402_Lecture_1.pdf $(OUTDIR)/
	cp Lecture\ */EE402_Lecture_*.pdf $(OUTDIR)/
	mv $(OUTDIR)/EE_402_Lecture_1.pdf $(OUTDIR)/EE402_Lecture_01.pdf
	mv $(OUTDIR)/EE402_Lecture_2.pdf $(OUTDIR)/EE402_Lecture_02.pdf
	mv $(OUTDIR)/EE402_Lecture_3.pdf $(OUTDIR)/EE402_Lecture_03.pdf
	mv $(OUTDIR)/EE402_Lecture_4.pdf $(OUTDIR)/EE402_Lecture_04.pdf
	mv $(OUTDIR)/EE402_Lecture_5.pdf $(OUTDIR)/EE402_Lecture_05.pdf
	mv $(OUTDIR)/EE402_Lecture_6.pdf $(OUTDIR)/EE402_Lecture_06.pdf
	mv $(OUTDIR)/EE402_Lecture_7.pdf $(OUTDIR)/EE402_Lecture_07.pdf
	mv $(OUTDIR)/EE402_Lecture_8.pdf $(OUTDIR)/EE402_Lecture_08.pdf
	mv $(OUTDIR)/EE402_Lecture_9.pdf $(OUTDIR)/EE402_Lecture_09.pdf
	qpdf --empty --pages $(OUTDIR)/*pdf -- AllLectures.pdf
	rm -r $(OUTDIR)
	
