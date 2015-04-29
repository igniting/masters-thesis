.PHONY: all clean

all: thesis.pdf

thesis.pdf: *.tex citations.bib iitkthesis.cls
	latexmk -dvi- -pdf -pdflatex='lualatex %O -shell-escape %S' thesis.tex

clean:
	latexmk -C
