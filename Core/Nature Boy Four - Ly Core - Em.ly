%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Nature Boy (4/4)"
  subtitle = \instrument
  poet = ""
  composer = "eden ahbez"
  copyright = \markup \small "© 1948 Crestview Music Corp."
}

refrainLyrics = \lyricmode {
There was a boy, __ a ver -- y strange en -- chant -- ed boy. __
They say he wan -- dered ver -- y far, ver -- y far,
o -- ver land __ and sea.
A lit -- tle shy __ and sad of eye, __ but ver -- y wise __ was he. __

And

then one day, __ a mag -- ic day he passed my way. __
And while we spoke of man -- y things, fools and kings,
this he said __ to me:
“The great -- est thing __ you'll ev -- er learn __
is

just to love __ and be loved in re -- turn.” __
}

refrainChords = \chordmode {
  s4
  
  e1:m9 fs2:m7.5- b2:7.9- e1:m9 fs2:m7.5- b2:7.9-
  e2:m e2:m7+ e2:m7 e2:m6 a2:m6 e2:m fs1:m7.5-
  b1:7 b1:7 e1:m e1:m
  
  fs1:7.9- fs1:7.9- b1:7 b1:7
  
  e1:m9 fs2:m7.5- b2:7.9- e1:m9 fs2:m7.5- b2:7.9-
  e2:m e2:m7+ e2:m7 e2:m6 a2:m6 e2:m fs1:m7.5-
  b1:7 b1:7 e1:m \chordInsideParens{ cs1:m7.5- }
  
  fs1:7.9- b1:7.5+ e1:m9
  \chordOpenParen{ fs2:m7.5- }
  \chordCloseParen{ b2:7 }
}

refrainKey = e

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad [Miles Davis 1955]" 4 = 64

  \partial 4 \invisEighth b,8 |
  
  \sectNoBreak "A1"
  
  b'8 g8 e2. | r4 r8 b8 fs'8 g8 a8 c8 | b8 g8 e2. | r4 r8 b8 fs'8 g8 a8 c8 |
  \break
  b4. e8 ds2 | b4. d8 cs2 | a4. c8 b4. e,8 | fs2. r8 b,8 |

  \sect "B"

  b'2. a4 | fs2. b,4 | a'2. g4 | e2. b4 |
  \break
  g'2. fs4 | cs2. d4 | ds1 | r2 r4 r8 b8 |

  \sect "A2"
  
  b'8 g8 e2. | r4 r8 b8 fs'8 g8 a8 c8 | b8 g8 e2. | r4 r8 b8 fs'8 g8 a8 c8 |
  \break
  b4. e8 ds2 | b4. d8 cs2 | a4. c8 b4. e,8 | fs2. r8 b,8 |

  \sect "C"

  b'2. a4 | fs2. b,4 | a'2. g4 | e2. b4 |
  \break
  g'4. fs8 cs4. b8 | a'4 g2 b,8 fs'8 | e1 | r1 |

\bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
