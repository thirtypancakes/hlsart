%&plain
\ProvidesClass{hlsart}

% Pass options to article class
\DeclareOption* {\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions \relax

% Load standard article class
\LoadClass{article}

% Load Packages
\RequirePackage{%
  fontspec,
  amsmath,
  setspace,
  titling,
  titlesec,
  fancyhdr,
  booktabs,
  graphicx,
  csquotes,
}%

\RequirePackage[protrusion=true, factor=1100]{microtype}

% Set font
% \setmainfont[Ligatures=TeX]{Helvetica Neue Light}
% \setmathsfont(Digits,Latin,Greek)
% 	[Uppercase=Plain,Lowercase=Regular,Scale=MatchLowercase]
% 	{Helvetica Neue Light}

% British hyphenation
\RequirePackage[british]{babel}

% Table/fig captions
\RequirePackage[font=small,labelfont=bf]{caption}

% APA style citations
\RequirePackage[style=apa, backend=biber, uniquename=false, doi=true]{biblatex}
\DeclareLanguageMapping{british}{british-apa}

% Page margines
% \RequirePackage[vmargin=25mm, hmargin=35mm]{geometry}

% Seperate Reference entries by one line
\setlength{\bibitemsep}{1em}

% Remove paragraph indentation and seperate by one line
\setlength{\parindent}{0pt}
\parskip=12pt

% Format for section/subsection
\titleformat{\section}{\large\bfseries\centering}{}{0em}{}[]
\titleformat{\subsection}
  {\normalsize\itshape\raggedright}
  {\vspace{-1em}}
  {0em}
  {\vspace{0em}}
  [\vspace{-2em}]

\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing*{\subsection}{12pt}{0pt}{6pt}

% Remove hline under header
\renewcommand{\headrulewidth}{0pt}

% Custom maketitle
\renewcommand{\maketitle}{%
    \begin{singlespace}
    \begin{center}
        {{\bf \@title}}\\
    \end{center}
    \end{singlespace}
\vspace{-1em}
}%

\renewenvironment{abstract}{%
    \begin{center}\bfseries \abstractname \vspace{-.5em} \end{center}}
    {\centering \singlespacing \vspace{-1em}
}

\doublespacing
\pagestyle{fancy}
