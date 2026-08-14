<img width="835" height="1181" alt="At Sundown - Ly - F Standard" src="https://github.com/user-attachments/assets/897d774e-6339-4efd-a0a0-dc67c7f4586d" />
# lilypond-lead-sheets

Create lead sheets and collection books using LilyPond

## Requirements

Python3.14 and a few packages available with pip: anyascii, pypdf, titlecase, and whenever.

Bash shell. Shell scripts, with .sh extensions, all begin with `#!/bin/bash`

LilyPond 2.26

Optionally LuaLaTeX, only needed for books with PDFs from other sources. You will also need the widely available Symbola font to obtain sharp and flat glyphs, and C059 font to match LilyPond fonts. You do not need TeX at all to build anything in this repository.

I use MacTeX for my TeX installation, and Homebrew
for LilyPond and Python. Bash is included in MacOS as an alternative to zsh.

All development work has been on MacOS, but in April 2025 I built
everything successfully on a fresh install of Ubuntu 25.04.

## Structure

All of the Bash and Python scripts are in the `Scripts` folder.

The shell script `Scripts/mkdirs.sh` creates all the destination directories
for PDF and MIDI files. This only needs to be run once.

The LilyPond code that specifies the overall layout, lyrics, chords and melody for each song is found in the `Core` folder. These files can be processed directly by LilyPond to produce a PDF of the song with its "standard" settings.

There is also a `Wrappers` folder that holds small LilyPond files where various parameters can be set, using `\include` to process the corresponding `Core` file. Key, octave, clef, tempo and subtitle can be adjusted, sometimes alternate sets of chords can be used, intros and/or lyrics can be removed.

The `Include` folder is where most of the real work happens. The file `Include/lead-sheets.ily` is included at the beginning of every core file, and it in turn includes several other files. There is another file included at the end of each core file that does the formatting for the sections in that file. The most commonly used one is `Include/refrainonly.ily` and there are a few others. They handle the case of a song being processed as a single file as well as within a collection.

The Python script `Scripts/makesheet.py` is used to generate a core file and wrapper files for one song. Title, (standard) key, and range are prompted for. These can then be edited as needed.

The shell script `Scripts/lilone.sh` when you are in the `Wrappers` folder takes a prefix of a filename and processes all the files that match that prefix. The script `Scripts/lilyfy.sh` processes all the files in `Wrappers`. The destination folder of each PDF is determined by the name of the wrapper file, with separate folders for standard key treble clef, alto clef, bass clef, alto voice, baritone voice, and Bb and Eb transpositions of each.

PDF collections of songs are created using an extremely simple `.book` format, examples of which are found in the `TeX` folder. These books were originally assembled from individual song PDFs using TeX, but now there is a Python script `Scripts/lilybook.ly` that is used to create a LilyPond file that assembles them all from LilyPond itself. This allows fonts to be shared across the entire book and results in a tenfold file size decrease in the resulting books. The PDF books thus produced are put in the `Book` folder.

The `.book` format is just a plain text file with the title of the book on the first line and a sequence of alternating bookmark text and individual LilyPond file names, separated by blank lines.

The Python script `Scripts/book_dir_to_pdf.py` takes the name of a folder and processes all the `.book` files in that folder using `Scripts/lilybook.py`.

## Conventions and Output

We use `english.ly` note naming in LilyPond instead of the standard `nederlands.ly`. Chord names use the Brandt and Roemer standard, with a few exceptions, which is very similar to what is used in the Sher Music New Real Books. All double accidentals, plus Cb, Fb, B# and E#, are turned into their enharmonic equivalents in most cases. We begin each score with an ambitus, showing the melody range. This can help when choosing a key for a singer. As is customary in lead sheets, clef and key signature are only shown at the beginning of a score and whenever they change, not at the beginning of each line. I have tried to repeat them at the beginning of each page, but I was unable to do this automatically with LilyPond, so these only appear in cases where a page break is specified explicitly.

Here's an example of the output for a single song. Title and subtitle are centered at the top. Composer is right-justified and lyricist (if different from composer) is left-justified. There is a tempo marking with specific beats per minute, usually with a reference in square brackets to a particular well-known recording of the song. This refers only to the given tempo, not necessarily to the arrangement presented, and is only intended as a suggestion.

<img width="835" height="1181" alt="At Sundown - Ly - F Standard" src="https://github.com/user-attachments/assets/ddb36f98-bb78-4184-9017-dc31501fe25e" />



