%% -*- Mode: LilyPond -*-

songID = "2026-09-04T05:53:17.752094Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Estate"
headerSubtitle = \subtitle
headerPoet = "Bruno Brighetti"
headerComposer = "Bruno Martino"
headerCopyright = "© 1960 Santa Cecilia Casa Musicale"

leadingEighth = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s8
  
  d1:m7 g2:m7 a2:7 d1:m7 g2:m7 a2:7
  f1:maj7 bf2:maj7 g2:m7 e1:m7 a2:7 ef2:9

  d1:m7 g2:m7 a2:7 d1:m7 g2:m7 a2:7
  f1:maj7 bf2:maj7 g2:m7 e1:m7 a2:7 a2:7.5+

  d1:maj7 e2:m7 a2:7 d1:maj7 g2:m7 c2:7
  f1:maj7 bf2:maj7 g2:m7 e1:m7 a2:7 ef2:9

  d1:m7 g2:m7 a2:7 d1:m7 g2:m7 a2:7
  f1:maj7 bf2:maj7 g2:m7 e1:m7 a2:7 ef2:9
  d1:m7 g2:m7 a2:7.9+ d1:m7
  \chordOpenParen{ bf2:maj7 }
  g4:m7 
  \chordCloseParen{ ef4:9 }
}

refrainKey = d

whatKey = #(or whatKey refrainKey)
isMinor = ##t

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium Bossa [Ninine Garcia 2008]" 128

  \partial 8 bf,8 |

  \sectNoBreak "A1"
  
  a8 a4.~ a4. a8 | bf8 bf8 d8 d8 f8 f8 e8 e8 | a,8 a4.~ a4. a8 | bf8 bf8 d8 d8 a'8 a8 g8 g8 |
  c,8 c4.~ c4. c8 | d8 d8 f8 f8 c'8 bf8 f8 d8 | a'1~ | a2 \tuplet 3/2 { c4 bf4 f4 } |
  
  \sect "A2"

  a8 a4.~ a4. a,8 | bf8 bf8 d8 d8 f8 f8 e8 e8 | a,8 a4.~ a4. a8 | bf8 bf8 d8 d8 a'8 a8 g8 g8 |
  c,8 c4.~ c4. c8 | d8 d8 f8 f8 c'8 bf8 f8 d8 | a'1~ | a4 a8 b8 cs4 b8 cs8 |
  
  \sectPageBreak "B"
  
  a8 a4.~ a4. a8 | b8 b8 d8 d8 cs8 cs8 b8 cs8 | a8 a4.~ a4. a8 | g8 g8 bf8 bf8 a8 a8 g8 a8 |
  c,8 c4.~ c4. c8 | d8 d8 f8 f8 c'8 bf8 f8 d8 | a'1~ | a2 \tuplet 3/2 { c4 bf4 f4 } |

  \sectPageBreak "A3"

  a8 a4.~ a4. a,8 | bf8 bf8 d8 d8 f8 f8 e8 e8 | a,8 a4.~ a4. a8 | bf8 bf8 d8 d8 a'8 a8 g8 g8 |
  c,8 c4.~ c4. c8 | d8 d8 f8 f8 c'8 bf8 f8 d8 | a'1~ | a2 \tuplet 3/2 { c4 bf4 f4 } |
  a8 a4.~ a2~ | a2 \tuplet 3/2 { c,4_\markup \italic { "Last time 8va" } bf4 c4 } | 
  a8~ a4.~ a8
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize d8
  e8 f8 | a8 g4 d8
  \endParenthesis \parenthesize f4
  r4 |
  

  \bar "|."
}

\include "../Include/refrainonly.ily"
