%% -*- Mode: LilyPond -*-

\pointAndClickOff

printNoteNames = 
  #(if (defined? 'printNoteNames)
    printNoteNames
    (ly:get-option 'print-note-names))

\include "text-mark.ily"
\include "modern-codas.ily"
\include "jazz-chords.ily"
\include "english.ly"
\include "presets.ily"
\include "utilities.ily"
\include "swing.ly"
\include "parens.ily"
\include "bar-lines.ily"

\version "2.22"
