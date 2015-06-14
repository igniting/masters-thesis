.PHONY: all presentation clean

all: thesis.pdf presentation

thesis.pdf: *.tex citations.bib iitkthesis.cls
	latexmk -dvi- -pdf -pdflatex='lualatex %O -shell-escape %S' thesis.tex

presentation:
	make -C presentation

clean:
	latexmk -C
