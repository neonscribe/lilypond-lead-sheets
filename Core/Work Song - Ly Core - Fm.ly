%% -*- Mode: LilyPond -*-

\version "2.26.0"

songID = "2026-06-01T22:16:59.561962Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Work Song"
headerSubtitle = \subtitle
headerPoet = "Oscar Brown, Jr."
headerComposer = "Nat Adderley"
headerCopyright = "© 1960 Upam Music Co."

refrainChords = \chordmode {
  s4
  
  f1:m7 f1:m7 f1:m7 f1:m7
  f1:m7 f1:m7 c1:7 c1:7
  f1:m7 f1:m7 bf1:7 bf1:7
  f1:m7 bf1:7 c1:7 f1:m7
}

refrainKey = f
isMinor = ##t

whatKey = #(or whatKey refrainKey)
bassKey = #(or bassKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium [Cannonball Adderley 1960]" 168

  \sectNoBarNoBreak "Head"

  \partial 4 r4 |
  \bar "||"

  r4 f8 f8 af8 bf4 c8~ | c4 c8 bf8 c4 ef4 | r4 f,8 f8 af8 bf4 f8~ | f4 f8 ef8 f4 r4 |
  \break
  r4 f8 f8 af8 bf4 c8~ | c4 c8 bf8 c4 ef4 | r4 c8 c8 ef8 c4 e8~ | e4 c8 bf8 c4 r4 |
  \break
  r4 f8 ef8 \tuplet 3/2 { bf16 cf16 bf16 } af8 bf8 af8~ | af4 af8 f8 af4 bf4 |
  r4 f8 f8 af8 bf4 f8~ | f4 f8 ef8 f8 ef8 f4 |
  \break
  b8-- c8-^ r4 r4 f,4 | bf8-- cf8-^ r4 r8 f,8 af8 b8 |
  r8 bf8 r8 af8 \tuplet 3/2 { bf16 cf16 bf16 } af16 f16 ef8 f8~ | f1 |

  \bar "|."

}

refrainBass = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef bass

  c,4 f4 r4 r2  r2 r4
  c4 f4 r4 r2  r2 r4
  c4 f4 r4 r2  r2 r4
  g4 c,4 r4 r2  r2 r4
  c4 f4 r4 r2  r2 r4
  f4 bf4 r4 r2  r1
  r4 r8 f8 r2 r4 r8 bf,8 r2 g'2 c,2 | f2.
  \override Parentheses.font-size = #5
  \parenthesize c4
}

afterText = \markup{ "Play head twice before and twice after solos." }

\include "../Include/refrainonly.ily"
