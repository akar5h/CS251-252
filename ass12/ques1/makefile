TEXFILE= main
$(TEXFILE).pdf: $(TEXFILE).tex
	latexmk -pdf -quiet $(TEXFILE)

.PHONY: clean
clean:
\rm *.aux *.blg *.out *.bbl *.log

