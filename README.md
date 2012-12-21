##  HLSArt: A latex documentclass for creating reports and essays conforming (mostly) to my Psychology Department's reporting style guidelines.

### Introduction

This documentclass provides an easy way to create documents conforming to my
department's guidelines.

### Some major features of this documentclass:

- Uses Helvetica Neue Light as default font

- Regular font for maths

- Double line spacing (except for abstract)

- 12pt spacing between paragraphs, no indentation

- Adjusted section headings (bold, no numbering)

- Adjusts bibliography to have a bold heading and 12pt space between reference
entries (using apacite with the natibib option)

- Other options that I can't immediately recall

### Installation

Clone the repository and copy `hlsart.cls` to your `texmf` directory (on a mac
this should be `~/Library/texmf/tex/hlsart/`). If you are using Linux or
Windows, you should consult the documentation and copy `hlsart.cls` to the
correct `texmf` directory. You should also note that if you are using Linux or
Windows and do _not_ have Helvetica Neue installed you should change the font
to something like Arial or Sans.

### Usage

To use this class in your document:

    \documentclass{hlsart}

To see how documents will look, compile the example provided. Note that for
some reason using `\lipsum[1]` in the abstract environment results in the text
not being formatted properly.

### Caveats

Because this document uses mathspec (and therefore fontspec) to specify fonts
you should be using the XeTeX typesetting engine. If you wish to use pdflatex
or latex, comment out lines 13-20 and you should be good to go. It should also
be noted that standard TeX ligatures are used. So instead of quoting like this:

    "This is a quote"

You should be quoting like so:

    ``This is a quote''

----

Finally I would also like to point out that I am a TeX novice. If this document
class blows up your computer I bear no responsibility. I'm distributing this
class in the hope that it is useful to someone. Anyone is free to modify and
redistribute this 'code' however they wish.
