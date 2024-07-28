%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Deep Purple"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Peter DeRose"
  copyright = "© 1934 Robbins Music Corporation"
}

refrainLyrics = \lyricmode {
When the deep pur -- ple falls o -- ver sleep -- y gar -- den walls,
and the stars be -- gin to flick -- er in the sky, __
Thru the mist of a mem -- o -- ry you wan -- der back to me,
breath -- ing my name with a sigh.
In the still of the night once a -- gain I hold you tight.
Tho' you're gone, your love lives on when moon -- light beams. __
And as long as my heart will beat, Lov -- er,
we'll al -- ways meet here in my deep pur -- ple dreams. __
}

refrainChords = \chordmode {
  c2:9
  
  f1:maj7 d1:7.9- g1:m7 c1:9
  f1:maj7 a1:m7.5- a1:m7 d1:7
  
  g1:m7 bf1:m6 a1:m7 af1:dim7
  g1:m7 c2:9 c2:9.5+ f2:maj7 d2:7.9- g2:9 c2:9
  
  f1:maj7 d1:7.9- g1:m7 c1:9
  f1:maj7 a1:m7.5- a1:m7 d1:7

  g1:m7 bf1:m6 a1:m7 af1:dim7
  g1:m7 c2:sus9 c2:7.9- f2:6
  \chordOpenParen{ d2:7.9-.5+ }
  g2:m7
  \chordCloseParen{ c2:9 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120
  
  \partial 2 c4 d4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c'2 c,4 d4 | ef2 c4 cs4 | d4 g4 bf4 d4 | c2 gs4 a4 |
  \break
  g'4 f4 c4 a4 | g4 gs4 a4 d4 | d,1~ | d2 cs4 d4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c'2 b4 bf4 | a4 af4 g2 | g2 fs4 f4 | e4 ef4 d2 |
  \break
  d2 df4 c4 | g'2 gs4 d'4 | a1 | r2 c,4 d4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c'2 c,4 d4 | ef2 c4 cs4 | d4 g4 bf4 d4 | c2 gs4 a4 |
  \break
  g'4 f4 c4 a4 | g4 gs4 a4 d4 | d,1~ | d2 cs4 d4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }

  c'2 b4 bf4 | a4 af4 g2 | g2 fs4 f4 | e'4 ef4 d2 |
  \break
  d2 df4 c4 | g2 gs4 a4 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
