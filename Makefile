PACKAGE = biblatex-academic

STYLE = academic

AUXFILES = \
					 aux \
					 bbl \
					 bcf \
					 blg \
					 log \
					 out \
					 run.xml \
					 toc

CLEAN = \
				pdf

.PHONY: clean doc

clean:
	for I in $(AUXFILES) $(CLEAN) ; do \
		rm -rf ./*.$$I ; \
	done

doc:
	pdflatex -draftmode biblatex-$(STYLE)
	biber --quiet biblatex-$(STYLE)
	pdflatex -draftmode biblatex-$(STYLE)
	pdflatex biblatex-$(STYLE)
