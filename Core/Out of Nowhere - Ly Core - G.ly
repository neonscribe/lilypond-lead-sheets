%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Out of Nowhere"
  subtitle = \instrument
  poet = "Edward Heyman"
  composer = "Johnny Green"
  copyright = \markup \small "© 1931 Famous Music Corporation"
}

refrainLyrics = \lyricmode {
  You came to me __ from out of no -- where, __
  You took my heart __ and found it free. __
  Won -- der -- ful dreams, __ won -- der -- ful schemes from no -- where;
  Made ev -- 'ry hour sweet as a flow -- er to me. __
  If you should go __ back to your no -- where, __
  Leav -- ing me with __ a mem -- o -- ry. __
  I'll al -- ways wait __ for your re -- turn out of no -- where;
  Hop -- ing you'll bring your love to me.
}

refrainChords = \chordmode {
  g1:maj7 g1:maj7 bf1:m7 ef1:7
  g1:maj7 g1:maj7 b1:m7 e1:7
  
  a1:m7 b2:m7 e2:7 a1:m7 a1:m7
  ef1:7 ef1:7 a1:m7 d1:7

  g1:maj7 g1:maj7 bf1:m7 ef1:7
  g1:maj7 g1:maj7 b1:m7 e1:7
  
  a1:m7 b2:m7 e2:7 a1:m7 f1:7.11+
  b2:m7 bf2:dim7 a2:m7 d2:7 g1:6
  
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Stan Getz 1954]" 4 = 170

  \xTextMark \markup{ \bold \box "A1" }
  
  d8 e8 fs8 a8~ a2~ | a8 g4. d4 e4 | f4. f8~ f2~ | f2. r4 |
  \break
  d8 e8 fs8 a8~ a2~ | a4 g4 d4 e4 | fs1~ | fs2 r2 |
  
  \sect "B"
  
  e8 f8 e8 c'8~ c2 | e,8 f8 e8 b'8~ b4 e,4 | b'1 | a1 |
  \break
  \tuplet 3/2 { bf4 a4 g4 } g2 | \tuplet 3/2 { g4 a4 bf4 } \tuplet 3/2 { bf4 g4 bf4 } | d1~ | d1 |
  
  \sect "A2"
  
  d,8 e8 fs8 a8~ a2~ | a8 g4. d4 e4 | f4. f8~ f2~ | f2. r4 |
  \break
  d8 e8 fs8 a8~ a2~ | a4 g4 d4 e4 | fs1~ | fs2 r2 |
  
  \sect "C"
  
  e8 f8 e8 c'8~ c2 | \tuplet 3/2 { e,4 f4 e4 } \tuplet 3/2 { b'4 c4 d4 } | e1 | b1 |
  \break
  a8 fs4 g8 e4 fs4 | d2 b'2 | g1~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
