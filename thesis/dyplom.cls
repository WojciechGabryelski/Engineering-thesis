﻿\NeedsTeXFormat{LaTeX2e} % dla pełnej jasności
\ProvidesClass{dyplom} % jedyny niezbędny element klasy :-)
%% Opcje
% magister – strona tytułowa magisterska
% inzynier – strona tytułowa inzynierska
% archiwum – wersja do archiwum (wedlug zalecen ze strony)
% druk – wersja do druku (dla promotora)
% en - wersja angielska
\newif\if@archiwum
\newif\if@druk
\newif\if@inzynier
\newif\if@magister
\newif\if@ramka
\newif\if@en
\@inzyniertrue
\@archiwumtrue
\@ramkafalse
\@enfalse
\DeclareOption{archiwum}{\@archiwumtrue\@drukfalse}
\DeclareOption{druk}{\@druktrue\@archiwumfalse}
\DeclareOption{inzynier}{\@inzyniertrue\@magisterfalse}
\DeclareOption{magister}{\@magistertrue\@inzynierfalse}
\DeclareOption{ramka}{\@ramkatrue}
\DeclareOption{en}{\@entrue}
\DeclareOption*{%                               wszystkie opcje
  \PassOptionsToClass{\CurrentOption}{mwrep}} % mają być przekazywane
                                              % do klasy mwrep
\ProcessOptions
\if@archiwum
\LoadClass[12pt,openany,doublesided]{mwrep} % ładujemy klasę bazową, do opcji
                                % podanych w dokumencie dodajemy 12pt
                                % i openany oraz doublesided
\fi
\if@druk
\LoadClass[12pt]{mwrep} % ładujemy klasę bazową, do opcji
                                % podanych w dokumencie dodajemy 12pt
\fi
\if@en
\else
\RequirePackage[OT4]{polski}      % odpowiednik \usepackage
\fi
%\RequirePackage[utf8]{inputenc} % to właściwie powinno być na zewnątrz
\RequirePackage{array,graphicx} 
\if@archiwum
\RequirePackage[a4paper,left=25mm,right=25mm,top=25mm,bottom=25mm]{geometry}
\fi
\if@druk
\RequirePackage[onehalfspacing]{setspace}
\RequirePackage[a4paper,left=35mm,right=25mm,top=25mm,bottom=25mm]{geometry}
\fi
\RequirePackage{tgtermes}
\RequirePackage[absolute]{textpos} % to na potrzeby strony tytułowej
\RequirePackage{xcolor} % na potrzeby strony tytułowej
\def\ifundefined#1{\expandafter\ifx\csname#1\endcsname\relax}
%%% Tytularia
%\renewcommand*\sectsettings{}
%% chapter -- pierwszy stopień
\SetSectionFormatting[breakbefore,wholewidth]{chapter}
        {56\p@}
        {\FormatBlockHeading{\Large\bfseries\MakeUppercase}}
        {24\p@}
%% section -- drugi stopień
\SetSectionFormatting{section}
        {24\p@\@plus5\p@\@minus2\p@}
        {\FormatHangHeading{\normalsize\bfseries\MakeUppercase}}
        {10\p@\@plus3\p@}
%% subsection -- ewentualny trzeci poziom
\SetSectionFormatting{subsection}
        {16\p@\@plus4\p@\@minus1\p@}
        {\FormatHangHeading{\small\rmfamily\bfseries}}
        {6\p@\@plus2\p@}
\SetSectionFormatting{subsubsection}
		{16\p@\@plus4\p@\@minus1\p@}
		{\FormatHangHeading{\footnotesize\rmfamily\bfseries}}
		{6\p@\@plus2\p@}

%%% Floaty

%%% Strona tytułowa
\def\author#1{\gdef\@author{#1}}
\def\@author{\@latex@error{No \noexpand\author given}\@ehc}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\@supervisor{\@latex@error{No \noexpand\supervisor given}\@ehc}
\def\consultant#1{\gdef\@consultant{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\fieldofstudy#1{\gdef\@fieldofstudy{#1}}
\gdef\@fieldofstudy{INF}
\def\specialisation#1{\gdef\@specialisation{#1}}
\def\rodzajpracy#1{\gdef\@rodzajpracy{#1}}
\gdef\@rodzajpracy{\@latex@warning@no@line{No \noexpand\rodzajpracy given}\@ehc}
\def\keywords#1{\gdef\@keywords{#1}}
\gdef\@keywords{\@latex@error{No \noexpand\keywords given}\@ehc}

% Tłumaczenia
\if@en
\def\@university{Wrocław University of Science and Technology}
\def\@faculty{Faculty of Information and Communication Technology}
%
\def\@dkierunek{Field of study}
\def\@dspecialisation{Speciality}
\def\@dpromotor{Supervisor}
\def\@dconsultant{Consultant}
\def\@dskluczowe{Keywords}
\def\dlistoflistings{List of Listings}
\def\dappendix{Appendix}
\renewcommand\figurename{Fig.}
\else
\def\@university{Politechnika Wrocławska}
\def\@faculty{Wydział Informatyki i Telekomunikacji}
%
\def\@dkierunek{Kierunek}
\def\@dspecialisation{Specjalność}
\def\@dpromotor{Opiekun pracy}
\def\@dconsultant{Konsultant}
\def\@dskluczowe{Słowa kluczowe}
\def\dlistoflistings{Spis listingów}
\def\dappendix{Dodatki}
\renewcommand\figurename{Rys.}
\fi

