%% -*- Mode: LilyPond -*-

\version "2.26.0"

verseFile =
#(if (and (defined? 'noIntro) noIntro)
  "../Include/nothing.ily"
  "../Include/verse-score.ily")

\include "pre-bookpart.ily"

thisPart = \bookpart { 
  \include "../Include/toc-item.ily"
  \include \beforeTextFile
  \include \verseFile
  \include \betweenTextFile
  \include "../Include/refrain-score.ily"
  \include \afterTextFile
  \include "../Include/headerdef.ily"
  \include "../Include/paperdef.ily"
}

\include "post-bookpart.ily"
