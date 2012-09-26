THESIS=thesis
OUTPUT_DIR=build
TEX=$(THESIS).tex
AUX=$(OUTPUT_DIR)/$(THESIS).aux
TARGET=$(OUTPUT_DIR)/$(THESIS).pdf

LATEX_ARGS=--interaction batchmode --output-directory $(OUTPUT_DIR)

all: $(TARGET)

clean:
	rm -fr $(OUTPUT_DIR)

$(OUTPUT_DIR):
	mkdir $(OUTPUT_DIR)

$(TARGET): $(OUTPUT_DIR) $(TEX)
	pdflatex $(LATEX_ARGS) $(TEX)
	bibtex $(AUX)
	pdflatex $(LATEX_ARGS) $(TEX)
	pdflatex $(LATEX_ARGS) $(TEX)
