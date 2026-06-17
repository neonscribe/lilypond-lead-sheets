%% -*- Mode: LilyPond -*-

\version "2.26.0"

introFile =
#(if (and (defined? 'noIntro) noIntro)
  "../Include/nothing.ily"
  "../Include/bassintro-score.ily")

beforeTextFile =
#(if (and (defined? 'beforeText) beforeText)
  "../Include/beforetext.ily"
  "../Include/nothing.ily")

betweenTextFile =
#(if (and (defined? 'betweenText) betweenText)
  "../Include/betweentext.ily"
  "../Include/nothing.ily")

afterTextFile =
#(if (and (defined? 'afterText) afterText)
  "../Include/aftertext.ily"
  "../Include/nothing.ily")

thisPart = \bookpart { 
  \tocItem \markup { \headerTitle " - " \noteName { \whatKey } " - " \subtitle }
  \include \beforeTextFile
  \include \introFile
  \include \betweenTextFile
  \include "../Include/refrain-score.ily"
  \include "../Include/bassline-score.ily"
  \include "../Include/outro-score.ily"
  \include \afterTextFile
  \include "../Include/headerdef.ily"
  \include "../Include/paperdef.ily"
}

processFile =
#(if (and (defined? 'inBook) inBook)
  "../Include/nothing.ily"
  "../Include/bookpart.ily")

\include \processFile
