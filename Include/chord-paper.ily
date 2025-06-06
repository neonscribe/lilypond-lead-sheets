%% -*- Mode: LilyPond -*-

\paper {
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
    \fill-line 
    { 
      \unless \on-first-page
      \fromproperty #'header:title 
    } 
  } 
  evenHeaderMarkup = \oddHeaderMarkup 
}
