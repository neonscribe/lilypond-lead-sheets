%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/verserefrain-midi.ily"
  "../Include/verserefrain-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
