%% -*- Mode: LilyPond -*-

songID = "2026-08-27T23:09:12.887463Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Double Scotch (Double Whiskey, Double Whisky)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Django Reinhardt"
headerCopyright = "© 1950 Publications Francis Day S.A."

refrainChords = \chordmode {
  s4
  
  c2/g a2:m d2:m/a g2:7 c2/g a2:m d2:m/a g2:7 
  c2/g c2:7 f2 f2:m c1/g df1:9

  c2/g a2:m d2:m/a g2:7 c2/g a2:m d2:m/a g2:7 
  c2/g c2:7 f2 f2:m c1/g g2:7 c2/g

  e1:7 e1:7 a1:7 a1:7 d1:7 d1:7 g1:7 g1:7

  c2/g a2:m d2:m/a g2:7 c2/g a2:m d2:m/a g2:7 
  c2/g c2:7 f2 f2:m c1/g g2:7 c2/g
}

refrainKey = c

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Up But Easy [Django Reinhardt 1950]" 172

  \partial 4 c4 |

  \sectNoBreak "A1"
  
  \acciaccatura ds8 e4 r4 c4 r4 | \acciaccatura ds8 e4 c2 c4 |
  \acciaccatura ds8 e4 r4 c4 r4 | \tuplet 3/2 { gf'8 f8 e8 } f2 c4 |
  \acciaccatura ds8 e4 r4 c4 r4 | \acciaccatura ds8 e4 c2 r4 |
  r8 g8 b4 c2 | g'16 f16 e16 d16 df2 c4 |
  
  \sect "A2"

  \acciaccatura ds8 e4 r4 c4 r4 | \acciaccatura ds8 e4 c2 c4 |
  \acciaccatura ds8 e4 r4 c4 r4 | \tuplet 3/2 { gf'8 f8 e8 } f2 c4 |
  \acciaccatura ds8 e4 r4 c4 r4 | \acciaccatura ds8 e4 c2 r4 |
  r8 g8 b4 c2 | g'16 f16 e16 d16 c4 r2 |
  
  \sect "B"
  
  \tuplet 3/2 { b'8 c8 b8 } b,8 cs8 d8 fs8 a8 c8~ |
  \tuplet 3/2 { c4 d16 c16 } b8 f8~ f4 e8 d8 |
  cs8 e8 g8 b8~ b8 b8 b8 b8~ | b2. \tuplet 3/2 { bf4 c16 bf16 } |
  a4 a,8 b8 c8 e8 g8 bf8~ | \tuplet 3/2 { bf4 c16 bf16 } a8 ef8~ ef4 d8 c8 |
  b8 d8 e8 a8~ a8 a8 a8 a8~ | a2. c,4 |
  
  \sect "A3"

  \acciaccatura ds8 e4 r4 c4 r4 | \acciaccatura ds8 e4 c2 c4 |
  \acciaccatura ds8 e4 r4 c4 r4 | \tuplet 3/2 { gf'8 f8 e8 } f2 c4 |
  \acciaccatura ds8 e4 r4 c4 r4 | \acciaccatura ds8 e4 c2 r4 |
  r8 g8 b4 c2 | g'16 f16 e16 d16 c4-\parenthesize -. \textFine r2 |
  
  \bar "|."
}

\include "../Include/refrainonly.ily"
