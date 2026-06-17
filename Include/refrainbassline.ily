%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/refrainbassline-midi.ily"
  "../Include/refrainbassline-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
