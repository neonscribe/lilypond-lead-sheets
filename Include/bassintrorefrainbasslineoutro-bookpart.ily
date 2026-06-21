%% -*- Mode: LilyPond -*-

\version "2.26.0"

introFile =
#(if (and (defined? 'noIntro) noIntro)
  "../Include/nothing.ily"
  "../Include/bassintro-score.ily")

\include "pre-bookpart.ily"

thisPart = \bookpart { 
  \include "../Include/toc-item.ily"
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

\include "post-bookpart.ily"
