
pdf:clean 
	docker run --interactive --tty --mount type=bind,source=.,target=/tcc2 --workdir=/tcc2 --rm andrelanna/texlivefull pdflatex tcc.tex
	docker run --interactive --tty --mount type=bind,source=.,target=/tcc2 --workdir=/tcc2 --rm andrelanna/texlivefull pdflatex tcc.tex
	docker run --interactive --tty --mount type=bind,source=.,target=/tcc2 --workdir=/tcc2 --rm andrelanna/texlivefull pdflatex tcc.tex

clean: 
	rm -v -f *.aux 
	rm -v -f *.idx 
	rm -v -f *.lof 
	rm -v -f *.log 
	rm -v -f *.pdf 
	rm -v -f *.toc 
