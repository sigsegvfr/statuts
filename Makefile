NAME = statuts
SRC = $(NAME).tex

build: $(NAME).md $(NAME).pdf

%.md: %.tex
	pandoc -f latex -t markdown_strict $? -o $@

%.pdf: %.tex
	pdflatex $?

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.out

dist-clean: clean
	rm -f $(NAME).pdf
	rm -f $(NAME).md
