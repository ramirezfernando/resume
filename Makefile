resume:
	pdflatex resume.tex
	pdflatex resume.tex 
	open resume.pdf &
	rm -f *.aux *.log *.toc *.blg *.out *.bbl

	convert -density 300 -trim resume.pdf -quality 100 resume.png
	convert resume.png -background white -flatten resume.png