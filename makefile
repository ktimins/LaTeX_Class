all: index

index: basicCode.tex index.tex overview.tex programs.tex docEx.pdf
	latexmk -dvi- -pdf index.tex
	latexmk -c

docEx.pdf: docEx.tex
	latexmk -pdf docEx.tex
	latexmk -c
