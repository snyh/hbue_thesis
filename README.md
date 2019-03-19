湖北经济学院本科毕业论文 latex模板
====
在网上没有找到学校的latex模板故此制作了一份，
整体框架已经搭建完成。

依赖xelatex和xeCJK宏包, 
默认字体为Adobe的四套字体, linux下可以选择安装,
如果是win系统则用"win"搜索data/hbue.cls文件去掉对应注释使用系统自带的字体.

main.pdf是生成的文件, content内的文件是样章, 论文比较烂, 丟上来主要是给不
太熟悉latex的朋友起一个借鉴作用.

使用docker方式
========
1. 在系统上安装docker
2. 直接执行 ./hbue_thesis
(模板维护者)若需要调整字体等，则需要字体到./docker/fonts目录，并重新制作image

docker模式是将需要用到的字体和tex包全部放入镜像中，这样不同系统和不同时间段下
都可以有完全相同的输出。

传统使用方式:
======
1.  修改info.tex 内容为自己的信息
2.  在content目录下建立自己的章节内容
3.  make; 默认编译毕业论文, 若make report则编译开题报告
4.  main.pdf或者report.pdf就是生成的最终文件了. 

提示:
1. 如果需要使用更新目录则需要编译2次(也就是make2次)
2. 章节文件使用\chapter{章节名称}或者\chapter*{章节名称}后者不会在目录中出现.
3. 如果是evince等pdf阅读器可以不打开根目录下的pdf文件而是打开.tmp/main.pdf这个
    pdf文件,这样你每次修改 make之后evince可以马上更新效果,对于调式非常方便.
4. 默认的Makefile文件是建立.tmp临时目录处理中间文件防止根目录下文件过多,

```
目录结构
.
|-- figure //存放图表的目录，可自由安排
|   `-- filemanger.eps
|-- content    //论文正文，这里面的内容是用户需要撰写的正文
|   |-- abstract.aux
|   |-- abstract.tex
|   |-- filemanager.aux
|   |-- filemanager.tex
|   |-- filespec.tex
|   |-- introduce.aux
|   |-- introduce.tex
|   |-- protocol.tex
|   `-- workaround.tex
|-- data   //模板数据不需要更改
|   |-- cover.tex  //封面
|   |-- hbue.cls //模板文件
|   |-- images
|   |   |-- badge2.png
|   |   `-- badge.png
|   `-- report_imp.tex //开题报告模板
|-- info.tex //在这里提供个人信息导师信息等。
|-- main.tex //主文件，用来链接各部分
|-- Makefile //方便编译
|-- report.tex //开题报告、文献综述
`-- README
```

TODO
=====
- [ ] 调整为新模板
- [ ] 目前开题包括的格式会乱掉，需要修复
- [ ] 将临时文件输出到container内，避免污染工作目录
- [ ] 将data模板等文件全部放入image内，以便最终用户直接执行hbue_thesis main.tex即可完成pdf的输出
- [ ] fix	\includegraphics{figure/filemanger.eps} in content/thanks.tex
