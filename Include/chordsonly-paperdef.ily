%% -*- Mode: LilyPond -*-

\paper {
  \include "../Include/margins.ily"
  print-page-number = \inBook
  print-first-page-number = ##f
  max-systems-per-page = 12
  system-system-spacing =
  #'((basic-distance . 8) 
     (minimum-distance . 6)
     (padding . 1)
     (stretchability . 60)) % defaults: 12, 8, 1, 60
  indent = 0.
  tagline = ""
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  ragged-right = ##f
  oddHeaderMarkup = \markup { 
    \fill-line {
      ""
      \unless \on-first-page-of-part \fromproperty #'header:title
    \if \should-print-page-number \fromproperty #'page:page-number-string
    }
  }
  evenHeaderMarkup = \markup
  \fill-line {
    \if \should-print-page-number \fromproperty #'page:page-number-string
    \unless \on-first-page-of-part \fromproperty #'header:title
    ""
  }
}
