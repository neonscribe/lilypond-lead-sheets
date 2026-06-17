%% -*- Mode: LilyPond -*-

\version "2.26.0"

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/bassintrorefrainbasslineoutro-midi.ily"
  "../Include/bassintrorefrainbasslineoutro-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
