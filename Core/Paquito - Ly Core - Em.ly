%% -*- Mode: LilyPond -*-

songID = "2026-08-28T22:07:58.837907Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Paquito"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Ninine Garcia"
headerCopyright = "© 2003 Ninine Garcia"

refrainChords = \chordmode {
  s4
  
  e1:m9 e1:m9 c1:7 c1:7 a1:m7 a1:m7 e1:m7 e2:m7 b2:sus7
  e1:m9 e1:m9 c1:7 c1:7 a1:m7 a1:m7 e1:m7 e1:7.9-
  a1:m7 d1:m7 b1:m7 e1:m7 cs1:dim7 fs1:7 fs1:7.5- b1:7
  e1:m9 e1:m9 c1:7 c1:7 a1:m7 a1:m7 e1:m7 e1:m7
}

refrainKey = e

whatKey = #(or whatKey refrainKey)
isMinor = ##t

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium [Ninine Garcia 2003[" 168

  \partial 4 as8 b8 |

  \sectNoBreak "A1"
  
  fs'8 fs8 e8 fs8~-> fs8 r8 r4 | r4 r8 f8 fs4 e4 | d8 d8 c8 d8~ d8 r8 r4 | r4 r8 df8 d4 c4 |
  \break
  b8 b8 a8 b8~ b8 r8 r4 | r4 r8 a8 g4 a8 fs8~ | fs1 | r2 r4 as8 b8 |
  
  \sect "A2"

  fs'8 fs8 e8 fs8~-> fs8 r8 r4 | r4 r8 f8 fs4 e4 | d8 d8 c8 d8~ d8 r8 r4 | r4 r8 df8 d4 c4 |
  \break
  b8 b8 a8 b8~ b8 r8 r4 | r4 r8 a8 g4 a8 fs8~ | fs2. e4 | f2. r4 |
  
  \sect "B"
  
  a4 c8 g'8~ g8 fs8~ fs4 | fs8 e8~ e4 r2 | b4 d8 a'8~ a8 g8~ g4 | g8 fs8~ fs4 r2 |
  \break
  cs4 e8 b'8~ b8 as8~ as4 | gs8 as4 b8~ b4~ b8 b8~ |
  b4 r8 <fs d'>8~ <fs d'>4. <e c'>8~ | <e c'>2 r4 as,8 b8 |
  
  \sect "A3"

  fs'8 fs8 e8 fs8~-> fs8 r8 r4 | r4 r8 f8 fs4 e4 | d8 d8 c8 d8~ d8 r8 r4 | r4 r8 df8 d4 c4 |
  \break
  b8 b8 a8 b8~ b8 r8 r4 | r4 r8 a8 g4 a8 fs8~ | fs1 | r2 r4 
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  as8
  \endParenthesis \parenthesize b8 |
  
  \bar "|."
}

\include "../Include/refrainonly.ily"
