%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "A Beautiful Friendship"
  subtitle = \instrument
  poet = "Stanley Styne"
  composer = "Donald Kahn"
  copyright = "© 1956 Gus Kahn Music"
}

refrainLyrics = \lyricmode {
This is the end of a beau -- ti -- ful friend -- ship
It end -- ed a mo -- ment a -- go
This is the end of a beau -- ti -- ful friend -- ship
I know, for your eyes told me so
We were al -- ways like sis -- ter and bro -- ther
Un -- til to -- night, when we looked at each oth -- er
That was the end of a beau -- ti -- ful friend -- ship
And just the be -- gin -- ning of love
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

refrainMelody = \relative c' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 130

  \xTextMark \markup{ \bold \box A1 }
  
  e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ e8 c8 d4 | e4 f2 e4 |
  \break
  d2~ \tuplet 3/2 { d4 b4 c4 } | d2~ d8 e8 c4 | d1~ | d2 r2 |

  \bar "$"
  \break


  \xTextMark \markup{ \bold \box A2 }

  e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ \tuplet 3/2 { e4 e4 ds4 } | e2~ e8 c8 d4 | e4 f2 e4 |
  \break
  d2~ \tuplet 3/2 { d4 b4 c4 } | d2 e4 c8 g'8~ | g1~ | g2 r2 |

  \bar "$"
  \break
  
  \xTextMark \markup{ \bold \box B }
  
  a2. g4 | a4 a2 e4 | g2 g4 f4 | g4 af2 af4 |
  a2. g4 | a2~ \tuplet 3/2 { a4 g4 e4 } | d2 d4 c4 | d4 ef2. |


  \bar "$"
  \break

  \xTextMark \markup{ \bold \box A3 }

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

performanceNotes =
\markup {
  \column {
    \line { \huge { Bass two-feel, vocal first chorus } }
    \line { \huge { Guitar solo whole form, turnaround to B. Vocal B to end } }
    \line { \huge { Tag bars 29&30 3x } }
  } }

\include "../Include/notes.ily"
