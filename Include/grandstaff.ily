%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/grandstaff-midi.ily"
  "../Include/grandstaff-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
