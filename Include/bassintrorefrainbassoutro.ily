%% -*- Mode: LilyPond -*-

\version "2.26.0"

thisKey = \whatKey

includeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/bassintrorefrainbassoutro-midi.ily"
  "../Include/bassintrorefrainbassoutro-bookpart.ily")

\include \includeFile

\include "reset-song-variables.ily"
