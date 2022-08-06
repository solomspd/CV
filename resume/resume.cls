\LoadClass[12pt,a4paper]{article}

\usepackage[utf8]{inputenc}
\usepackage{geometry}
\usepackage{array}
\usepackage[inline]{enumitem}
\usepackage{hyperref}
\usepackage{tabularx}
\usepackage{graphicx}
\usepackage{outlines}
\usepackage{fontawesome}
\usepackage{xcolor}
\usepackage{fancybox}
\usepackage{multicol}
\usepackage{dashrule}
\usepackage{ifthen}
\usepackage{tcolorbox}
\usepackage[scaled]{helvet}
\usepackage[T1]{fontenc}

\renewcommand{\familydefault}{\sfdefault} 


\setlist[itemize]{leftmargin=*,label=\color{accent}\tiny\faChevronRight,labelsep=1mm,nosep}
\newlist{techtag}{itemize*}{1}
\setlist[techtag]{label=,before=\smallskip,after=\smallskip,nosep}
\newlist{techlist}{itemize*}{1}
\setlist[techlist]{label=,nosep}

% \linespread{1.05}
\pagestyle{empty}
\pagenumbering{gobble}

\geometry{a4paper,
	left={5mm},
	top={5mm}, 
	right={5mm},
	bottom={5mm}
}

\setlength\parindent{0pt}

\definecolor{accent}{HTML}{0A3CCF}

\newcommand{\boxpt}{3pt}
\newtcbox{techbox}[1][accent]{
	on line,fontupper=\color{#1},colframe=#1,colback=white,arc=4pt,
	boxsep=0pt,left=\boxpt,right=\boxpt,top=\boxpt,bottom=\boxpt,
	boxrule=0.5pt,
	before upper={\rule[-2pt]{0pt}{10pt}}
}

\newcommand{\iconanot}[2]{\textcolor{accent}{#1}\hspace{0.5em}#2}
\newcommand{\iconin}[1]{\large\textcolor{accent}#1}
\newcommand{\divider}{{\color{gray}\hdashrule[0.5ex]{\linewidth}{0.6pt}{0.5ex}}}
\newcommand{\techitem}[1]{{\techbox{\small#1}}}
\newcommand{\calstick}[1]{\hfill \makebox[85pt][l]{\iconanot{\faCalendar}{\em #1}}}

\newenvironment{rsection}[1]{
	\medskip
	{\bf \large #1}
	\smallskip
	\hrule height 1mm
	\medskip
}{}

\newenvironment{rcontent}[3]{
	\textbf{#1} \ifthenelse{\equal{#2}{}}{}{\calstick{#2}}

	\ifthenelse{\equal{#3}{}}{}{\makebox[0.15\linewidth][l]{\iconanot{\faMapMarker}{#3}}\smallskip}
}{}

\newenvironment{rfloat}[1]{
	\medskip
	\hrule height 0.5mm
	\smallskip
	{\bf {\large #1} {\small\faChevronRight}}
}{
	\smallskip
	\hrule height 0.5mm
}