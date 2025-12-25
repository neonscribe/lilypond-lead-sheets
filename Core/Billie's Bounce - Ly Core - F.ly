%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Billie's Bounce"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker"
  copyright = \markup \small { \now " " "© 1945 Atlantic Music Inc." }
}

refrainChords = \chordmode {
  s4

  f1:7 bf2:7 b2:dim7 f1:7 f1:7
  bf1:7 bf1:7 f1:7 a2:m7 d2:7
  g1:m7 c1:7 f2:7

  \chordOpenParen{ d2:7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Blues [Charley Parker's Ree Boppers 1945" 4 = 166

  \partial 4 \invisEighth c8 |
  \bar "||"
  
  b8 c8 f8 gs8 a8 f8 d8 f8~ | f8 d8 f8 r8 r8 f4 d8 |
  f8 r4 f8~ f8 d8 f8 d8 | af'8 a8 \tuplet 3/2 { f16 g16 f16 } d8 f8 g8 f8 f8 | 
  \break
  r4 r8 a8 bf8 f8 r8 af8~ | af8 bf4. ef8 c8 f8 ef8 |
  r8 f8 c4 r4 r8 e8~ | e4 g,8 e8 fs8 ef'8 c8 cs8 |
  \break
  d4 r8 g8 \tuplet 3/2 { fs16 g16 fs16 } d8 bf8 f8 | f'4 r8 f8 e8 e8 d8 d8 |
  c4 r8 f,8 f8 d8 f4 | r8 f4 d8 f4 r8 \parenthesize c8 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
