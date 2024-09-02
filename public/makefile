clean:
	rm -r build

build/main.pdf: main.tex zine.cls
	mkdir -p build
	pdflatex -output-directory=build main.tex

build/book-binder.pdf: build/main.pdf book-binder.tex
	pdflatex -output-directory=build book-binder.tex

all: build/book-binder.pdf
	cp build/book-binder.pdf print.pdf
	cp build/main.pdf screen.pdf

.PHONEY: clean
