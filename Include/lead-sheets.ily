%% -*- Mode: LilyPond -*-

\pointAndClickOff

printNoteNames = 
  #(if (defined? 'printNoteNames)
    printNoteNames
    (ly:get-option 'print-note-names))

\include "jazz-chords.ily"
\include "modern-codas.ily"
%% \include "naturalize.ily"
\include "english.ly"
\include "presets.ily"
\include "utilities.ily"
\include "swing.ly"
\include "parens.ily"
\include "bar-lines.ily"

\version "2.22"
