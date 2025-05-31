%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Confirmation"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker"
  copyright = \markup \small "© 1946 Atlantic Music Corp."
}

refrainChords = \chordmode {
  s4

  f1:6 e2:m7.5- a2:7 d1:m c2:m7 f2:7
  bf1:7 a2:m7 d2:7 g1:7 c1:7

  f1:6 e2:m7.5- a2:7 d1:m c2:m7 f2:7
  bf1:7 a2:m7 d2:7 g2:m7 c2:7 f1:6
  
  c2:m c2:m7+ c2:m7 f2:7 bf1:maj7 bf1:maj7
  ef1:m7 af1:7 df1:maj7 g2:m7 c2:7

  f1:6 e2:m7.5- a2:7 d1:m c2:m7 f2:7
  bf1:7 a2:m7 d2:7 g2:m7 c2:7 f1
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast Bop [Charlie Parker 1953]" 4 = 200

  \partial 4 \invisEighth c8 |
  \bar "||"

  \sectStart "A1"
  
  a'8 c4 a8 bf8 a8 \tuplet 3/2 { e8 f8 fs8 } | g8 d'8 \tuplet 3/2 { bf16 c16 bf16 } g8 a8 cs,4 g'8~ |
  g8 f4. r4 r8 a8 | g8 bf8 \tuplet 3/2 { a16 bf16 a16 } g8 r8 f4 bf8 |
  \break
  b8 bf8 \tuplet 3/2 { af16 bf16 af16 } f8 bf8 af4. | r8 c8 \tuplet 3/2 { bf16 c16 bf16 } g8 fs8 a8 d,8 b'8~ |
  b4 ef8 a,8 r4 r8 e'16 d16 | df8 f,8 g8 e8 r8 c'4. |
  
  \sect "A2"
  
  a4 r8 f8 \tuplet 3/2 { bf8 a8 bf16 af16 } g8 a8 | f16 g16 ef8~ ef4 r8 cs4 g'8~ |
  g8 f4. r4 r8 a8 | g8 bf8 \tuplet 3/2 { a16 bf16 a16 } g8 f8 cs8 f8 f8~ |
  \break
  f8 af8 bf8 f8 af8 bf8 r4 | r8 d,8 g8 bf8 \tuplet 3/2 { a16 bf16 a16 } fs8 r4 |
  g8 bf8 \tuplet 3/2 { a16 bf16 a16 } g8 c8 af8 a8 f8 | r2 r8 d'4. |

  \sect "B"
  
  c8 r8 r16 g16 ef16 c16 b'8 g4 g8 | bf8 c16 bf16 g8 ef8 af8 gf8 r4 |  
  a8 g8 a8 g8~ g4. g8 | r2 r4 r8 bf8 |
  \break
  df8 ef,16 bf'16 c16 bf16 gf8~ gf8 af8 f8 e8 | \tuplet 3/2 { ef4 af4 af4 } af8 af8 r8 gf16 e16 |
  \tuplet 3/2 { f8 af8 c8 } ef8 d16 b16 df16 bf16 r8 r4 | r8 g8 df8 f8 af8 e8 df8 c8 |

  \sect "A3"

  r8 c'4. bf8 a8 \tuplet 3/2 { e8 f8 fs8 } | g8 d'8 \tuplet 3/2 { bf16 c16 bf16 } g8 a8 cs,4 g'8~ |
  g8 f4. r4 r8 a8 | g8 bf8 \tuplet 3/2 { a16 bf16 a16 } g8 r8 f4 bf8 |
  \break
  b8 bf8 \tuplet 3/2 { af16 bf16 af16 } f8 bf8 af4. | r8 c8 \tuplet 3/2 { bf16 c16 bf16 } af8 a8 cs,8 d8 f8~ |
  f4 f8 a8 r8 f4. | f4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
