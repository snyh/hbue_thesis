%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hbue}[2012/01/10]
\LoadClass[a4paper,oneside,titlepage]{book}
\RequirePackage[left=2.5cm, right=2.5cm, top=3cm, bottom=2.5cm]{geometry}
\RequirePackage[slantfont,boldfont,CJKnumber,CJKchecksingle]{xeCJK} %中文支持
\XeTeXlinebreaklocale ``zh'' %针对中文断行
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt %自动断行允许范围
\punctstyle{kaiming} %标点符号方式
\defaultfontfeatures{Mapping=tex-text}
\RequirePackage{fancyhdr} %页眉页脚
\RequirePackage{titletoc} %修改目录样式需要
\RequirePackage[colorlinks, linkcolor=black]{hyperref} %增加超级链接功能
\RequirePackage{longtable} %开题报告需要使用这个作表
\RequirePackage{fontspec, xunicode}
%\RequirePackage{calc}
%\RequirePackage{float}
%\RequirePackage{graphicx}
%\RequirePackage{setspace}
%\RequirePackage{graphpap}
%\RequirePackage{tabularx}
%\RequirePackage{fix-cm}

%硬性要求正文行距1.5倍
\linespread{1.5}
\renewcommand{\baselinestretch}{1.5}
\renewcommand{\arraystretch}{0.6}

%pt到字号的映射参考http://wiki.ctex.org/index.php/LaTeX/%E5%B0%BA%E5%AF%B8
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


%中文字体
\setCJKmainfont{Adobe Song Std}
\setCJKsansfont{Adobe Fangsong Std}
%英文字体
\setmainfont{URW Bookman L}
\setromanfont{URW Palladio L}

%常用字体映射,需要根据系统中有的字体进行修改,使用fc-list查看
%微软字体, win下可使用这组字体
%\setCJKfamilyfont{HeiTi}{SimHei}
%\setCJKfamilyfont{SongTi}{SimSun}
%\setCJKfamilyfont{KaiTi}{SimKai}

%为字体选择创建简单的命令
\setCJKfamilyfont{HeiTi}{Adobe Heiti Std}
\setCJKfamilyfont{SongTi}{Adobe Song Std}
\setCJKfamilyfont{FangSong}{Adobe Fangsong Std}
\setCJKfamilyfont{KaiTi}{Adobe Kaiti Std}
\DeclareRobustCommand{\heiti}{\CJKfamily{HeiTi}}
\DeclareRobustCommand{\kaiti}{\CJKfamily{KaiTi}}
\DeclareRobustCommand{\songti}{\CJKfamily{SongTi}}
\DeclareRobustCommand{\fangsong}{\CJKfamily{FangSong}}


%设置页眉页脚
%字体和大小为硬性要求宋体小五, 页眉居中页脚靠右
\renewcommand{\headrulewidth}{0.5pt}
\fancypagestyle{plain}{%不重新设置一般则在章节开头没有页眉
\fancyhf{}
\fancyhead[C]{\xiaowu\songti 湖北经济学院本科毕业设计\-(论文)}
\fancyfoot[R]{\xiaowu\thepage}
}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\xiaowu\songti 湖北经济学院本科毕业设计\-(论文)}
\fancyfoot[R]{\xiaowu\thepage}


%设置目录样式
% 只排版到二级标题,即章和节
% ``目录''二字使用小三号黑体居中排版
% 目录标题左边顶格排版,页号使用大写罗马数字标注,右顶格排版

%具体命令可以参加report.cls里的定义
\renewcommand{\contentsname}{\xiaosan\heiti\centerline{目\quad 录}} 
\setcounter{tocdepth}{1}  %目录面只排版到二级标题即章和节,硬性要求

%目录顶格
%修改默认名加上 第xx章
\titlecontents{chapter}[0em]{\addvspace{5pt}\filright}%
{第\thecontentslabel 章\hspace{1em}}{}{\titlerule*[8pt]{.}\contentspage}

\titlecontents{section}[1em]{}%
{\contentspush{\thecontentslabel\quad}}%
{}{\quad\titlerule*[8pt]{.}\contentspage}


%一些自定义命令处理封面和开题报告的
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
