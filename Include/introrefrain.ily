%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/introrefrain-midi.ily"
  "../Include/introrefrain-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
