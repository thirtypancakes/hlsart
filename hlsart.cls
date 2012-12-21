\ProvidesClass{hlsart}

% Load standard article class
\LoadClass[12pt,a4paper]{article}

% Fonts and stuff
\RequirePackage[UKenglish]{babel}
\RequirePackage{amsmath}
\RequirePackage{mathspec}
\setmainfont[BoldFont=Helvetica Neue Bold, Ligatures=TeX]{Helvetica Neue Light}
\setmathfont(Greek)[Lowercase=Regular]{Helvetica Neue Light}
\setmathfont(Latin)[Lowercase=Regular]{Helvetica Neue Light}
\setmathsfont(Digits)[Numbers={Proportional}]{Helvetica Neue Light}

% Table/fig captions
\RequirePackage[font=small,labelfont=bf]{caption}

% APA citations
\RequirePackage[natbibapa]{apacite}

% Page margines
\RequirePackage[top=25mm, left=35mm, right=35mm, bottom=25mm]{geometry}

% Seperate Reference entries by one line
\patchcmd{\thebibliography}{\sloppy}{\itemsep 12pt \parsep 0pt \sloppy}{}{}

% Remove paragraph indentation and seperate by one line
\RequirePackage{setspace}
\setlength{\parindent}{0mm}
\parskip=12pt

% Format for section/subsection
\RequirePackage{titlesec}
\titleformat{\section}{\normalsize\bfseries\centering}{}{0em}{}[]
\titleformat{\subsection}{\normalsize\itshape\raggedright}{\vspace{-1em}}{0em}{\vspace{0em}}[\vspace{-2em}]
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing*{\subsection}{12pt}{0pt}{6pt}


% Pretty tables/figures
\RequirePackage{booktabs}
\RequirePackage{graphicx}

% Remove hline under header
\renewcommand{\headrulewidth}{0pt}

% Custom maketitle
\renewcommand{\maketitle}{
    \begin{singlespace}
    \begin{center}
        {{\bf \@title}}\\
    \end{center}
    \end{singlespace}
\vspace{-1em}
}

\renewenvironment{abstract}{
    \begin{center}\bfseries \abstractname \vspace{-.5em} \end{center}}
    {\centering \singlespacing \vspace{-1em}
}

\doublespacing \pagestyle{fancy} \thispagestyle{fancy}

