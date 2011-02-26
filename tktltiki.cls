%%
%% This is file `tktltiki.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tktltiki.dtx  (with options: `luokka')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from tktltiki.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file tktltiki.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[2000/06/01]
\ProvidesClass{tktltiki}
  [2007/09/12 v1.1 Dokumenttiluokka TiKi-kurssia varten]
\newif\if@finnish
\newif\if@swedish
\newif\if@english
\newif\if@gradu
\newif\if@emptyfirstpagenumber

\DeclareOption{finnish}{\@finnishtrue}
\DeclareOption{swedish}{\@swedishtrue}
\DeclareOption{english}{\@englishtrue}
\DeclareOption{gradu}{\@gradutrue}
\DeclareOption{emptyfirstpagenumber}{\@emptyfirstpagenumbertrue}
\newif\if@defaulttypesize
\@defaulttypesizetrue
\newif\if@defaultpaper
\@defaultpapertrue
\newif\if@defaulttitlepage
\@defaulttitlepagetrue

\DeclareOption{10pt}{
  \@defaulttypesizefalse
  \PassOptionsToClass{10pt}{article}}
\DeclareOption{11pt}{
  \@defaulttypesizefalse
  \PassOptionsToClass{11pt}{article}}

\DeclareOption{a5paper}{
  \@defaultpaperfalse
  \PassOptionsToClass{a5paper}{article}}
\DeclareOption{b5paper}{
  \@defaultpaperfalse
  \PassOptionsToClass{b5paper}{article}}
\DeclareOption{letterpaper}{
  \@defaultpaperfalse
  \PassOptionsToClass{letterpaper}{article}}
\DeclareOption{legalpaper}{
  \@defaultpaperfalse
  \PassOptionsToClass{legalpaper}{article}}
\DeclareOption{executivepaper}{
  \@defaultpaperfalse
  \PassOptionsToClass{executivepaper}{article}}

