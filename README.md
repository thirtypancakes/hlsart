###  HLSArt: A LaTeX document class for creating simple reports and essays

This document class provides an easy way to create documents conforming to my university
department's formatting guidelines in LaTeX. Hopefully it will be of some use to others wishing
to use LaTeX to produce their coursework.

### Some features of this class:

- Double line spacing (except for abstract)

- 12pt spacing between paragraphs with no indentation

- Adjusted section headings (bold, centred) and subsection (italicised, left justified)

- Adjusts bibliography separator to 1em (default is 0)

- APA style referencing/citations

### Installation

Clone the repository into your `texmf` directory (on a mac this should be
`~/Library/texmf/tex/hlsart/`). If you are using Linux or Windows, you should
consult your documentation and clone this repository into a directory where LaTeX will find it.

### Usage

To use this class in your document:

    \documentclass[<options>]{hlsart}


### Caveats

This document uses the `mathspec` package (which loads `fontspec`) and as such
it requires documents to be compiled with `xelatex` (`lualatex` if you load
`fontspec/unicode-math` instead of `mathspec`).

----

Finally I would also like to point out that I am a TeX novice, any questions should
probably be asked on the [TeX stack exchange](http://tex.stackexchange.com).

If this class blows up your computer I bear no responsibility. I'm distributing
this class in the hope that it is useful to someone. It is licensed under the
same license as the TeXlive distribution.
