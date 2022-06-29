\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{MathAppl18}[2018/03/10 Mathematica Applicanda Format Class]
\LoadClass[11pt,twoside,onecolumn,leqno,final]{article}
%\LoadClass[10pt,twoside,onecolumn,leqno,final]{report} % do testów spisu treści - PS
\RequirePackage{fancyhdr}
\RequirePackage[paperwidth=168mm,paperheight=238mm,top=18mm,bottom=12mm,left=24mm,right=16mm,twoside]{geometry}
\RequirePackage[thmmarks]{ntheorem}

%%PS
\newif\ifwww
\wwwtrue %% do przerobienia na opcję stylu
\ifwww
\oddsidemargin-4mm
\evensidemargin\oddsidemargin
\ExecuteOptions{11pt,oneside,onecolumn,leqno,final}
\else
\ExecuteOptions{11pt,twoside,onecolumn,leqno,final}
\fi
%%endPS
\ProcessOptions



\newcounter{fact}
\newcounter{question}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                    Submission information                         %%
%%                      Inserted by editor                           %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\newcommand     {\received}     [1] {\def\@receivedDate{#1}} % bo już zdefiniowane --PS
\newcommand     {\lastrevision} [1] {\def\@revisionDate{#1}}
\newcommand     {\firstpage}    [1] {\def\@thefirstpage{#1}}
\newcommand     {\volume}       [1] {\def\@thevolume{#1}}
\newcommand     {\fasc}         [1] {\def\@thefasc{#1}}
\newcommand     {\years}        [1] {\def\@theyears{#1}}
\newcommand     {\pages}        [1] {\def\@thepages{#1}}
%%Matematyka Stosowana%%KSz %% i właczone PS
\newcommand     {\volumeMS}       [1] {\def\@thevolumeMS{#1}}
\newcommand     {\numberMS}         [1] {\def\@thenumberMS{#1}}
\newcommand     {\secnameMS}         [1] {\def\@thesecnameMS{\large\sc #1}}
%% end PS
\newcommand     {\LogoG}         [1] {\def\@theLogoG{\large\sc #1}}
\newcommand     {\LogoGMS}         [1] {\def\@theLogoGMS{\large\sc #1}}
%----------------------------------------ntheorem.std-------------------------------------------------
\theoremnumbering{arabic}
\theoremstyle{plain}
\RequirePackage{latexsym}
\theoremsymbol{\ensuremath{_\Box}}
\theorembodyfont{\itshape}
\theoremheaderfont{\normalfont\bfseries}
\theoremseparator{}
\newtheorem{Theorem}{Theorem}
\newtheorem{theorem}{Theorem}
\newtheorem{Satz}{Satz}
\newtheorem{satz}{Satz}
\newtheorem{Proposition}{Proposition}
\newtheorem{proposition}{Proposition}
\newtheorem{Lemma}{Lemma}
\newtheorem{lemma}{Lemma}
\newtheorem{Korollar}{Korollar}
\newtheorem{korollar}{Korollar}
\newtheorem{Corollary}{Corollary}
\newtheorem{corollary}{Corollary}

\theorembodyfont{\upshape}
\newtheorem{Example}{Example}
\newtheorem{example}{Example}
\newtheorem{Beispiel}{Beispiel}
\newtheorem{beispiel}{Beispiel}
\newtheorem{Bemerkung}{Bemerkung}
\newtheorem{bemerkung}{Bemerkung}
\newtheorem{Anmerkung}{Anmerkung}
\newtheorem{anmerkung}{Anmerkung}
\newtheorem{Remark}{Remark}
\newtheorem{remark}{Remark}
\newtheorem{Definition}{Definition}
\newtheorem{definition}{Definition}

\theoremstyle{nonumberplain}
\theoremheaderfont{\scshape}
\theorembodyfont{\normalfont}
\theoremsymbol{\ensuremath{_\blacksquare}}
\RequirePackage{amssymb}
\newtheorem{Proof}{Proof}
\newtheorem{proof}{Proof}
\newtheorem{Beweis}{Beweis}
\newtheorem{beweis}{Beweis}
\qedsymbol{\ensuremath{_\blacksquare}}
\theoremclass{LaTeX}

% Warunki do DOI % styczeń 2014
\newif\ifDOIf % DOI w stopce
\DOIffalse
\newif\ifDOIt % DOI w części tytułowej
\DOIttrue
%%% Zamrożone 1lut14




%-----------------------------------------pagestyles----------------------------------------------------

\if@twoside
  \def\ps@doi{%
  \let\@oddhead\@empty\let\@evenhead\@empty
%      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
%      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
\def\@oddfoot{\footnotesize\makebox[0pt][l]{\doi{\doinum}}\hfil\thepage\hfil}
\let\@evenfoot\@empty}
\else % chwilowe, do ustaleďż˝
  \def\ps@doi{%
  \let\@oddhead\@empty\let\@evenhead\@empty
%      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
%      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
\def\@oddfoot{\footnotesize\makebox[0pt][l]{\doi{\doinum}}\hfil\thepage\hfil}
\let\@evenfoot\@empty}
\fi


%\pagestyle{empty} % 8 sty 2014

\pagestyle{doi} % 8 sty 2014



\fancyhead[LE]{\thepage}
\fancyhead[RO]{\thepage}
\fancyhead[CE]{\@shorttitle}
\fancyhead[CO]{\it \footnotesize \@head@author}
\fancyfoot[L]{}
\fancyfoot[C]{}
\fancyfoot[R]{}


\renewenvironment{thebibliography}[1]
     {
 
      {\par\vspace{0.5cm} \centerline{\scshape \refname}}%References
   
      \@mkboth{}{}%
      \fontsize{8pt}{10pt}\selectfont
      \list{\small\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}
}
 %
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}  
}

\let\@xp=\expandafter
\let\@nx=\noexpand
\def\@oparg#1[#2]{\@ifnextchar[{#1}{#1[#2]}}
\long\def\@ifempty#1{\@xifempty#1@@..\@nil}
\long\def\@xifempty#1#2@#3#4#5\@nil{%
  \ifx#3#4\@xp\@firstoftwo\else\@xp\@secondoftwo\fi}
\long\def\@ifnotempty#1{\@ifempty{#1}{}}

\def\php{\char`\~}%
%--------------------------------------adresses ------------------------------------------------

\let\addresses\@empty 
\let\@author\@empty 
\let\@head@author\@empty 
\let\@thanks\@empty
\let\@received\@empty

\let\@dedicated\@empty
%% PS
\let\@contents@author\@empty
%% end PS

\newcommand{\afs}{\fontsize{7pt}{9pt}\selectfont \scshape}% fontsize   for addresses


\newcommand{\received}[2][]{%
	\let\@received\@empty
  {\g@addto@macro\@received{ (Received: \,\fontfamily{cmr}\selectfont #2}}%
  \@ifempty{#1}{\g@addto@macro\@received{)} }
  {\g@addto@macro\@received{; revised: \,\fontfamily{cmr}\selectfont #1)}}
}
\newcommand{\receivedPL}[2][]{%
	\let\@received\@empty
  {\g@addto@macro\@received{ (Zg\l{}oszona: \, #2}}%
  \@ifempty{#1}{\g@addto@macro\@received{)} }
  {\g@addto@macro\@received{; Wersja ko\'ncowa: \, #1)}}
}


\newcommand{\dedicated}[1]{%
	\let\@dedicated\@empty
  \@ifnotempty{#1}{
                   \g@addto@macro\@dedicated{\vspace{-6mm}
	\begin{center}(%
		\fontsize{10}{12}\fontfamily{cmm}\selectfont {\it
	  #1}%
	  \fontsize{11}{12}\fontfamily{cmr}\selectfont %
)
	\end{center}}
                  }
}%


%%PS
\newcommand{\city}[1]{%
  \@ifnotempty{#1}{\g@addto@macro\@author{ \rm({#1})}}%
}
%%endPS

%% PS 11lis12
\newif\iftpauthor % title page author

\renewcommand{\author}[2][]{%
  \@ifempty{#1}
  {
     	\@ifnotempty{#2}
     	{
  	    	\ifx\@empty\@head@author \g@addto@macro\@head@author{#2}
                                                                                       \g@addto@macro\@contents@author{#2} %%PS
  		    \else	\g@addto@macro\@head@author{, {#2}}
                                                \g@addto@macro\@contents@author{, {#2}} %%PS
  		    \fi
     	}
  }
  {
    \ifx\@empty\@head@author \g@addto@macro\@head@author{#1}
                                                                    \g@addto@macro\@contents@author{#1} %% PS
  	\else	\g@addto@macro\@head@author{, {#1}}
                        \g@addto@macro\@contents@author{, {#1}} %% PS
  	\fi
  }
  \@ifnotempty{#2}
  {
  	\g@addto@macro\addresses{\vspace{1mm}\par{\afs{#2}}}
  	\ifx\@empty\@author \g@addto@macro\@author{\scshape #2}
%  	\else \g@addto@macro\@author{\scshape, #2} %%PS
\else \g@addto@macro\@author{\scshape\par  #2} 
  	\fi
  }
}



\newcommand{\affiliation}[1]{%
  \@ifnotempty{#1}{\g@addto@macro\addresses{\par\afs{#1}}}%
}

\newcommand{\address}[1]{%
  \@ifnotempty{#1}{\g@addto@macro\addresses{\par{\afs{#1}}}}%
}



\newcommand{\urladdr}[1]{%
  \@ifnotempty{#1}{\g@addto@macro\addresses{\par{\afs{\itshape URL:\,\,}{\fontfamily{cmtt}\selectfont \upshape #1}}}}%
}

\newcommand{\email}[1]{%
  \@ifnotempty{#1}{\g@addto@macro\addresses{\par{\afs{\itshape E-mail:\,\,}{\fontfamily{cmtt}\selectfont \upshape #1}}}}%
}

%% PS
%\renewcommand{\thanks}[1]{%
%	\let\@thanks\@empty
 % \@ifnotempty{#1}{
%  	\g@addto@macro\@thanks{\par #1}
%  	\renewcommand{\thefootnote}{\fnsymbol{footnote}}
% 		\g@addto@macro\@author{\footnote{#1}}
 % }%
%}

\renewcommand{\thanks}[1]{%
	\let\@thanks\@empty
  \@ifnotempty{#1}{
  	\g@addto@macro\@thanks{\par #1}
  	\renewcommand{\thefootnote}{\fnsymbol{footnote}}
 		\g@addto@macro\@author{$^*$\footnotetext{$^*$ #1}}
  }%
}
%% end PS

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%PS cze2013
\newcommand\comm[1]{%
\let\@comm\@empty
  \@ifnotempty{#1}{\g@addto@macro\addresses{\vspace{3mm}\par{\afs{\itshape Communicated by:\,\,}{\selectfont \upshape #1}}}}%
}
%% end PS


%KSz
\renewcommand{\thefootnote}{\arabic{footnote}}
  \setcounter{footnote}{0}
%KSz
%% skomentowane do wielu artykuďż˝ďż˝w -- PS
%\AtEndDocument{
%\addresses
%\par{{\vspace{4mm}\centerline {
%\textnormal{\@received}
%}}}
%\begin{center}\line(1,0){50}\end{center}
%}

%% end skomentowane -- PS

%-------------------------------------logo-----------------------------------------------


\newcount\lp \lp=1

\let\@logo\@empty 

\newcommand{\logo}[3]{
\gdef\@vol{#1}
\gdef\@number{#2}

\let\@logo\@empty 
\g@addto@macro\@logo
{{
%\par \fontfamily{pbk}\fontsize{6pt}{8pt}\selectfont ANNALES SOCIETATIS MATHEMATICAE POLONAE\vspace{-0.4mm}
%\par \fontfamily{pbk}\fontsize{6pt}{8pt}\selectfont Series III: { MATHEMATICAE APPLICANTUR}\vspace{-0.4mm}
%\par \fontfamily{pbk}\fontsize{6pt}{8pt}\selectfont ROCZNIKI POLSKIEGO TOWARZYSTWA MATEMATYCZNEGO\vspace{-0.4mm}
%\par \fontfamily{pbk}\fontsize{6pt}{8pt}\selectfont Seria III: { MATEMATYKA STOSOWANA}\vspace{-2.0mm}
%% PS
\ifwww
\DOIttrue % 21sty14
\par \fontfamily{pbk}\fontsize{6pt}{8pt}\selectfont { MATHEMATICA APPLICANDA}\hfill \raisebox{-25pt}[0pt][0pt]{\@theLogoG}\vspace{-0.4mm} %% Poprawiďż˝em z -2.0 mm, ale do ustalenia -- PS
%{\par \fontsize{5pt}{7pt}\selectfont Vol. \@thevolume (\@thefasc ) \@theyears, p. \@thepages \vspace{3cm}} %Volume, Number, Year, Pages (\@thefasc) (\@theyear), \@thepages
{\par \fontsize{5pt}{7pt}\selectfont Vol. \@thevolume (\@thefasc ) \@theyears, p. \@thepages  %Volume, Number, Year, Pages (\@thefasc) (\@theyear), \@thepages
%%%%%%%% % 8 sty 2014
\ifDOIt
\par\fontsize{6pt}{8pt}\selectfont %%KSz
\vspace{-1.4mm} %%KSz
\doi{\doinum}%%\hfill \makebox[0.2\textwidth][r]{\@theLogoG}
\fi % 8 sty 2014
\vspace{1cm}
\else
\par \fontfamily{pbk}\fontsize{6pt}{8pt}\selectfont { MATEMATYKA STOSOWANA [MATHEMATICA APPLICANDA \@thevolume\vspace{1.0mm} (\@thefasc )]}\hfill \raisebox{-25pt}[0pt][0pt]{\@theLogoGMS}\vspace{-1.0mm}
{\par \fontsize{5pt}{7pt}\selectfont Vol. \@thevolumeMS /\@thenumberMS\vspace{1.0mm} (\@theyears ), p. \@thepages \vspace{5mm}} 
{\par\hfill \fontfamily{pbk}\fontsize{6pt}{8pt}\selectfont { \@thesecnameMS }\vspace{25mm}
%%%%%%%% % 8 sty 2014
\ifDOIt
\par\fontsize{6pt}{8pt}\selectfont %%KSz
\vspace{-1.4mm} %%KSz
\doi{\doinum}
\fi % 8 sty 2014
}
\fi
}}
}
} % 26sty14
%% end PS, wg wzorca KSz

%---------------------------------------title-------------------------------------------------------------

\let\@title\@empty 
\let\@shorttitle\@empty 

\renewcommand{\title}[2][]{
\let\@title\@empty 
\let\@shorttitle\@empty 
\@ifnotempty{#1}{\g@addto@macro\@shorttitle{\it \footnotesize #1}}%
\@ifnotempty{#2}{\g@addto@macro\@title{#2}}%
}

%% moje modyfikacje, teraz skomentowane -- PS
%-------------------------------------------sections----------------------------------------------
%\setcounter{section}{0}
%\renewcommand{\section}[1]{\stepcounter{section}\vspace{3mm}\par{\bf \thesection. #1\,\,}%}%%PS
% \def\@currentlabel{\thesection}} %% PS

%\setcounter{subsection}{0}
%\renewcommand{\subsection}[1]{\refstepcounter{subsection}\vspace{3mm}\par{\bf \thesubsection. #1\,\,}%}%%PS
% \def\@currentlabel{\thesubsection}} %% PS

%\setcounter{subsubsection}{0}
%\renewcommand{\subsubsection}[1]{\stepcounter{subsubsection}\vspace{3mm}\par{\bf \thesubsubsection. #1\,\,}}

%% end moje modyfikacje -- PS
  

%-------------------------------------------sections----------------------------------------------
\setcounter{section}{0}
%\renewcommand{\section}[1]{\stepcounter{section}\vspace{3mm}\par{\bf \thesection. #1\,\,}} % PS
\renewcommand{\section}[1]{\refstepcounter{section}\vspace{3mm}\par{\bf \thesection. #1\,\,}} % PS

\setcounter{subsection}{0}
%\renewcommand{\subsection}[1]{\stepcounter{subsection}\vspace{3mm}\par{\bf \thesubsection. #1\,\,}} % PS
\renewcommand{\subsection}[1]{\refstepcounter{subsection}\vspace{3mm}\par{\bf \thesubsection. #1\,\,}} % PS


\setcounter{subsubsection}{0}
% \renewcommand{\subsubsection}[1]{\stepcounter{subsubsection}\vspace{3mm}\par{\bf \thesubsubsection. #1\,\,}} % PS
\renewcommand{\subsubsection}[1]{\refstepcounter{subsubsection}\vspace{3mm}\par{\bf \thesubsubsection. #1\,\,}} % PS




%--------------------------------------titlepage---------------------------------------------------------------

\AtBeginDocument{
\setcounter{section}{0}
\setcounter{subsection}{0}
\setcounter{subsubsection}{0}
\setcounter{equation}{0}
\setcounter{footnote}{0}
\setcounter{theorem}{0}
\setcounter{theorem}{0}
\setcounter{lemma}{0}
\setcounter{proposition}{0}
\setcounter{fact}{0}
\setcounter{corollary}{0}
\setcounter{example}{0}
\setcounter{remark}{0}
\setcounter{definition}{0}
\setcounter{question}{0}
\setcounter{assumption}{0}

\pagestyle{fancy}

\thispagestyle{empty} % 1 lut 2014
%\thispagestyle{doi} % % 8 sty 2014
\@logo
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\par{
    {
%      \fontfamily{cmr}\fontsize{11pt}{12pt}\selectfont \@author % PS 11lis12
\iftpauthor  \fontfamily{cmr}\fontsize{11pt}{12pt}\selectfont \@author  \fi
    }
    }
  \renewcommand{\thefootnote}{\arabic{footnote}}
  \setcounter{footnote}{0}
  \par{\vspace{3mm}
  \begin{quote}
  \begin{center}
    {\fontfamily{cmr}\fontsize{14pt}{16pt}\selectfont
     \@title}
  \end{center}
  \end{quote}\vspace{3mm}
  }
\par{
\@dedicated
}
\vspace{6mm}

}

\newif\ifPolski %% PS 18lis12
\Polskifalse

%-------------------------------------------subjclass keywords----------------------------------------------------------
\let\@subjclass\@empty
\let\@keywords\@empty

\newcommand{\subjclass}[2][]{
\let\@subjclass\@empty
\@ifempty{#1}
{
  \@ifnotempty{#2}
  {
     \g@addto@macro\@subjclass{
                                \textit{\ifPolski Klasyfikacja tematyczna AMS (2010): \else 2010 Mathematics Subject Classification:  $\;$ \fi}
#2.
                              }
  }
}
{%else
	\g@addto@macro\@subjclass{ \textit{#1} }
  \@ifnotempty{#2}
  {
     \g@addto@macro\@subjclass{
                              \textit{\ifPolski Klasyfikacja tematyczna AMS (2010): \else Mathematics Subject Classification:  $\;$\fi}
#2.
                              }
  }%
}
}

\newcommand{\keywords}[1]{
\let\@keywords\@empty
\@ifnotempty{#1}{\g@addto@macro\@keywords{\textit{\ifPolski S{\l}owa kluczowe: \else Key words and phrases: \fi }#1.}}
}

%-------------------------------------------abstract----------------------------------------------------------
\renewenvironment{abstract}
{\begin{quote}\fontsize{8pt}{10pt}\selectfont\textbf{\abstractname}}
{\vspace{0.2cm}\newline\@subjclass\vspace{0.2cm}\newline\@keywords\vspace{1cm} \end{quote}}


%---------------------------------------theorem style-----------------------------------------------------
\newtheoremstyle{com}%
  {\vspace{2mm}\item[\hskip\labelsep \theorem@headerfont ##1\ ##2\theorem@separator]}%
  {\vspace{2mm}\item[\hskip\labelsep \theorem@headerfont ##1\ ##2\ (##3)\theorem@separator]}

\theoremheaderfont{\scshape}
\theoremstyle{com}
\theorembodyfont{\it}
\renewtheorem{theorem}{Theorem}[section]
\renewtheorem{lemma}[theorem]{Lemma}
\renewtheorem{proposition}[theorem]{Proposition}
\newtheorem{fact}[theorem]{Fact}
\renewtheorem{corollary}[theorem]{Corollary}
\theorembodyfont{\rm}
\renewtheorem{example}[theorem]{Example}
\renewtheorem{remark}[theorem]{Remark}
\renewtheorem{definition}[theorem]{Definition }
\newtheorem{question}[theorem]{Question}
\newtheorem{examples}[theorem]{Examples}
\newtheorem{assumption}{Assumption}


%---------------------------------------acknowledgements --------------------------------------------------
\newenvironment{acknowledgement}
{{\bf Acknowledgement.}}{}

% --------------------------------------Polish environments -------------------------------------------------
\theoremheaderfont{\scshape}
\theoremstyle{stos}
\theorembodyfont{\it}
\newtheorem{twierdzenie}{Twierdzenie}[section]
\newtheorem{lemat}[twierdzenie]{Lemat}
\newtheorem{propozycja}[twierdzenie]{Propozycja}
\newtheorem{fakt}[twierdzenie]{Fakt}
\newtheorem{wniosek}[twierdzenie]{Wniosek}
\theorembodyfont{\rm}
\newtheorem{przyklad}[twierdzenie]{Przyk\l{}ad}
\newtheorem{uwaga}[twierdzenie]{Uwaga}
\newtheorem{definicja}[twierdzenie]{Definicja }
\newtheorem{pytanie}[twierdzenie]{Pytanie}
\newtheorem{przyklady}[twierdzenie]{Przyk\l{}ady}
\newtheorem{zalozenia}{Za\l{}o\.zenia}
%% 
\newenvironment{dowod}
{{\sc Dowďż˝d.}}{}

%------Dzialy-------------------------- %% PS
%% PS
\def\Dzial#1{\rightline{
\begin{tabular}{l}
#1
\end{tabular}
}}
%% end PS


%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% PS

%% Moje, skomentowane -- PS
\newcounter{chapter}
%\let\c@section=\undefined
%\newcounter {section}
%\renewcommand \thesection {\@arabic\c@section}
%\let\c@subsection=\undefined
%\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
%\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
%\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
%\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}

%% end moje, skomentowane -- PS

\newcommand\chapter{%\if@openright\cleardoublepage\else\clearpage\fi %% PS
\clearpage %% PS
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}

%% PS
\def\Chapter{%
\addcontentsline{toc}{subsection}{{\@contents@author}, {\@title} }
}
%% end PS


\renewcommand{\tableofcontents}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
   \chapter*{\contentsname
%Spis tre\'sci \newline
%\bigskip
     %   \@mkboth{%
        %   \MakeUppercase\contentsname}{\MakeUppercase\contentsname}
%
}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
}
\renewcommand{\contentsname}{Spis treďż˝ci}

\def\ClearArt{\clearpage
\let\addresses\@empty 
\let\@author\@empty 
\let\@head@author\@empty 
\let\@thanks\@empty
\let\@received\@empty

\let\@dedicated\@empty
%% PS
\let\@contents@author\@empty
\setcounter{section}{0}
%% end PS
}

% DOI  i in.
\def\repo{http://wydawnictwa.ptm.org.pl/index.php/matematyka-stosowana/article/viewArticle}
%
\newcommand*{\doi}[1]{\href{http://dx.doi.org/#1}{ doi: #1}}
\newcommand*{\EuDML}[1]{\href{https://eudml.org/doc/#1}{ {\cal Eu}DML: #1}}
\newcommand*{\MR}[1]{\href{http://www.ams.org/mathscinet-getitem?mr=#1&return=pdf}{MR #1}}
\newcommand*{\ZBL}[1]{\href{http://www.zentralblatt-math.org/zmath/en/advanced/?q=an:#1&format=complete}{Zbl #1}}
\newcommand*{\ZBLid}[1]{\href{https://zbmath.org/?q=ai:#1}{ZBLid:#1}}   %%<-definicja KSz
\newcommand*{\JFM}[1]{\href{http://www.zentralblatt-math.org/zmath/en/advanced/?q=an:#1&format=complete}{JFM #1}}

\newcommand*{\eLIBru}[1]{\href{https://elibrary.ru/item.asp?id=#1}{eLibrary.ru #1}}

\newcommand*{\arXiv}[1]{\href{http://arxiv.org/abs/#1}{arXiv:#1}} 
\newcommand*{\PubMed}[1]{\href{http://www.ncbi.nlm.nih.gov/pubmed/?term=PMID\%3A+++++#1+++++[PubMed]}{PMID: #1 [PubMed]}}

%%% PS, zakďż˝adamy hyperref https://eudml.org/doc/186250



\def\Poczatek{\setcounter{section}{0}
\setcounter{subsection}{0}
\setcounter{subsubsection}{0}
\setcounter{equation}{0}
\setcounter{footnote}{0}
\setcounter{theorem}{0}
\setcounter{theorem}{0}
\setcounter{lemma}{0}
\setcounter{proposition}{0}
\setcounter{fact}{0}
\setcounter{corollary}{0}
\setcounter{example}{0}
\setcounter{remark}{0}
\setcounter{definition}{0}
\setcounter{question}{0}
\setcounter{assumption}{0}

\pagestyle{fancy}

\ifDOIt
%\thispagestyle{empty}  % 8 sty 2014
\thispagestyle{empty}
\else
\thispagestyle{doi} % 8 sty 2014
\fi % 1lut14
\@logo
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\par{
    {
      \fontfamily{cmr}\fontsize{11pt}{12pt}\selectfont \@author
    }
    }
  \renewcommand{\thefootnote}{\arabic{footnote}}
  \setcounter{footnote}{0}
  \par{\vspace{3mm}
  \begin{quote}
  \begin{center}
    {\fontfamily{cmr}\fontsize{14pt}{16pt}\selectfont
     \@title}
  \end{center}
  \end{quote}\vspace{3mm}
  }
\par{
\@dedicated
}
\vspace{6mm}
\label{FirstPage} %% PS
\normalfont %% PS
} % end\Poczatek

\def\Koniec{\addresses
\par{{\vspace{4mm}\centerline {
\textnormal{\@received}
}}}
\begin{center}\line(1,0){50}\end{center}
\label{FirstPage} %% PS
}

% PS
\newif\ifpolish
\polishfalse

\def\checknames{
\ifpolish
\def\abstractname{SSS} %% Sztuczne, przygotowane do rozstania z bablem -- PS
\else
\def\abstractname{AAA}
\fi}

\polishtrue
%%endPS

%%%%%% inicjalizacja tych cudďż˝w z hyperref

\def\Hy@colorlink#1{%
      \begingroup
      \HyColor@UseColor#1%
    }%
    \def\Hy@endcolorlink{\endgroup}%




%% PS
\AtBeginDocument{\label{FirstPage}}

\AtEndDocument{\label{LastPage}}

%% end PS


\endinput