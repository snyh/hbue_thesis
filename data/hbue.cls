%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hbue}[2012/01/10]
\LoadClass[a4paper,12pt,twoside,titlepage,openany]{report}
\RequirePackage[left=2.5cm, right=2.5cm, top=3cm, bottom=2.5cm]{geometry}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\RequirePackage{url}
\RequirePackage{float}
\RequirePackage{calc}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{graphpap}
\RequirePackage{hyperref}
\RequirePackage{fontspec, xunicode}
\RequirePackage[slantfont,boldfont]{xeCJK}
\RequirePackage{zhspacing}
\zhspacing
\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{fix-cm}
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{SimSun}


\renewcommand{\baselinestretch}{1.5}
\renewcommand{\arraystretch}{0.6}
\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}
\setCJKfamilyfont{FangSong}{FangSong_GB2312}
\setCJKfamilyfont{HeiTi}{SimHei}
\setCJKfamilyfont{KaiShu}{KaiTi_GB2312}
\setCJKfamilyfont{LiShu}{LiSu}
\setCJKfamilyfont{SongTi}{SimSun}
\setCJKfamilyfont{YouYuan}{YouYuan}
\setCJKfamilyfont{STFangsong}{FangSong_GB2312}
\setCJKfamilyfont{STXingkai}{KaiTi_GB2312}
\DeclareRobustCommand{\fangsong}{\CJKfamily{FangSong}}
\DeclareRobustCommand{\stfangsong}{\CJKfamily{STFangsong}}
\DeclareRobustCommand{\stxingkai}{\CJKfamily{STXingkai}}
\DeclareRobustCommand{\heiti}{\CJKfamily{HeiTi}}
\DeclareRobustCommand{\kaiti}{\CJKfamily{KaiShu}}
\DeclareRobustCommand{\lishu}{\CJKfamily{LiShu}}
\DeclareRobustCommand{\songti}{\CJKfamily{SongTi}}
\DeclareRobustCommand{\youti}{\CJKfamily{YouYuan}}



\DeclareRobustCommand{\stitle}{}
\DeclareRobustCommand{\hbuetitle}[1]{%
\renewcommand{\stitle}{#1}%
}

\DeclareRobustCommand{\sauthor}{}
\DeclareRobustCommand{\hbueauthor}[1]{%
\renewcommand{\sauthor}{#1}%
}

\DeclareRobustCommand{\smentorn}{}
\DeclareRobustCommand{\smentort}{}
\DeclareRobustCommand{\hbuementor}[2]{%
\renewcommand{\smentorn}{#1} %
\renewcommand{\smentort}{#2} %
}

\DeclareRobustCommand{\sinfos}{}
\DeclareRobustCommand{\sinfop}{}
\DeclareRobustCommand{\sinfon}{}
\DeclareRobustCommand{\sinfoc}{}
\DeclareRobustCommand{\sinfog}{}
\DeclareRobustCommand{\hbueinfo}[5]{%
\renewcommand{\sinfos}{#1}%
\renewcommand{\sinfop}{#2}%
\renewcommand{\sinfoc}{#3}%
\renewcommand{\sinfog}{#4}%
\renewcommand{\sinfon}{#5}%
}

\DeclareRobustCommand{\sreporttime}{}
\DeclareRobustCommand{\hbuereporttime}[1]{%
\renewcommand{\sreporttime}{#1}%
}

\DeclareRobustCommand{\sreportabstract}{}
\DeclareRobustCommand{\reportabstract}[1]{%
\renewcommand{\sreportabstract}{#1}%
}
\DeclareRobustCommand{\sreportdescription}{}
\DeclareRobustCommand{\reportdescription}[1]{%
\renewcommand{\sreportdescription}{#1}%
}
\DeclareRobustCommand{\sreportcontent}{}
\DeclareRobustCommand{\reportcontent}[1]{%
\renewcommand{\sreportcontent}{#1}%
}
\DeclareRobustCommand{\sreportschedule}{}
\DeclareRobustCommand{\reportschedule}[1]{%
\renewcommand{\sreportschedule}{#1}%
}
\DeclareRobustCommand{\sreportreference}{}
\DeclareRobustCommand{\reportreference}[1]{%
\renewcommand{\sreportreference}{#1}%
}
\DeclareRobustCommand{\sreportsuggestion}{}
\DeclareRobustCommand{\reportsuggestion}[1]{%
\renewcommand{\sreportsuggestion}{#1}%
}

\newcommand{\ul}{\underline}



\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.5pt}
% 不管单面双面，页眉始终是那个样子
\fancypagestyle{plain}{
  \fancyhf{}
  \fancyhead[C]{\xiaowu\songti 湖北经济学院本科毕业设计\-(论文)}
  \fancyfoot[R]{\xiaowu\thepage}
}

\renewcommand{\contentsname}{\centerline{目\quad 录}}
\renewcommand{\listfigurename}{\centerline{图~目~录}}
\renewcommand{\listtablename}{\centerline{表~目~录}}
\setcounter{tocdepth}{1}  % 设置目录的深度到 subsection
\renewcommand{\bibname}{参~考~文~献}
\renewcommand{\figurename}{图} % 插图题头
\renewcommand{\tablename}{表} % 插表题头
