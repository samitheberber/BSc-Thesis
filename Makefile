all: clean build

TEX=thesis.tex
TARGET=thesis.pdf

LATEX_ARGS=--interaction batchmode --output-directory build

$(TARGET): $(TEX)
	mkdir build
	pdflatex $(LATEX_ARGS) $(TEX)
	pdflatex $(LATEX_ARGS) $(TEX)

clean:
	rm -fr build

build: $(TARGET)
