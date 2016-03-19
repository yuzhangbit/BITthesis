%%
%% This is file `bitthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% bitthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2005-2013 by Ruini Xue <xueruini@gmail.com>
%% Copyright (C) 2013-2016 derived by Chaolu <wuchaolu@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{bitthesis}
[2012/07/28 4.8dev University of Chinese Academy of Sciences Thesis Template]
\hyphenation{bit-Thesis}
\def\bitthesis{\textsc{bitthesis}}
\def\version{4.8dev}
\newif\ifbit@master\bit@masterfalse
\newif\ifbit@doctor\bit@doctorfalse
\newif\ifbit@secret\bit@secretfalse
\DeclareOption{master}{\bit@mastertrue}
\DeclareOption{doctor}{\bit@doctortrue}
\DeclareOption{secret}{\bit@secrettrue}
\newif\ifbit@arial   %!
\DeclareOption{arial}{\bit@arialtrue}
\newif\ifbit@arialtoc
\DeclareOption{arialtoc}{\bit@arialtoctrue}
\newif\ifbit@arialtitle
\DeclareOption{arialtitle}{\bit@arialtitletrue}
\newif\ifbit@raggedbottom\bit@raggedbottomtrue
\DeclareOption{noraggedbottom}{\bit@raggedbottomfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{utf,arialtitle}%?
\ProcessOptions\relax
\RequirePackage{ifxetex}
 \ifxetex
  \LoadClass[cs4size,a4paper,openany,nocap,nofonts,UTF8]{ctexbook}
 \else
  \LoadClass[cs4size,a4paper,openany,nocap,winfonts,UTF8]{ctexbook}
\fi%    \end{macrocode}

\ifbit@master\relax\else
  \ifbit@doctor\relax\else
      \ClassError{bitthesis}%
                   {You have to specify one of thesis options: master or doctor.}{}
  \fi
\fi

\RequirePackage{ifthen,calc}
\RequirePackage{amsmath}
\RequirePackage{txfonts}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{indentfirst}

\RequirePackage[neverdecrease]{paralist}
\setdefaultleftmargin{3em}{2.2em}{1.87em}{1.7em}{1em}{1em}
\ifbit@raggedbottom
  \RequirePackage[bottom,perpage]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage]{footmisc}
\fi
\ifdefined \ctexset
\ctexset{autoindent=true}
\fi
\renewcommand{\baselinestretch}{1.0}
\RequirePackage{CJKnumb}
\ifxetex
  \xeCJKsetup{AutoFakeBold=false,AutoFakeSlant=false,AllowBreakBetweenPuncts=true}
  \punctstyle{quanjiao}
  \normalspacedchars{-}
  % todo: minor fix of CJKnumb

  \def\CJK@null{\kern\CJKnullspace\Unicode{48}{7}\kern\CJKnullspace}
  \defaultfontfeatures{Mapping=tex-text} % use TeX --
  \input{fontname.def}

  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \setmonofont{Courier New}
\else
  \RequirePackage{CJKspace}
  \ifbit@arial
    \IfFileExists{arial.sty}%
                 {\RequirePackage{arial}}%
                 {\ClassWarning{bitthesis}{no arial.sty availiable!}}
  \fi
\fi
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{hyperref}
\ifxetex
  \hypersetup{%
    CJKbookmarks=true}
\else
  \hypersetup{%
    unicode=true,
    CJKbookmarks=false}
\fi

\RequirePackage{refcount}
\newcommand{\chapterref}[1]{%
  \@ifundefined{hyperref}{}{\hyperref[#1]%
  {\CJKnumber{\getrefnumber{#1}}}}}

\RequirePackage{xcolor}
\definecolor{bitcitecolor}{rgb}{0.0, 0.50, 0.0}
\definecolor{bitlinkcolor}{rgb}{0.75, 0.0, 0.0}
\definecolor{biturlcolor}{rgb}{0.0, 0.0, 0.75}
\hypersetup{%
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=1,
  breaklinks=true,
  colorlinks=true,
  citecolor=bitcitecolor,
  linkcolor=bitlinkcolor,
  urlcolor=biturlcolor,
  plainpages=false,
  pdfpagelabels,
  pdfborder=0 0 0}
\urlstyle{same}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{bit@empty}}
\renewcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{bit@headings}}
  %#\ifbit@bachelor\pagestyle{bit@plain}\else\pagestyle{bit@headings}\fi}
\renewcommand\backmatter{%
  \cleardoublepage
  \pagenumbering{roman}
  \pagestyle{bit@plain}
  \@mainmattertrue}
\newlength\bit@linespace
\newcommand{\bit@choosefont}[2]{%
   \setlength{\bit@linespace}{#2*\real{#1}}%
   \fontsize{#2}{\bit@linespace}\selectfont}
\def\bit@define@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \bit@choosefont{##1}{#2}}}
\bit@define@fontsize{chuhao}{42bp}
\bit@define@fontsize{xiaochu}{36bp}
\bit@define@fontsize{yihao}{26bp}
\bit@define@fontsize{xiaoyi}{24bp}
\bit@define@fontsize{erhao}{22bp}
\bit@define@fontsize{xiaoer}{18bp}
\bit@define@fontsize{sanhao}{16bp}
\bit@define@fontsize{xiaosan}{15bp}
\bit@define@fontsize{sihao}{14bp}
\bit@define@fontsize{banxiaosi}{13bp}
\bit@define@fontsize{xiaosi}{12bp}
\bit@define@fontsize{dawu}{11bp}
\bit@define@fontsize{wuhao}{10.5bp}
\bit@define@fontsize{xiaowu}{9bp}
\bit@define@fontsize{liuhao}{7.5bp}
\bit@define@fontsize{xiaoliu}{6.5bp}
\bit@define@fontsize{qihao}{5.5bp}
\bit@define@fontsize{bahao}{5bp}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}
  \abovedisplayskip=10bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=10bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\AtBeginDvi{\special{papersize=\the\paperwidth,\the\paperheight}}
\AtBeginDvi{\special{!%
      \@percentchar\@percentchar BeginPaperSize: a4
      ^^Ja4^^J\@percentchar\@percentchar EndPaperSize}}
\setlength{\textwidth}{\paperwidth}
\setlength{\textheight}{\paperheight}
\setlength\marginparwidth{0cm}
\setlength\marginparsep{0cm}
\addtolength{\textwidth}{-5cm}
\setlength{\topmargin}{1.75cm-1in}
\setlength{\oddsidemargin}{2.5cm-1in}
\setlength{\footskip}{0.6cm}
\setlength{\headsep}{0.5cm}
\addtolength{\textheight}{-5.25cm}

\setlength{\evensidemargin}{\oddsidemargin}
\setlength{\headheight}{20pt}
\setlength{\topskip}{0pt}
\setlength{\skip\footins}{15pt}
\let\bit@cleardoublepage\cleardoublepage
\newcommand{\bit@clearemptydoublepage}{%
  \clearpage{\pagestyle{empty}\bit@cleardoublepage}}
\let\cleardoublepage\bit@clearemptydoublepage
\def\ps@bit@empty{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty}
\def\ps@bit@foot{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \def\@oddfoot{\hfil\xiaowu\thepage\hfil}%
  \let\@evenfoot=\@oddfoot}
\def\ps@bit@plain{%
  \def\@oddhead{\vbox to\headheight{%
    \hb@xt@\textwidth{\hfill\xiaowu\songti\bit@ctitle：\leftmark\hfill}%
      \vskip2pt\hbox{\vrule width\textwidth height0.4pt depth0pt}}}
  \def\@oddfoot{\hfil\xiaowu\thepage\hfil}%
  \def\@evenhead{\vbox to\headheight{%
      \hb@xt@\textwidth{\xiaowu\songti%
       \hfill \bit@ctitle：\leftmark \hfill}%
      \vskip2pt\hbox{\vrule width\textwidth height0.4pt depth0pt}}}
  \def\@oddfoot{\hfil\xiaowu\thepage\hfil}%
  \let\@evenfoot=\@oddfoot}
\def\ps@bit@headings{%
  \def\@oddhead{\vbox to\headheight{%
    \hb@xt@\textwidth{\hfill\xiaowu\songti\leftmark\hfill}%
      \vskip2pt\hbox{\vrule width\textwidth height0.4pt depth0pt}}}
  \def\@evenhead{\vbox to\headheight{%
      \hb@xt@\textwidth{\xiaowu\songti%
       \hfill \headingtitle \hfill}%
      \vskip2pt\hbox{\vrule width\textwidth height0.4pt depth0pt}}}
  \def\@oddfoot{\hfil\xiaowu\thepage\hfil}
  \let\@evenfoot=\@oddfoot}

\renewcommand{\chaptermark}[1]{\@mkboth{\@chapapp\  ~~#1}{}}
\setlength{\parskip}{0pt \@plus2pt \@minus0pt}
\def\bit@item@space{%
  \let\itemize\compactitem
  \let\enditemize\endcompactitem
  \let\enumerate\compactenum
  \let\endenumerate\endcompactenum
  \let\description\compactdesc
  \let\enddescription\endcompactdesc}
\def\bit@textcircled#1{%
  \ifnum \value{#1} <10 \textcircled{\xiaoliu\arabic{#1}}
  \else\ifnum \value{#1} <100 \textcircled{\qihao\arabic{#1}}\fi
  \fi}
\renewcommand{\thefootnote}{\bit@textcircled{footnote}}
\renewcommand{\thempfootnote}{\bit@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\bit@footnotesize\footnotesize
\renewcommand\footnotesize{\bit@footnotesize\xiaowu[1.5]}
\def\@makefnmark{\textsuperscript{\hbox{\normalfont\@thefnmark}}}
\long\def\@makefntext#1{
  \bgroup
    \newbox\bit@tempboxa
    \setbox\bit@tempboxa\hbox{%
      \hb@xt@ 2em{\@thefnmark\hss}}
    \leftmargin\wd\bit@tempboxa
    \rightmargin\z@
    \linewidth \columnwidth
    \advance \linewidth -\leftmargin
    \parshape \@ne \leftmargin \linewidth
    \footnotesize
    \@setpar{{\@@par}}%
    \leavevmode
    \llap{\box\bit@tempboxa}%
    #1
  \par\egroup}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\make@df@tag{\@ifstar\bit@make@df@tag@@\make@df@tag@@@}
\def\bit@make@df@tag@@#1{\gdef\df@tag{\bit@maketag{#1}\def\@currentlabel{#1}}}
\renewcommand{\eqref}[1]{\textup{(\ref{#1})}}
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\bit@maketag#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)}}
\def\tagform@#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)\equcaption{#1}}}
\gdef\@endtrivlist#1{%  % from \endtrivlist
  \if@inlabel \indent\fi
  \if@newlist \@noitemerr\fi
  \ifhmode
    \ifdim\lastskip >\z@ #1\unskip \par
      \else #1\unskip \par \fi
  \fi
  \if@noparlist \else
    \ifdim\lastskip >\z@
       \@tempskipa\lastskip \vskip -\lastskip
      \advance\@tempskipa\parskip \advance\@tempskipa -\@outerparskip
      \vskip\@tempskipa
    \fi
    \@endparenv
  \fi #1}
\theorembodyfont{\kaishu }
\theoremheaderfont{\heiti }
\setlength{\floatsep}{12bp \@plus4pt \@minus1pt}
\setlength{\intextsep}{12bp \@plus4pt \@minus2pt}
\setlength{\textfloatsep}{12bp \@plus4pt \@minus2pt}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\let\old@tabular\@tabular
\def\bit@tabular{\dawu[1.5]\old@tabular}
\DeclareCaptionLabelFormat{bit}{{\dawu[1.5]\songti #1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{bit}{\hspace{1em}}
\DeclareCaptionFont{bit}{\dawu[1.5]}
\captionsetup{labelformat=bit,labelsep=bit,font=bit}
\captionsetup[table]{position=top,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[figure]{position=bottom,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[sub]{font=bit,skip=6bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\bit@LT@array\LT@array
\def\LT@array{\dawu[1.5]\bit@LT@array} % set default font size
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
    \reserved@a\@xhline}
\ifbit@arialtitle
  \def\bit@title@font{\sffamily}
\fi
\renewcommand\chapter{%
  \cleardoublepage%
  \thispagestyle{bit@foot}%
  \global\@topnum\z@%
  \@afterindenttrue%
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
   \if@mainmatter
     \refstepcounter{chapter}%
     \addcontentsline{toc}{chapter}{\protect\numberline{\@chapapp}#1}%TODO: shit
   \else
     \addcontentsline{toc}{chapter}{#1}%
   \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \@makechapterhead{#2}}
\def\@makechapterhead#1{%
  \vspace*{17bp}
  {\parindent \z@ \centering
    \csname bit@title@font\endcsname\heiti\sihao[2.41]
    \ifnum \c@secnumdepth >\m@ne
      \@chapapp\hskip1em
    \fi
    #1\par\nobreak
    \vskip 16.5bp}}
\def\@schapter#1{%
  \@makeschapterhead{#1}
  \@afterheading}
\def\@makeschapterhead#1{%
  \vspace*{17bp}%
  {\parindent \z@ \centering
   \csname bit@title@font\endcsname\heiti\sihao[2.41]
     \def\@tempa{#1}
     \def\@tempb{\eabstractname}
     \ifx\@tempa\@tempb\fi

   \interlinepenalty\@M
   #1\par\nobreak
    \vskip 16.5bp}}
\newcounter{bit@bookmark}
\def\bit@chapter*{%
  \@ifnextchar [ % ]
    {\bit@@chapter}
    {\bit@@chapter@}}
\def\bit@@chapter@#1{\bit@@chapter[#1]{#1}}
\def\bit@@chapter[#1]#2{%
  \@ifnextchar [ % ]
    {\bit@@@chapter[#1]{#2}}
    {\bit@@@chapter[#1]{#2}[]}}
\def\bit@@@chapter[#1]#2[#3]{%
  \cleardoublepage
  \phantomsection
  \def\@tmpa{#1}
  \def\@tmpb{#3}
  \ifx\@tmpa\@empty
    \ifx\@tmpb\@empty
      \addtocounter{bit@bookmark}\@ne
      \pdfbookmark[0]{#2}{bitchapter.\thebit@bookmark}
    \else
      \addtocounter{bit@bookmark}\@ne
      \pdfbookmark[0]{#3}{bitchapter.\thebit@bookmark}
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}
  \fi
  \chapter*{#2}
  \ifx\@tmpb\@empty
    \@mkboth{#2}{#2}
  \else
    \@mkboth{#3}{#3}
  \fi}
\renewcommand\section{\@startsection {section}{1}{\z@}%
                     {-8bp\@plus -1ex \@minus -.2ex}%
                     {8bp \@plus .2ex}%
                     {\csname bit@title@font\endcsname\heiti\xiaosi[1.75]}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                        {-4bp\@plus -1ex \@minus -.2ex}%
                        {4bp \@plus .2ex}%
                        {\csname bit@title@font\endcsname\heiti\xiaosi[1.75]}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                           {-4bp\@plus -1ex \@minus -.2ex}%
                           {4bp \@plus .2ex}%
                           {\csname bit@title@font\endcsname\heiti\xiaosi[1.75]}}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

\renewcommand\tableofcontents{%
  \cleardoublepage
  \bit@chapter*{\contentsname}[\scontentsname]
  \xiaosi[1.5]\@starttoc{toc}\normalsize}
\ifbit@arialtoc
  \def\bit@toc@font{\sffamily}
\fi
\def\@pnumwidth{2em} % 这个参数没用了
\def\@tocrmarg{2em}
\def\@dotsep{1} % 目录点间的距离
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
    \interlinepenalty\@M
    \leavevmode
    \@tempdima #3\relax
    \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
    {\csname bit@toc@font\endcsname #4}\nobreak
    \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
    \nobreak{\normalfont \normalcolor #5}%
    \par\penalty\@highpenalty}%
  \fi}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 8bp \@plus\p@
    \setlength\@tempdima{4em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      {\csname bit@toc@font\endcsname\heiti\xiaosi #1} % numberline is called here, and it uses \@tempdima
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak{\normalcolor #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section{\vspace*{1ex}\@dottedtocline{1}{1.2em}{2.1em}}
\renewcommand*\l@subsection{\vspace*{1ex}\@dottedtocline{2}{2em}{3em}}
%%\renewcommand*\l@subsubsection{\vspace*{1ex}\@dottedtocline{3}{3.5em}{3.8em}}
\def\bit@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname bit@#1\endcsname{##1}}
  \csname #1\endcsname{}}
\bit@define@term{catalognumber}
\bit@define@term{udc}
\bit@define@term{id}
\bit@define@term{secretcontent}
\bit@define@term{ctitle}
\bit@define@term{cdegree}
\newcommand\cdepartment[2][]{\def\bit@cdepartment@short{#1}\def\bit@cdepartment{#2}}
\def\caffil{\cdepartment} % todo: for compatibility
\def\bit@cdepartment@short{}
\def\bit@cdepartment{}
\bit@define@term{cmajor}
\def\csubject{\cmajor} % todo: for compatibility
\bit@define@term{cfirstdiscipline}
\bit@define@term{cseconddiscipline}
\bit@define@term{cauthor}
\bit@define@term{csupervisor}
\bit@define@term{csupervisorplace}
\bit@define@term{cassosupervisor}
\bit@define@term{ccosupervisor}

\bit@define@term{cdate}
\bit@define@term{etitle}
\bit@define@term{edegree}
\bit@define@term{edepartment}
\def\eaffil{\edepartment} % todo: for compability

\bit@define@term{eauthor}
\bit@define@term{emajor}
\bit@define@term{esupervisor}
\bit@define@term{edepartmnent}
\bit@define@term{edate}
\long\@xp\def\@xp\collect@@body\@xp#\@xp1\@xp\end\@xp#\@xp2\@xp{%
  \collect@@body{#1}\end{#2}}
\long\@xp\def\@xp\push@begins\@xp#\@xp1\@xp\begin\@xp#\@xp2\@xp{%
  \push@begins{#1}\begin{#2}}
\long\@xp\def\@xp\addto@envbody\@xp#\@xp1\@xp{%
  \addto@envbody{#1}}
\newcommand{\bit@@cabstract}[1]{\long\gdef\bit@cabstract{#1}}
\newenvironment{cabstract}{\collect@body\bit@@cabstract}{}
\newcommand{\bit@@eabstract}[1]{\long\gdef\bit@eabstract{#1}}
\newenvironment{eabstract}{\collect@body\bit@@eabstract}{}
\def\bit@parse@keywords#1{
  \expandafter\gdef\csname bit@#1\endcsname{} % todo: need or not?
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname bit@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname bit@#1\endcsname{\ignorespaces\csname bit@#1@separator\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname bit@#1\expandafter\endcsname\expandafter{\reserved@a}}}}
\bit@parse@keywords{ckeywords}
\bit@parse@keywords{ekeywords}
\newcommand\bit@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newlength{\bit@title@width}
\def\bit@put@title#1{\makebox[\bit@title@width][s]{#1}}
\def\bit@first@titlepage{%
  \bit@first@titlepage@other}
\newcommand*{\getcmlength}[1]{\strip@pt\dimexpr0.035146\dimexpr#1\relax\relax}
\newcommand{\bit@first@titlepage@other}{
  \begin{center}
    \vspace*{0cm}
    \parbox[t][1cm][t]{\textwidth}{%
      \ifbit@secret\hspace{25em}{\sihao[1]\songti 密级：\underline{\makebox[6em]{\bit@secretcontent}}}\fi}
      \begin{figure}[H]
        \centering
        \includegraphics[width=128mm,height=21.7mm]{thu-text-logo}
      \end{figure}
      \parbox[t][8cm][t]{\paperwidth-8cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
      \yihao\heiti\bit@apply
      \par\vskip 40bp
      \sanhao\heiti\bit@ctitle
      \end{center}}

\parbox[t][9cm][t]{\textwidth}{{\sihao\songti
\begin{center}
\setlength{\bit@title@width}{4em}
\setlength{\extrarowheight}{2.5ex}
\begin{tabular}{ll}

\bit@author@title\bit@title@sep     &\underline{\makebox[25em]{\bit@cauthor}}\\

\bit@supervisor@title\bit@title@sep     &\underline{\makebox[25em]{\bit@csupervisor}}\\

&\underline{\makebox[25em]{\bit@csupervisorplace}}\\

\bit@degree@title\bit@title@sep     &\underline{\makebox[25em]{\bit@cdegree}}\\

\bit@major@title\bit@title@sep     &\underline{\makebox[25em]{\bit@cmajor}}\\

\bit@put@title{\bit@department@title}\bit@title@sep     &\underline{\makebox[25em]{\bit@cdepartment}}\\

\end{tabular}
\end{center}}}
  \begin{center}
    {\vskip 3ex\sihao \songti \bit@cdate}
  \end{center}
\end{center}} % end of titlepage
\newcommand{\bit@engcover}{%
  \def\bit@master@art{Master of Arts}
  \def\bit@master@sci{Master of Science}
  \def\bit@doctor@phi{Doctor of Philosophy}
  \newif\ifbit@professional
  \bit@professionalfalse

  \begin{center}
    \vspace*{0.2cm}
    \parbox[t][3.2cm][t]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.5}
      \begin{center}
        \sanhao\sffamily\bit@etitle
      \end{center}}
    \parbox[t][7cm][c]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
        \sanhao\rmfamily by\\[3bp]
        \rmfamily\bit@eauthor
      \end{center}}

    \parbox[t][8cm][t]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
        \sihao
        \rmfamily A \ifbit@master Thesis \else Dissertation \fi
        Submitted to\\
        {\rmfamily University of Chinese Academy of Sciences}\\
        \rmfamily in Partial Fulfillment of the Requirement\\
        \rmfamily for the Degree of\\
        {\rmfamily\bit@edegree}

      \end{center}}

    \par\vspace{0.9cm}
    \parbox[t][2cm][b]{\paperwidth-7.2cm}{
    \begin{center}
      \sihao\rmfamily\bit@edepartment\par\vspace*{1ex}
      \sihao\rmfamily\bit@edate
    \end{center}}
  \end{center}}
\newcommand{\bit@declare@mk}{%
\begin{center}\sanhao\heiti{\bit@declarename}\end{center}
  \vskip40pt\sihao[2.03]\par
  \bit@declaretext\par
  \vskip1.5cm
  \sihao
  \hspace{11em}\bit@signature\hspace{6em}\bit@backdate
}
\newcommand{\bit@authorization@mk}{%
  \vspace*{0.72cm} % shit code!
  \begin{center}\sanhao\heiti{\bit@authtitle}\end{center}
  \vskip40pt\sihao[2.03]\par
  \bit@authorization\par
  \bit@authorizationaddon\par
  \vskip1.5cm
  \sihao
  \bit@authorsig\hspace{6em}\bit@teachersig\hspace{6em}\bit@frontdate
  }
\newcommand{\makecover}{
  \phantomsection
  \pdfbookmark[-1]{\bit@ctitle}{ctitle}
  \normalsize%
  \begin{titlepage}
    \bit@first@titlepage
\cleardoublepage
\clearpage\bit@engcover

      \cleardoublepage%
      \begin{list}{}{%
        \topsep\z@%
        \listparindent\parindent%
        \parsep\parskip%
        \setlength{\itemsep}{5cm}
        \setlength{\leftmargin}{0.9mm}%
        \setlength{\rightmargin}{0.9mm}}%
      \item[]\bit@declare@mk
      \item[]\bit@authorization@mk%
      \end{list}%
  \end{titlepage}
  \normalsize
  \bit@makeabstract
  \let\@tabular\bit@tabular}
\newcommand{\bit@makeabstract}{%
  \cleardoublepage
  \bit@chapter*{\cabstractname}[\csabstractname] % no tocline
  \pagestyle{bit@plain}
  \pagenumbering{Roman}
  \bit@cabstract
  \vskip12bp
  \setbox0=\hbox{{\heiti\bit@ckeywords@title}}
  \noindent\hangindent\wd0\hangafter1
    \box0\bit@ckeywords
  \cleardoublepage
  \bit@chapter*[]{\bit@etitle}[\eabstractname] % no tocline
  \begin{center}
  \bit@eauthor\hspace{1ex}(\bit@emajor)\\
  Directed by \bit@esupervisor\\
  \end{center}
  \hspace{2em}\bit@eabstract
  \vskip12bp
  \setbox0=\hbox{\textbf{Keywords:\enskip}}
  \noindent
    \box0\bit@ekeywords}
\newenvironment{denotation}[1][2.5cm]{
  \bit@chapter*[]{\bit@denotation@name} % no tocline
  \noindent\begin{list}{}%
    {\vskip-30bp\xiaosi[1.6]
     \renewcommand\makelabel[1]{##1\hfil}
     \setlength{\labelwidth}{#1} % 标签盒子宽度
     \setlength{\labelsep}{0.5cm} % 标签与列表文本距离
     \setlength{\itemindent}{0cm} % 标签缩进量
     \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
     \setlength{\rightmargin}{0cm}
     \setlength{\parsep}{0cm} % 段落间距
     \setlength{\itemsep}{0cm} % 标签间距
    \setlength{\listparindent}{0cm} % 段落缩进量
    \setlength{\topsep}{0pt} % 标签与上文的间距
   }}{\end{list}}


\newenvironment{ack}{%
    \cleardoublepage
    \bit@chapter*{\bit@ackname}[\bit@sackname]
  }

\def\bit@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname \hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\bit@listof#1{% #1: float type
  \cleardoublepage
  \@ifstar
    {\bit@chapter*[]{\csname list#1name\endcsname}\bit@starttoc{#1}}
    {\bit@chapter*{\csname list#1name\endcsname}\bit@starttoc{#1}}}
\renewcommand\listoffigures{\bit@listof{figure}}
\renewcommand*\l@figure{\vspace*{1ex}\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\bit@listof{table}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\bit@listof{equation}}
\let\l@equation\l@figure
\bibpunct{[}{]}{,}{s}{}{,}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa%
  \unskip\kern\p@\textsuperscript{\NAT@@open #1\NAT@@close}%
  \if*#3*\else\ (#3)\fi\else #1\fi\endgroup}
\DeclareRobustCommand\onlinecite{\@onlinecite}
\def\@onlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\renewcommand{\cite}[1]{{\onlinecite{#1}}}
\def\bitdot{\unskip.}
\def\bitmasterbib{[硕士学位论文]}
\def\bitphdbib{[博士学位论文]}
\renewenvironment{thebibliography}[1]{%
   \bit@chapter*{\bibname}%
   \wuhao[1.5]
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\renewcommand{\makelabel}[1]{##1\hfill}
         \settowidth\labelwidth{1.1cm}
         \setlength{\labelsep}{0.4em}
         \setlength{\itemindent}{0pt}
         \setlength{\leftmargin}{\labelwidth+\labelsep}
         \addtolength{\itemsep}{-0.7em}
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy\frenchspacing
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \interlinepenalty4000%
    \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
    \endlist\frenchspacing}
\let\bit@appendix\appendix
\renewenvironment{appendix}{%
  \bit@appendix
  \gdef\@chapapp{\appendixname~\thechapter}
  %\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
  }{}
\newenvironment{resume}[1][\bit@resume@title]{%
  \cleardoublepage
  \bit@chapter*{#1}}{}
\newcommand{\resumeitem}[1]{\vspace{2.5em}{\noindent\xiaosi\heiti 【{#1}】 \par}}
\newcommand{\spine}[1][\bit@ctitle]{
  \newpage\thispagestyle{empty}\heiti\xiaosi
  \parbox[t][23cm][t]{1em}{#1\vfill\bit@cauthor\vfill 中国科学院大学}}
\iffalse
\newcommand{\bs}{\symbol{'134}}%Print backslash
\newcommand{\cih}[1]{%
  \index{commands!#1@\texttt{\bs#1}}%
  \index{#1@\texttt{\hspace*{-1.2ex}\bs #1}}}
\newcommand{\ci}[1]{\cih{#1}\texttt{\bs#1}}
\newcommand{\pai}[1]{%
  \index{packages!#1@\textsf{#1}}%
  \index{#1@\textsf{#1}}%
  \textsf{#1}}
\newcommand{\ei}[1]{%
  \index{environments!\texttt{#1}}%
  \index{#1@\texttt{#1}}%
  \texttt{#1}}
\newcommand{\wi}[1]{\index{#1}#1}
\fi
\AtEndOfClass{\input{bitthesis.cfg}}
\def\bit@setup@pdfinfo{%
  \hypersetup{%
    pdftitle={\bit@ctitle},
    pdfauthor={\bit@cauthor},
    pdfsubject={\bit@cdegree},
    pdfkeywords={\bit@ckeywords},
    pdfcreator={\bit@cauthor},
    pdfproducer={\bitthesis}}}
\AtEndOfClass{\sloppy\bit@item@space}
\endinput
%%
%% End of file `bitthesis.cls'.
