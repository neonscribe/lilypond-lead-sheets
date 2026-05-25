%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "This Is Always"
  subtitle = \subtitle
  poet = "Mack Gordon"
  composer = "Harry Warren"
  copyright = \markup \small { \now " " "© 1946 Twentieth Century Music Corporation" }
}

refrainLyrics = \lyricmode {
This is -- n't some -- times, this is al -- ways.
This is -- n't may -- be this is al -- ways.
This is love, the real be -- gin -- ning of for -- ev -- er.

This is -- n't just mid -- sum -- mer mad -- ness,
a pass -- ing glow, a mo -- ment's glad -- ness.
Yes, it's love, I knew it on the night we met.

You tied a string a -- round my heart, so how can I for -- get you.
With ev -- 'ry kiss I know that this is al -- ways.
}

refrainChords = \chordmode {
  g2:maj9 \chordInsideParens{ c2:13 } b2:m9 e2:7.5+ a1:m7 cs2:m7.5- fs2:7.5+
  b2:m7 e2:7.5+ a4:m11 \chordSlash 1 d4:7 \chordInsideParens{ bf4:m7 } a1:m7 d2:sus13 d2:7.9-.5+

  g2:maj9 \chordInsideParens{ c2:13 } b2:m9 e2:7.5+ a1:m7 cs2:m7.5- fs2:7.5+
  b2:m7 e2:7.5+ a2:m7 d2:7 g2:6 g2:9 f4:9 \chordSlash 1 e4:7.9-.5+ e4:7.9-
  
  a1:m9 c2:m6 d2:13.9- g2:maj9 c2:13 b2:m7 bf2:m7
  a1:m9
  
  f4:9 e4:9 ef4:9 d4:9

  g2:maj9
  \chordOpenParen{ e2:m7 }
  a2:m7
  \chordCloseParen{ d2:7.9- }
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Chet Baker 1955]" 80

  \sectNoBar "A1"
  
  r8 b,8 d8 fs8 a8 g8 \tuplet 3/2 { d8 b8 d8~ } | d2 e2 |
  r8 c8 e8 g8 b8 g8 \tuplet 3/2 { e8 c8 e8~ } | e2 fs2 |
  d2. e4 | d2. df4 | c8 e8 g8 b8 d4 d4 | b2 bf2 |
  
  \sect "A2"
  
  r8 b,8 d8 fs8 a8 g8 \tuplet 3/2 { d8 b8 d8~ } | d2 e2 |
  r8 c8 e8 g8 b8 g8 \tuplet 3/2 { e8 c8 e8~ } | e2 fs2 |
  d2. e4 | d2. e4 | d8 e8 g8 b8 d4 d4 | c2. b4 |
  
  \sect "B"
  
  b4 a4 b4. a8 | c4 d4 b4. fs8 | a4 g4 a4 b4 | fs2 f2 |
  r8 e8 g8 b8 d8 b8 g8 e8 | b'2 fs2 | fs4 g2. | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
