##  HLSArt: A LaTeX document class for creating simple reports and essays

### Introduction

This document class provides an easy way to create documents conforming to my university
department's formatting guidelines. Hopefully it will be of some use to others wishing
to use LaTeX to produce their coursework.

### Some major features of this class:

- Double line spacing (except for abstract)

- 12pt spacing between paragraphs, no indentation

- Adjusted section headings (bold, centred) and subsection (italicised, left justified)

- Adjusts bibliography to have a bold heading and 12pt space between reference
entries (using apacite with the natibib option)

- APA style referencing/citations

### Installation

Clone the repository into your `texmf` directory (on a mac this should be
`~/Library/texmf/tex/hlsart/`). If you are using Linux or Windows, you should
consult your documentation and clone this repository into a directory where LaTeX will find it.

### Usage

To use this class in your document:

    \documentclass{hlsart}

To see how documents will look, compile the example provided. Note that for

### Caveats

This document uses the `mathspec` package (which loads `fontspec`) and as such
it requires documents to be compiled with `xelatex`. To use standard `latex` or
`pdflatex` replace

    \RequirePackage{polyglossia}
    \setmainlanguage[variant=british]{english}

with:

    \RequirePackage[<desired language>]{babel}

and comment/delete line 8 (`\RequirePackage{mathspec}`)

----

Finally I would also like to point out that I am a TeX novice. If this class
blows up your computer I bear no responsibility. I'm distributing this class in
the hope that it is useful to someone. Anyone is free to modify and
redistribute this 'code' however they wish.
