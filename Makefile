all: clean build

TEX=thesis.tex
TARGET=thesis.pdf

ESSEE_TEX=essee.tex
ESSEE_TARGET=essee.pdf

LATEX_ARGS=--interaction batchmode --output-directory build

$(TARGET): $(TEX)
	pdflatex $(LATEX_ARGS) $(TEX)
	pdflatex $(LATEX_ARGS) $(TEX)

$(ESSEE_TARGET): $(ESSEE_TEX)
	pdflatex $(LATEX_ARGS) $(ESSEE_TEX)
	pdflatex $(LATEX_ARGS) $(ESSEE_TEX)

clean:
	rm -fr build

hakemisto:
	mkdir build

build: hakemisto $(TARGET) $(ESSEE_TARGET)
