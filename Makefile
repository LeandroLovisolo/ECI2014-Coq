.PHONY: all clean new

all: soluciones.pdf

soluciones.pdf: tex/soluciones.tex
	cd tex; pdflatex -interaction=nonstopmode -halt-on-error soluciones.tex && \
	        pdflatex -interaction=nonstopmode -halt-on-error soluciones.tex
	mv tex/soluciones.pdf .

clean:
	rm -f soluciones.pdf tex/*.aux tex/*.log tex/*.toc tex/*.out tex/*.pdf src/*.pyc src/ptc/*.pyc src/test/*.pyc

new: clean all