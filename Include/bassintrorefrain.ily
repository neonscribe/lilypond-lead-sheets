%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/bassintrorefrain-midi.ily"
  "../Include/bassintrorefrain-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
