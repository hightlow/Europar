all:
	pdflatex BTSVD.tex
	pdflatex BTSVD.tex
	bibtex BTSVD.aux
	bibtex BTSVD.aux
	pdflatex BTSVD.tex
	pdflatex BTSVD.tex


normal: $(OBJ).tex $(SRC)
#	bibtex $(OBJ)
	latex $(OBJ)
	latex $(OBJ)
	dvips -f -tletter -Ppdf -G0 $(OBJ) > $(OBJ).ps
	ps2pdf $(OBJ).ps $(OBJ).pdf
	
clean:
	rm -f *.ps *.dvi *.aux *.log *.pdf *.bbl *.blg *~ *.gz *.out
