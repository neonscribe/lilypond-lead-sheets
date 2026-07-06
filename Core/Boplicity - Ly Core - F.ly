%% -*- Mode: LilyPond -*-

songID = "2026-07-05T23:34:15.430499Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Boplicity"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Miles Davis, Gil Evans"
headerCopyright = "© 1949 Jazz Horn Music and Bopper Spock Suns Music"

refrainChords = \chordmode {
  g2:m7 f2:maj7 g2:m7 c2:7 f1:maj7 c2:m7 f2:7.5+
  bf1:maj7 g1:m7/c g2:m7 c2:sus7 f1:maj7.11+

  g2:m7 f2:maj7 g2:m7 c2:7 f1:maj7 c2:m7 f2:7.5+
  bf1:maj7 g1:m7/c g2:m7 c2:sus7 f1:maj7.11+

  c2:m7 f2:7.5+ c2:m7 b2:7 bf1:maj7 bf1:maj7
  bf2:m7 ef2:7.5+ bf2:m7 a2:7 af2:maj7 af2:m7 g2:m7 c2:7

  g2:m7 f2:maj7 g2:m7 c2:7 f1:maj7 c2:m7 f2:7.5+
  bf1:maj7 g1:m7/c g2:m7 c2:sus7 f1:maj7.11+
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Miles Davis 1949]" 136

  \sectNoBar "A1"
  
  d8 f8 r8 c'8~ c8 a8 r8 f8 | \tuplet 3/2 { g4 f4 g4 } a4 r8 c,8~ |
  c4 a'8 e8~ e8 f8 a8 c8 | d8 bf16 g16 ef8 df'8~ df4. a8 |
  
  c8 a8 \tuplet 3/2 { bf8 c8 bf8 } a8 f8 d8 c8 | f8 r8 f8 a8 f8 r8 f8 a8 |
  f8 a8 c8 f8~ \tuplet 3/2 { f8 ef8 f8 } c8 b8~ | b2. r4 |
  
  \sect "A2"

  d,8 f8 r8 c'8~ c8 a8 r8 f8 | \tuplet 3/2 { g4 f4 g4 } a4 r8 c,8~ |
  c4 a'8 e8~ e8 f8 a8 c8 | d8 bf16 g16 ef8 df'8~ df4. a8 |
  
  c8 a8 \tuplet 3/2 { bf8 c8 bf8 } a8 f8 d8 c8 | f8 r8 f8 a8 f8 r8 f8 a8 |
  f8 a8 c8 f8~ \tuplet 3/2 { f8 ef8 f8 } c8 b8~ | b2. r8 bf8 |
  
  \sect "B"
  
  d8 bf16 g16 ef8 df'8~ df4. d8~ | d4 \tuplet 3/2 { bf8 g8 ef8 } df'4. a8 |
  \tuplet 3/2 { c4 c4 c4~ } c8 bf8 a8 g8 | f8 ef8 c8 cs8 d8 f8 g8 f8 |
  
  c'8 af16 f16 df8 b'8~ b4. c8~ | c4 \tuplet 3/2 { af8 f8 df8 } b'4. g8 |
  \tuplet 3/2 { bf4 bf4 bf4~ } bf8 af8 gf8 ef8 | a8 bf8 c8 a8~ a2 |

  \sect "A3"

  d,8 f8 r8 c'8~ c8 a8 r8 f8 | \tuplet 3/2 { g4 f4 g4 } a4 r8 c,8~ |
  c4 a'8 e8~ e8 f8 a8 c8 | d8 bf16 g16 ef8 df'8~ df4. a8 |
  
  c8 a8 \tuplet 3/2 { bf8 c8 bf8 } a8 f8 d8 c8 | f8 r8 f8 a8 f8 r8 f8 a8 |
  f8 a8 c8 f8~ \tuplet 3/2 { f8 ef8 f8 } c8 b8~ | b2. r4 |
  
  \bar "|."
}

\include "../Include/refrainonly.ily"
