%&plain

%file: hlsart.cls
% Use this class for simple reports/essays.

% Note: I wrote this class to conform to my department's guidelines for
% assignments. Customisation should be easy, drop me a line if you need any help

% Also note that this class will NOT work with LuaLaTeX because it uses mathspec
% to set math fonts. Change to fontspec/unicode-math to use with LuaLaTeX

\ProvidesClass{hlsart}

% Pass options to article class
\DeclareOption* {\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

% Load standard article class
\LoadClass{article}

% Load Packages
\RequirePackage{%
  mathspec,
  amsmath,
  setspace,
  titling,
  titlesec,
  fancyhdr,
  booktabs,
  graphicx,
  abstract,
  csquotes,
}%

% We adjust protrusion for use with Sans Serif fonts, customise to your needs
\RequirePackage[factor=1100]{microtype}

% Example {font,math}spec example

% \setmainfont[Ligatures=TeX]{Helvetica Neue Light}
% \setmathsfont(Digits,Latin,Greek)
% 	[Uppercase=Plain,Lowercase=Regular,Scale=MatchLowercase]
% 	{Helvetica Neue Light}

% British hyphenation
\RequirePackage[british]{babel}

% Table/fig captions adjustments
\RequirePackage[font=small,labelfont=bf]{caption}

% APA style citations
\RequirePackage[style=apa, backend=biber, uniquename=false, doi=true]{biblatex}
\DeclareLanguageMapping{british}{british-apa}

% Page margins
\RequirePackage[vmargin=25mm, hmargin=35mm]{geometry}

% Separate Reference entries by one line
\setlength{\bibitemsep}{1em}

% Remove paragraph indentation and separate by one line
\setlength{\parindent}{0pt}
\parskip=12pt

% Format for section/subsection
\titleformat{\section}{\large\bfseries\centering}{}{0em}{}[]
\titleformat{\subsection}
  {\normalsize\raggedright\itshape}
  {\vspace{-1em}}
  {0em}
  {\vspace{0em}}
  [\vspace{-2em}]

\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing*{\subsection}{12pt}{0pt}{12pt}

% Abstract
\renewcommand{\abstractnamefont}{\normalfont\large\bfseries}
\renewcommand{\abstracttextfont}{\centering\singlespacing\normalfont}
\setlength{\abstitleskip}{-3em}

% Remove hline under header
\renewcommand{\headrulewidth}{0pt}

% Custom maketitle
\renewcommand{\maketitle}{%
  \begingroup
  \centering\bfseries\large\@title\\
  \endgroup
}%

\doublespacing
\pagestyle{fancy}
