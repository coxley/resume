THEME=elegant
PDFTHEME=onepage

export: html pdf

pages:
	resume export --theme $(THEME) index.html

html:
	resume export --theme $(THEME) resume.html

pdf:
	resume export --theme $(PDFTHEME) resume.pdf

serve:
	resume serve --theme $(THEME)

test:
	resume test $@

clean:
	git clean -f
