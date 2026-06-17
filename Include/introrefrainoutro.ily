%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/introrefrainoutro-midi.ily"
  "../Include/introrefrainoutro-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
