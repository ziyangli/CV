FTP_DIR=cv

all: chinesecv englishcv

chinesecv: WeizhouPan_zh.pdf
englishcv: WeizhouPan_en.pdf

%.pdf: %.tex WeizhouPan.sty
	#lualatex -interaction=batchmode $<
	#lualatex -interaction=batchmode $<
	xelatex -interaction=batchmode $<
	xelatex -interaction=batchmode $<

%.html: %.pdf
	pdf2htmlEX --zoom=2 $<

clean:
	rm -f *.aux *.log *.out
	-rm -r auto

