\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zine}[A class to produce OSR RPG Zines]

\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{extarticle}
}

\ProcessOptions\relax

\LoadClass[10pt,twoside,twocolumn]{article}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{multicol}
\usepackage{geometry}
\usepackage{tabularx}
\usepackage{titlesec}
\usepackage{enumitem}
\usepackage{float}
\usepackage{hyperref}
\usepackage[table]{xcolor}

\usepackage{fourier-orns}
\usepackage{adforn}



\usepackage[
	babel,
	% expansion,
	% tracking,
	% kerning
]{microtype}

\usepackage{pifont}
\usepackage[nf]{coelacanth}
\usepackage[T1]{fontenc}
%% The font package uses mweights.sty which has som issues with the
%% \normalfont command. The following two lines fixes this issue.
\let\oldnormalfont\normalfont
\def\normalfont{\oldnormalfont\mdseries}

%\usepackage[cam,width=128mm,height=210mm,center]{crop}

% Margins for binding as a Din A5 printed on A4 pages
\geometry{
	includeheadfoot,
	% paperwidth=148mm,
	% paperheight=210mm,
	paperwidth=138mm,
	paperheight=210mm,
	inner=0.508cm, % Inner margin
	outer=0.508cm, % Outer margin
	top=5.08mm, % Top margin
	bottom=5.08mm, % Bottom margin
	footskip=0.508cm, % Space for the page number
	heightrounded,
	%showframe,
	%showcrop
}


\setlist[itemize]{  % list spacings
	topsep=0pt,
	itemsep=0.04cm,
	partopsep=1ex,
	parsep=0.5ex
}
\setlist[itemize]{leftmargin=0.8cm} % this adjusts the left margin on lists, 
% you might have to adjust this based on 
% the chosen symbol.
\setlist[itemize,1]{label=\ding{228}} % sets the default list symbol

% you can adjust the properties of an individual itemize like this:
% \begin{itemize}[leftmargin=5.5mm]

% spacings around sections and (sub-)subsections
\titlespacing*{\section}
{0pt}{0.4cm}{0.1cm}
\titlespacing*{\subsection}
{0pt}{0.2cm}{0.2cm}
\titlespacing*{\subsubsection}
{0pt}{8pt}{2pt}

% Prevent breaking mid-word
\tolerance=500
\emergencystretch=1em
\hyphenpenalty=100
%
% Give tables more padding
\renewcommand{\arraystretch}{1.3}

% Middle split size
\setlength{\columnsep}{0.63cm}

% Boxes with darkened background
\newcommand{\colbox}[1]{ \noindent\colorbox{gray!25}{\parbox{0.93\linewidth}{#1}}\vspace{0.2cm}}
\setlength\fboxsep{0.3cm} % Padding

% FOOT & HEAD
\def\zinetitle{Your Zine Title}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\hrulefill \quad \zinetitle \quad \hrulefill \vspace{0.5mm}}
\fancyfoot[C]{\hrulefill \quad \textbf{\thepage} \quad \hrulefill}

% Metadata Formatting
\title{\vspace{-2cm} \hrule \vspace{3mm} \textbf{\textit{\zinetitle}} \vspace{2mm} \hrule}
%\date{Last edit: \today}

% FLEURON END MARKS
\newcommand{\fleuron}[1]{ {\center\huge\adforn{#1}\vfill} }
\newcommand{\fleurontri}{ \fleuron{54}}
\newcommand{\fleuronleaf}{ \fleuron{36}}
