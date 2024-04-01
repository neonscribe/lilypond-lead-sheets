%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Ornithology"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker and Bennie Harris"
  copyright = "© 1946 Atlantic Music Corp."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s8
  
  g1:maj7 g1:maj7 g2:m7 c2:7 g2:m7 c2:7
  f1:maj7 f1:maj7 f1:m7 bf1:7

  ef1:7 a2:m7.5- d2:7 g1:m7 d1:7
  b1:m7 e1:7 a1:m7 d1:7

  g1:maj7 g1:maj7 g2:m7 c2:7 g2:m7 c2:7
  f1:maj7 f1:maj7 f1:m7 bf1:7

  ef1:7 a2:m7.5- d2:7 g1 d1:7
  b2:m7 bf2:m7 a2:m7 af2:m7 g1
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Bop" 4 = 234

  \partial 8 d8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  g8 a8 b8 c8 d8 b8 c8 d8 | b8 g8 r4 r4 r8 d8 |
  g8 a8 bf8 c8 d8 e4 f8~ | f8 g,8 a8 bf8~ bf4. d8 |
  \break
  c8 a4 f8 bf8 gs8 a8 f8 | r2 r4 r8 af8~ |
  af4 g8 f8 e8 g8 f8 c8 | f4 ef8 d8 r4 r8 df'8~ |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  df4 c8 bf8 a8 c8 bf8 g8 | a4 g8 fs8 r4 r8 d8 |
  a'8 g8 d8 bf8 f'4 ef8 d8 | r2 r8 b'8 c8 d8~ |
  \break
  d8 r8 r8 b8~ b8 a4 g8 | gs8 b8 d8 f8~ f4 e8 c8~ |
  c8 r8 r8 a8~ a8 g4 f8 | fs8 a8 c8 ef8~ ef4 d8 d,8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  g8 a8 b8 c8 d8 b8 c8 d8 | b8 g8 r4 r4 r8 d8 |
  g8 a8 bf8 c8 d8 e4 f8~ | f8 g,8 a8 bf8~ bf4. d8 |
  \break
  c8 a4 f8 bf8 gs8 a8 f8 | r2 r4 r8 af8~ |
  af4 g8 f8 e8 g8 f8 c8 | f4 ef8 d8 r4 r8 df'8~ |
  
  \bar "||"
  \break

  \mark \markup{ \box "C" }

  df4 c8 bf8 a8 c8 bf8 g8 | a4 g8 fs8 r4 r8 d8 |
  a'8 g8 d8 b8 f'4 ef8 d8 | r2 r4 r8 bf'8 |
  \break
  b8 d8 fs8 d8 f8 df8 bf8 af8 | a8 c8 e8 c8 ef8 cf8 af8 gf8 |
  g8 r8 r4 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
