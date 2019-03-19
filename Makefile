main: main.tex init
	xelatex -shell-escape -8bit main.tex

report: report.tex init
	xelatex -shell-escape -8bit report.tex

init:
	-rm -r .tmp
	mkdir ./.tmp
	mkdir ./.tmp/content
