%% -*- Mode: LilyPond -*-

\version "2.25.25"

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "A Beautiful Friendship"
  subtitle = \instrument
  poet = "Stanley Styne"
  composer = "Donald Kahn"
  copyright = \markup \small { \now " " "© 1956 Gus Kahn Music" }
}

refrainLyrics = \lyricmode {
This __ is the end __ of a beau -- ti -- ful friend -- ship.
It end -- ed a mo -- ment a -- go. __
This __ is the end __ of a beau -- ti -- ful friend -- ship.
I know, __ for your eyes told me so. __
We were al -- ways like sis -- ter and bro -- ther
un -- til to -- night, __ when we looked at each oth -- er.
That __ was the end of a beau -- ti -- ful friend -- ship
and just __ the be -- gin -- ning of love. __
}

refrainChords = \chordmode {

  c1:maj7 gf1:9.11+ f1:maj7 e2:m7 a2:7.9-.5+
  a1:m7 d1:7 d1:m7 g1:7.9-
  
  c1:maj7 gf1:9.11+ f1:maj7 e2:m7 a2:7.9-.5+
  a1:m7 d1:7 d1:m7 g1:7

  g1:m9 c1:9 f1:maj9 bf1:9
  e1:m7 a1:9 d1:9 g2:sus9 g2:7.9-.5+
  
  c1:maj7 gf1:9.11+ f1:maj7 e2:m7.5- a2:7.9-.5+
  d1:m7 g2:sus9 g2:9

  c2:6
  
  \chordOpenParen{ a2:7.9-.5+ }
  d2:9
  \chordCloseParen{ g2:9 }
}

refrainKey = c

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative c' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad [Ella Fitzgerald 1956]" 4 = 100

  \xTextMark \markup{ \bold \box A1 }
  
  e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ e8 c8 d4 | e4 f2 e4 |
  \break
  d2~ \tuplet 3/2 { d4 b4 c4 } | d2~ d8 e8 c4 | d1~ | d2 r2 |

  \sect "A2"

  e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ e8 c8 d4 | e4 f2 e4 |
  \break
  d2~ \tuplet 3/2 { d4 b4 c4 } | d2 e4 c8 g'8~ | g1~ | g2 r2 |

  \sect "B"
  
  a2. g4 | a4 a2 e4 | g2 g4 f4 | g4 af2 af4 |
  a2. g4 | a2~ \tuplet 3/2 { a4 g4 e4 } | d2 d4 c4 | d4 ef2. |


  \sect "A3"

  e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ \tuplet 3/2 { e4 e4 ds4 } | e2 a4 g4 | bf4 a2 b4 |
  \break
  c2~ \tuplet 3/2 { c4 a4 b4 } | c4 d2 b4 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  \vspace #1
}

\include "../Include/refrain.ily"
