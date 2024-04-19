all: pdf png

pdf:
	pdflatex Fernando_Ramirez_Resume.tex
	open Fernando_Ramirez_Resume.pdf &
	rm -f *.aux *.log *.toc *.blg *.out *.bbl

png:
	convert -density 300 -trim Fernando_Ramirez_Resume.pdf -quality 100 Fernando_Ramirez_Resume.png
	convert Fernando_Ramirez_Resume.png -background white -flatten Fernando_Ramirez_Resume.png
	rm -f Fernando_Ramirez_Resume-*.png