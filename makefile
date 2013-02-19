all: index

latex: basicCode.tex index.tex overview.tex programs.tex docEx.pdf
	latexmk -c
	latex index.tex

index: basicCode.tex index.tex overview.tex programs.tex docEx.ps
	latexmk -dvi- -pdf index.tex
	latexmk -c

docEx.ps: docEx.tex
	latexmk -c
	latexmk -ps docEx.tex
	sed '2 i %%BoundingBox: 111 89 500 621' docEx.ps > docEx1.ps
	ps2pdf docEx1.ps docEx.pdf
	latexmk -c
