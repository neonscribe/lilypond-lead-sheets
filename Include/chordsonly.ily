%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/chordsonly-midi.ily"
  "../Include/chordsonly-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
