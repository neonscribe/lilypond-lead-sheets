%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/refrainonly-midi.ily"
  "../Include/refrainonly-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
