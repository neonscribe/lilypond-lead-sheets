%% -*- Mode: LilyPond -*-

\paper {
  indent = 0.
  tagline = ""
  ragged-bottom = ##t
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
