main: main
	xelatex -shell-escape -8bit main

report: report.tex
	xelatex  report

clean: 
	rm ./.tmp/content/*
	rm  ./.tmp/*

init:
	mkdir content
	mkdir figure
	mkdir ./.tmp
	mkdir ./.tmp/content
