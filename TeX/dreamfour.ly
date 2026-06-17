%% -*- Mode: LilyPond -*-

\version "2.26.0"

inBook = ##t

thisPart = ##f

\include "../Wrappers/Four - Ly Core - Eb.ly"

pa = \bookpart { \thisPart }

\include "../Core/I Remember You - Ly Core - G.ly"

pb = \bookpart { \thisPart }

\book {
  \paper {
    tocItemMarkup = \tocItemWithDotsMarkup
    tocTitleMarkup = \markup \huge \larger \larger \larger \column {
      \fill-line { \null "Four and I Remember You Book" \null }
      \hspace #1
    }}

  \markuplist \table-of-contents

  \bookpart { \pa }
  
  \include "../Include/blank-staff.ily"
  
  \bookpart { \pb }
}
