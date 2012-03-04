main: main
	xelatex -output-directory=./.tmp main
report: report.tex
	xelatex -output-directory=./.tmp report
	xelatex -output-directory=./.tmp report

clean: 
	rm ./.tmp/content/*
	rm  ./.tmp/*

init:
	mkdir content
	mkdir figure
	mkdir ./.tmp
	mkdir ./.tmp/content
