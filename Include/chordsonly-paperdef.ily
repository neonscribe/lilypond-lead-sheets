%% -*- Mode: LilyPond -*-

\paper {
  top-margin = 5\mm
  bottom-margin = 6\mm
  top-system-spacing.basic-distance = 1
  top-markup-spacing.basic-distance = 0
  left-margin = 10\mm
  right-margin = 10\mm
  inner-margin = 10\mm
  outer-margin = 20\mm
  binding-offset = 0\mm
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
