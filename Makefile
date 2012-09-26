all: clean build

OUTPUT_DIR=build
THESIS=thesis
TEX=$(THESIS).tex
AUX=$(OUTPUT_DIR)/$(THESIS).aux
TARGET=$(THESIS).pdf

LATEX_ARGS=--interaction batchmode --output-directory $(OUTPUT_DIR)

$(THESIS): $(TEX)
	pdflatex $(LATEX_ARGS) $(TEX)
	bibtex $(AUX)
	pdflatex $(LATEX_ARGS) $(TEX)
	pdflatex $(LATEX_ARGS) $(TEX)

clean:
	rm -fr $(OUTPUT_DIR)

hakemisto:
	mkdir $(OUTPUT_DIR)

build: hakemisto $(THESIS)
