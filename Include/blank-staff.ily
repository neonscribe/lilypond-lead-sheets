%% -*- Mode: LilyPond -*-

\bookpart {
\score {
  {
    \repeat unfold 8 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

\paper {
  ragged-last-bottom = ##f
  tagline = ##f
  oddHeaderMarkup = \markup { 
    \fill-line {
      ""
      ""
      ""
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}
}
