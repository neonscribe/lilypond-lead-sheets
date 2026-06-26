%% -*- Mode: LilyPond -*-

\version "2.26.0"

\include "pre-bookpart.ily"

thisPart = \bookpart { 
  \include "../Include/toc-item.ily"
  \include \beforeTextFile
  \include "../Include/chordsonly-score.ily"
  \include \afterTextFile
  \include \pianoChordsFile
  \include \guitarChordsFile
  \include "../Include/headerdef.ily"
  \include "../Include/chordsonly-paperdef.ily"
}

\include "post-bookpart.ily"