\DeclareOption{notitlepage}{
  \@defaulttitlepagefalse
  \PassOptionsToClass{notitlepage}{article}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\if@defaulttypesize
  \PassOptionsToClass{12pt}{article}
\fi
\if@defaultpaper
  \PassOptionsToClass{a4paper}{article}
\fi
\if@defaulttitlepage
  \PassOptionsToClass{titlepage}{article}
\fi
\ProcessOptions\relax
\LoadClass{article}[2000/05/19]
\RequirePackage{latexsym}[1998/08/17 v2.2e Standard LaTeX package (lasy symbols)]
\RequirePackage[latin9]{inputenc}[2000/07/01 v0.996 Input encoding file ]
\RequirePackage[T1]{fontenc}[2000/08/30 v1.91 Standard LaTeX package]
\if@finnish
  \RequirePackage[finnish]{babel}[2001/03/01 v3.7h The Babel package]
\else
  \if@english
    \RequirePackage[english]{babel}[2001/03/01 v3.7h The Babel package]
  \else
    \if@swedish
      \RequirePackage[swedish]{babel}[2001/03/01 v3.7h The Babel package]
    \else
      \RequirePackage[finnish]{babel}[2001/03/01 v3.7h The Babel package]
    \fi
  \fi
\fi
\RequirePackage{geometry}[1999/10/07 v2.2 Page Geometry]
\newcommand{\defaultsettings}{%
  \if@twoside
    \geometry{top=2.5cm, left=2.8cm, right=3.2cm,
              textwidth=15cm, textheight=23cm,
              headheight=0.5cm, headsep=0.5cm}%
  \else
    \geometry{top=2.5cm, left=3.5cm, right=2.5cm,
              textwidth=15cm, textheight=23cm,
              headheight=0.5cm, headsep=0.5cm}%
  \fi
}
\defaultsettings
\setlength{\parindent}{0pt}
\setlength{\parskip}{1ex}
\pagestyle{myheadings}
\markright{}
\pagenumbering{roman}
\newcommand{\onehalfspacing}{%
  \ifcase\@ptsize\relax % 10pt
    \renewcommand{\baselinestretch}{1.25}%
  \or % 11pt
    \renewcommand{\baselinestretch}{1.213}%
  \or % 12pt
    \renewcommand{\baselinestretch}{1.241}%
  \fi
  \normalsize
}
\newcommand{\doublespacing}{
  \ifcase\@ptsize\relax % 10pt
    \renewcommand{\baselinestretch}{1.667}
  \or % 11pt
    \renewcommand{\baselinestretch}{1.618}
  \or % 12pt
    \renewcommand{\baselinestretch}{1.655}
  \fi
  \normalsize
}
\newcommand{\singlespacing}{%
  \renewcommand{\baselinestretch}{1.0}%
  \normalsize
}
\newcommand{\mytableofcontents}{%
  \tableofcontents
  \newpage
  \pagenumbering{arabic}
  \if@emptyfirstpagenumber
    \thispagestyle{empty}
  \fi
}
\newcounter{appendix}
\newcommand{\appendices}{%
  \setcounter{appendix}{1}%
  \newpage
  %\pagestyle{empty}
  \pagestyle{myheadings}
  \markright{}
  \appendix
  \addtocontents{toc}{\protect \contentsline {section}{\enclname}{}}
  \setcounter{page}{0}
}
\newcommand{\internalappendix}[2]{%
  \addtocounter{appendixpage}{\value{page}}%
  \newpage
  \setcounter{page}{1}%
  \section*{\appendixname\ #1. #2}
  \addtocontents{toc}{
    \protect \contentsline {section}{\hspace{0.5cm}#1 #2}{}}
  \addtocounter{appendix}{+1}%
}
\newcommand{\externalappendix}[2]{%
  \addtocontents{toc}{
    \protect \contentsline {section}{\hspace{0.5cm}#1 #2}{}}
  \addtocounter{appendix}{+1}%
}
\newcounter{appendixpage}
\newcommand{\numberofappendixpages}[1][0]{%
  \addtocounter{appendixpage}{#1}%
  \ref{@lastappendixpage}%
}

\AtEndDocument{%
  \addtocounter{appendixpage}{\value{page}}%
  \immediate\write\@auxout{\string
    \newlabel{@lastappendixpage}{{\theappendixpage}{\thepage}}}%
}
\newcommand{\lastpage}{%
  \label{lastpage}%
}

\newcommand{\numberofpages}{%
  \@ifundefined{r@lastpage}{0}{\pageref{lastpage}}%
}
\renewcommand{\and}{%
  \\ % Rivinvaihto.
  \hspace{1em}%
}
\RequirePackage{openbib}
\addto\captionsfinnish{\def\refname{Lähteet}}
\addto\captionsenglish{\def\enclname{Appendices}}
\addto\captionsswedish{\def\enclname{Bilagor}}
\renewenvironment{thebibliography}[1]
     {\section*{\refname
        \@mkboth{\uppercase{\refname}}{\uppercase{\refname}}
        \addcontentsline{toc}{section}{\refname}}%
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\makebox[5em]{}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\arabic{enumiv}}}%
        \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\def\@biblabel#1{#1}
\def\datefinnish{%
  \def\today{\number\day.\number\month.\number\year}}
\newcommand{\level}[1]{\gdef\@level{#1}}
\level{}

\addto\captionsfinnish{%
  \def\dateofacceptance{hyväksymispäivä}%
  \def\grade{arvosana}%
  \def\instructor{arvostelija}%
  \def\uh{HELSINGIN YLIOPISTO}%
  \def\helsinki{Helsinki}%
  \def\ccs{ACM Computing Classification System (CCS):}%
}
\addto\captionsenglish{%
  \def\dateofacceptance{Date of acceptance}%
  \def\grade{Grade}%
  \def\instructor{Instructor}%
  \def\uh{UNIVERSITY OF HELSINKI}%
  \def\helsinki{Helsinki}%
  \def\ccs{ACM Computing Classification System (CCS):}%
}
\addto\captionsswedish{%
  \def\dateofacceptance{godk.datum}%
  \def\grade{vitsord}%
  \def\instructor{bedömare}%
  \def\uh{HELSINGFORS UNIVERSITET}%
  \def\helsinki{Helsingfors}%
  \def\ccs{ACM Computing Classification System (CCS):}%
}

\renewcommand{\maketitle}{\begin{titlepage}%
  \if@gradu
    \texttt{}
  \else
    \hspace*{85mm} \dateofacceptance \hspace{10mm} \grade\
  \fi

  \vspace{10mm}

  \if@gradu
    \texttt{}
  \else
    \hspace*{85mm} \instructor
  \fi

  \vspace*{70mm}

  {\large\bf \@title}

  \vspace{5mm}

  \@author

  \vfill

  \helsinki\ \@date

  \@level

  \uh\\
  \@department

  \end{titlepage}%
}
\def\division{\char'057}

\newcommand{\faculty}[1]{\gdef\@faculty{#1}}
\newcommand{\department}[1]{\gdef\@department{#1}}
\newcommand{\subject}[1]{\gdef\@subject{#1}}
\newcommand{\depositeplace}[1]{\gdef\@depositeplace{#1}}
\newcommand{\additionalinformation}[1]{\gdef\@additionalinformation{#1}}
\newcommand{\numberofpagesinformation}[1]{\gdef\@numberofpagesinformation{#1}}
\newcommand{\classification}[1]{\gdef\@classification{#1}}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}

\faculty{}
\department{}
\subject{}
\depositeplace{}
\additionalinformation{}
\numberofpagesinformation{}
\classification{}
\keywords{}

\addto\captionsfinnish{%
  \faculty{Matemaattis-luonnontieteellinen tiedekunta}
  \department{Tietojenkäsittelytieteen laitos}%
  \subject{Tietojenkäsittelytiede}
}
\addto\captionsenglish{%
  \faculty{Faculty of Science}
  \department{Department of Computer Science}%
  \subject{Computer Science}
}
\addto\captionsswedish{%
  \faculty{Matematisk-naturvetenskapliga fakulteten}
  \department{Institutionen för datavetenskap}%
  \subject{Datavetenskap}
}
\newsavebox{\@abstract}
\newenvironment{@summary}{
  \begin{lrbox}{\@abstract}
    \begin{minipage}[t]{5.95in}
      \setlength{\parskip}{2ex}
}{

      \if \@classification
      \else
        \ccs\ \@classification
      \fi
    \end{minipage}
  \end{lrbox}
  \put(58, 650){\mbox{\usebox{\@abstract}}}
}

\def\abst@small{\fontsize{10}{12}\selectfont}
\def\abst@tiny{\fontsize{6}{7}\selectfont}

\renewenvironment{abstract}{%
\if@twoside
\begin{picture}(580,845)(71,-64)%
\else
\begin{picture}(580,845)(74,-64)%
\fi
\put(58,  784){\makebox(100, 8)[l]{\abst@small\@faculty}}
\put(289, 784){\makebox(100, 8)[l]{\abst@small\@department}}
\put(58,  761){\makebox(100, 8)[l]{\abst@small\@author}}
\put(58,  732){\parbox[l]{450pt}{\renewcommand{\baselinestretch}{.9}\abst@small\@title}}
\put(58,  704){\makebox(100, 8)[l]{\abst@small\@subject}}
\put(58,  681){\makebox(100, 8)[l]{\abst@small\@level}}
\put(212, 681){\makebox(100, 8)[l]{\abst@small\@date}}
\put(366, 681){\makebox(100, 8)[l]{\abst@small\@numberofpagesinformation}}
\put(58,  94) {\makebox(100, 8)[l]{\abst@small\@keywords}}
\put(58,  72) {\makebox(100, 8)[l]{\abst@small\@depositeplace}}
\put(58,  35) {\makebox(100, 8)[l]{\abst@small\@additionalinformation}}
\begin{@summary}\abst@small}
{\end{@summary}
\put(53,30){\framebox(462,786){}}
\put(53,779){\line(1,0){462}}
\put(53,756.24){\line(1,0){462}}
\put(53,722.1){\line(1,0){462}}
\put(53,699.34){\line(1,0){462}}
\put(53,676.58){\line(1,0){462}}
\put(53,67){\line(1,0){462}}
\put(53,89.76){\line(1,0){462}}
\put(53,112.52){\line(1,0){462}}
\put(284,779){\line(0,1){37}}
\put(207,676.58){\line(0,1){22.76}}
\put(361,676.58){\line(0,1){22.76}}
\put(58,809){\makebox(150,6)[l]{
\tiny Tiedekunta --- Fakultet --- Faculty}}
\put(289,809){\makebox(100,6)[l]{\abst@tiny Laitos --- Institution --- Department}}
\put(58,773){\makebox(100,5)[l]{\abst@tiny Tekij\"a --- F\"orfattare --- Author}}
\put(58,750){\makebox(100,5)[l]{\abst@tiny Ty\"on nimi --- Arbetets titel --- Title}}
\put(58,716){\makebox(100,5)[l]{\abst@tiny Oppiaine --- L\"aro\"amne --- Subject}}
\put(58,693){\makebox(100,5)[l]{\abst@tiny Ty\"on laji --- Arbetets art --- Level}}
\put(212,693){\makebox(100,5)[l]{\abst@tiny Aika --- Datum --- Month and year }}
\put(366,693){\makebox(100,5)[l]{\abst@tiny Sivum\"a\"ar\"a --- Sidoantal ---
    Number of pages}}
\put(58,670){\makebox(100,5)[l]{\abst@tiny Tiivistelm\"a --- Referat --- Abstract}}
\put(58,106){\makebox(100,5)[l]{\abst@tiny Avainsanat --- Nyckelord --- Keywords}}
\put(58,83){\makebox(100,5)[l]{\abst@tiny S\"ailytyspaikka --- F\"orvaringsst\"alle
--- Where deposited}}
\put(58,61){\makebox(100,5)[l]{\abst@tiny Muita tietoja --- \"ovriga uppgifter
--- Additional information}}
\put(53,821){\makebox(100,8)[l]{\abst@small HELSINGIN YLIOPISTO --- HELSINGFORS
UNIVERSITET --- UNIVERSITY OF HELSINKI}}
\end{picture}

\pagestyle{empty}
\newpage
}

\endinput
%%
%% End of file `tktltiki.cls'.
