main: main
	xelatex -output-directory=./.tmp main
	cp ./tmp/main.pdf .
report: report.tex
	xelatex -output-directory=./.tmp report
	cp ./tmp/report.pdf .

clean: 
	rm ./.tmp/content/*
	rm  ./.tmp/*

init:
	mkdir content
	mkdir figure
	mkdir ./.tmp
	mkdir ./.tmp/content
