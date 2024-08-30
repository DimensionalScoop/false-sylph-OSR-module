clean:
	rm -r build

build/Main.pdf: Main.tex zine.cls campaign.tex
	mkdir -p build
	pdflatex -output-directory=build Main.tex

build/dina5.pdf: build/Main.pdf dina5.tex
	pdflatex -output-directory=build dina5.tex

all: build/dina5.pdf
	cp build/dina5.pdf print.pdf
	cp build/Main.pdf screen.pdf