%
\RequirePackage{microtype}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{scrextend}
\let\lll\undefined
\RequirePackage{amsmath,amsfonts,amssymb,amsthm,stmaryrd}
\RequirePackage{enumerate}
\RequirePackage{afterpage}
\RequirePackage{multirow}
\RequirePackage{enumitem}
\RequirePackage{array}
\RequirePackage{float}
\RequirePackage{xstring,xifthen}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}
\RequirePackage{stackengine} 
\RequirePackage{tikz}
\RequirePackage{arydshln}
\definecolor{col1}{RGB}{35,31,32}
\definecolor{col2}{RGB}{255,255,255}
\def\dotfill#1{\cleaders\hbox to #1{.}\hfill}
\newcommand\dotline[2][.5em]{\leavevmode\hbox to #2{\dotfill{#1}\hfil}}
\def\dlugoscmaxa{450}  
\def\dlugoscmaxb{500}
\def\dlugoscmaxc{150}
\def\dlugoscmaxd{29}
\def\dlugoscmaxe{32}
\def\dlugoscmaxf{36} 
\def\dlugoscmaxg{80}
\RequirePackage{etoolbox}

\renewcommand\maketitle{%
	\pagenumbering{gobble}%
	\thispagestyle{empty}%
	\hypersetup{pageanchor=false}%
	\newgeometry{left=2cm, right=2cm, top=2.5cm, bottom=2.5cm}
    {%\fontfamily{mdugm}\selectfont % switch font to Garamond - WIT requirement
	\begin{center}
		\textbf{\LARGE\@university}
		
		\vspace{.2cm}\textbf{\Large \@faculty}
		
		\vspace{-.3cm}\rule{\textwidth}{.1pt}
	\end{center}

    \vspace{.3cm}
	\begin{flushleft}
		\begin{minipage}[t]{\textwidth/2}
			\begin{tabular}{ l l }
				\@dkierunek: & \textbf{\@fieldofstudy} \\
				\ifdef{\@specialisation}{\@dspecialisation: & \textbf{\@specialisation}}{}
			\end{tabular}
		\end{minipage}
	\end{flushleft}
	
	\vspace{2cm}
	\begin{center}
		{\Huge	\if@en%
					\MakeUppercase{\if@inzynier Engineering \fi \if@magister Master \fi thesis }%
					\else%
					\MakeUppercase{Praca dyplomowa}
					
					\vspace{.4em}\MakeUppercase{\if@inzynier{inżynierska}\fi\if@magister{magisterska}\fi}%
      				\fi}
      			
		\vspace{2cm plus .3fill}

        {\huge \textbf{\@title}}\\
		
		\vspace{1.5cm}{\huge\@author}
		
		\vspace{3cm}{\large \@dpromotor}
		
		\vspace{.2cm}{\large\bfseries\@supervisor}

		\ifdef{\@consultant}{% 
			\vspace{1cm}{\normalsize \@dconsultant}
	
			\vspace{.2cm}{\large\@consultant}}{}
	\end{center}
	\vspace{\fill}
	
	\begin{flushleft}
		\normalsize \@dskluczowe: \@keywords
	\end{flushleft}
	
	\vspace{.2cm}
	\begin{center}   
		\rule{\textwidth}{.2pt}
		
		\vspace{-.2cm}\large \MakeUppercase{Wrocław} \the\year
	\end{center}
    }
\clearpage
\if@druk%
\hbox{}
\cleardoublepage
\fi
\restoregeometry
}

\renewcommand\abstract[2]{
% Pomijam Streszczenie w spisie treści
\hypersetup{pageanchor=true}
\addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
\begingroup
	\chapter*{\if@en Abstract \else Streszczenie \fi} % po polsku
	#1
	% Abstract pojawił się na tej samej stronie co Streszczenie
	\renewcommand{\cleardoublepage}{}
	\renewcommand{\clearpage}{}
	\chapter*{\if@en Streszczenie \else Abstract \fi} % ...i to samo po angielsku
	#2
\endgroup
\addtocontents{toc}{\protect\setcounter{tocdepth}{2}}

\clearpage
\if@druk%
\hbox{}
\cleardoublepage
\fi
\pagenumbering{arabic}
}


% patch wyrównujący spis listingów do lewego marginesu 
%https://tex.stackexchange.com/questions/58469/why-are-listof-and-listoffigures-styled-differently
\makeatletter
\renewcommand*{\listof}[2]{%
	\@ifundefined{ext@#1}{\float@error{#1}}{%
		\expandafter\let\csname l@#1\endcsname \l@figure  % <- use layout of figure
		\float@listhead{#2}%
		\begingroup
		\setlength\parskip{0pt plus 1pt}%               % <- or drop this line completely
		\@starttoc{\@nameuse{ext@#1}}%
		\endgroup}}
\makeatother

\RequirePackage{url}
\RequirePackage{minted}

% otoczenie do składania listingów
\RequirePackage{float}
\newfloat{listing}{htp}{lop}
\floatname{listing}{Listing}
\RequirePackage{chngcntr}
\counterwithin{listing}{chapter}

\renewcommand\listoflistings{\listof{listing}{\dlistoflistings}}

% dodatki
\usepackage[toc]{appendix}
\renewcommand\appendixtocname{\dappendix}
\renewcommand\appendixpagename{\dappendix}

\RequirePackage[hidelinks]{hyperref}

\endinput % dla porządku
