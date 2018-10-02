# makefile to compile LaTex files
MAINDOC = CV

TEXFILES = $(wildcard *.tex)
TARGET = $(MAINDOC)

all: $(TARGET).pdf
	@cp $(TARGET).pdf CV-Liguang-Zhu.pdf
clean:
	@rm -f *.aux *.bbl *.blg *.log *.dvi *.pdf *.tex~ \
	*.idx *.ilg *.ind *.toc *.lot *.lof *.html *.ps *.gz *.fls *.fdb_latexmk 

%.pdf: %.tex
	pdflatex $*

#$(TARGET).dvi: $(TARGET).tex
#	latex $(TARGET).tex


