SOURCES = final-review.pdf \
final-summary.pdf \
lab00.pdf \
lab01.pdf \
lab02.pdf \
lab03.pdf \
lab04.pdf \
lab05.pdf \
lab06.pdf \
lab07.pdf \
lab08.pdf \
lab09.pdf \
lab10.pdf \
lab11.pdf \
lab12.pdf \
midterm-review.pdf \
midterm-samples.pdf \
midterm-summary.pdf


all: pdfs

pdfs: $(SOURCES)

%.pdf: %.tex
	latexmk -pdf $<

auxclean:
	-rm *.aux *.fls *.log *.fdb_latexmk *.out

pdfclean:
	-rm $(SOURCES)
