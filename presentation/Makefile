.PHONY: all clean

all: presentation.pdf

presentation.pdf: presentation.tex citations.bib
	latexmk -dvi- -pdf -pdflatex='lualatex %O -shell-escape %S' presentation.tex

clean:
	latexmk -C
