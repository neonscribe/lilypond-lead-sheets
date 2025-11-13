%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Half Nelson"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis"
  copyright = \markup \small { \now " " "© 1947 Screen Gems Inc." }
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 f1:m7 bf1:7
  c1:maj7 c1:maj7 b2:m7 e2:7 bf2:m7 ef2:7
  af1:maj7 af1:maj7 a1:m7 d1:7
  d1:m7 g1:7 c2:m7 ef2:maj7 af2:maj7 df2:maj7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bop [Miles Davis-Charlie Parker 1947]" 4 = 190

  \sectStart "Head"
  
  r8 g8 e8 f8~ f8 f16 a16 b8 c8~ | c8 d16 c16 b2. |
  bf4 \tuplet 3/2 { af8 bf8 af8 } g8 f8 r4 | r2 r8 c'16 b16 bf8 af8 |
  \break
  g4 r8 a8~ a8 b4 c8 | d8 c8 d8 c8 b8 a4 fs8~ |
  \tuplet 3/2 { fs8 g8 gs8 } a8 fs8~ \tuplet 3/2 { fs8 g8 gs8 } a8 f8~ |
  \tuplet 3/2 { f8 fs8 g8 } af8 f8~ \tuplet 3/2 { f8 fs8 g8 } a8 g8~ |
  \break
  g4 ef4 f4 r4 | r8 ef8 f8 g8 bf8 g8 a8 bf8 | \tuplet 3/2 { c8 d8 c8 } b8 a8 gs8 e4 g16 a16 | fs4 r4 r2 |
  \break
  \tuplet 3/2 { f8 g8 f8 } e8 d8 g8 f4. | \tuplet 3/2 { e8 f8 e8 } cs8 e8 d8 e8 f8 fs8 |
  g8 e8_"FINE" r4 ef8 g8 bf8 g8 | af8 df,8 f8 af8 bf8 af16 bf16 g8 f8 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
