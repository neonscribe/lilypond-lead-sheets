%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Along Came Betty"
  subtitle = \instrument
  poet = ""
  composer = "Benny Golson"
  copyright = "© 1958 Ibbob Music, Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  bf1:m7 b2:m7 e2:7 bf1:m7 b2:m7 e2:7
  a1:maj7 gs1:7 g1:maj7 fs1:7

  fs1:m7 g2:m7 c2:7 fs1:m7 g2:m7 c2:7
  f1:maj7 a1:7 d1:m7 g1:7
  
  c1:m7 f1:7.9- a2:m7.5- d2:7.9- g2:m7 g2:m7/f
  e1:m7.5- a1:7 f1:m7 bf1:7
  
  bf1:m7 b2:m7 e2:7 bf1:m7 b2:m7 e2:7
  c1:m7.5- f1:7.9- bf1:m7.5- ef1:7.9+
  af1:maj7
  \chordOpenParen{ b2:m7 }
  \chordCloseParen{ e2:7 }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Art Blakey 1958]" 4 = 110

  \xTextMark \markup{ \bold \box "A" }
  
  r2 c'4-. bf8 df8~ | df1 | r4 r8 c8~ c8 bf8 a8 bf8 | d1 |
  \break
  r8 e,8 fs8 gs8 b8 a8 \tuplet 3/2 { r8 gs8 fs8 } | gs1 |
  r8 d8 e8 fs8 a4-. g8 fs8~ | fs1 |
  
  \sect "B"
  
  r2 gs4-. fs8 a8~ | a1 | r4 r8 g8~ g8 fs8 f8 fs8 | a2. c8 g8~ |
  \break
  g4. f8 c'8 b8 bf8 g8 | \tuplet 3/2 { a4 bf4 g4 } a4. a16 f16 |
  d8 e8 f8 g8 a8 d8 cs8 d8 | a2~ a4. d8~ |
  
  \sect "C"
  
  d8 ef8 d8 bf8 c2 | r8 ef,8 gf8 a8 c8 ef8 d8 df8 |
  c2~ c8 d8 c8 a8 | bf8 d,8 g8 a8 bf8 d8 c8 b8 |
  \break
  bf1 | r8 e,8 g8 a8 c8-. b8 \tuplet 3/2 { r8 bf8 a8 } |
  af4. g8~ \tuplet 3/2 { g4 bf4 af4 } | f4~ \tuplet 3/2 { f8 c8 ef8 } d2 |

  \sect "D"

  r2 c'4-. bf8 df8~ | df1 | r4 r8 c8~ c8 bf8 a8 bf8 | df2. c8 ef8~ |
  \break
  ef1~ | ef4. df8 r8 c8 r8 f,8 | ff1 | gf4. ff8 \tuplet 3/2 { gf4 ff4 gf4 } |
  ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
