%% -*- Mode: LilyPond -*-

\version "2.26.0"

\include "lead-sheets.ily"
\book {
  \score {
    \new Staff {
      \new Voice {
        \relative {
          c''4 a b c
        }
      }
    }
    \layout { }
  }
}
