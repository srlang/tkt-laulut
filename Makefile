all: laulukirja.pdf

.PHONY: clean
	git clean -f

laulukirja.pdf: laulukirja.tex laulut.tex
	pdflatex laulukirja.tex && \
	pdflatex laulukirja.tex && \
	pdflatex laulukirja.tex

laulut.tex: lyrics.csv ordering.csv
	python3 to_latex.py ordering.csv lyrics.csv > laulut.tex
