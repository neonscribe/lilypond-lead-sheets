# lilypond-lead-sheets
Create lead sheets using LilyPond and TeX

This supercedes the lilypond-hacks repository.

## Requirements

Bash shell. Shell scripts, with .sh extensions, all begin with `#!/bin/bash`

LilyPond 2.24

LaTeX

That's about it. I use MacTeX for my TeX installation, and Homebrew
for LilyPond. Bash is included in MacOS as an alternative to zsh.

## Structure

The shell script `mkdirs.sh` creates all the destination directories
for PDF and MIDI files.

The LilyPond code that specifies the overall layout, lyrics, chords
and melody for each song is found in the `Core` folder.

Modularity in this LilyPond code is achieved by using named variables
as parameters and `\include` files that refer to those parameters. The
top level code is in the `Wrappers` folder. Each file in `Wrappers`
includes a file in `Core` that does most of the work.

The `Wrappers` folder has separate files for different versions of
each song, specifying transposed keys, different subtitles, sometimes
gender changes in lyrics. They are all very small.

The `Include` folder has parameterized code for general
configuration and layout.

The shell script `lilone.sh` in the `Wrappers` folder takes a prefix
of a filename and processes all the files that match that prefix. The
script `lilyfy.sh` processes all the files in `Wrappers`. The
destination folder of each PDF is determined by the name of the file.

I chose to use `english.ly` note naming in LilyPond. Chord names use
the Brandt and Roemer standard, as seen in the Sher Music New Real
Books.

The `TeX` folder has LaTeX files that assemble PDF files and create
a table of contents. There's nothing specific to LilyPond or music
typesetting in general here. The shell script `makebook.sh` processes
each of the `.tex.` files that match a given prefix, running `latex`
twice to make sure the table of contents is correct. The output goes
to the `Book` folder.

Here's an example of the output:

![At Sundown lead sheet](At Sundown - Ly - F Standard.png "At Sundown lead sheet")
