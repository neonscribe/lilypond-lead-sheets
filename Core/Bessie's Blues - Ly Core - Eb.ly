%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:26.554012Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "Bessie's Blues"
  subtitle = \subtitle
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small { \now " " "© 1964 Jowcol Music" }
}

refrainChords = \chordmode {
  ef1:7 af1:7 ef1:7 ef1 :7
  af1:7 af1:7 ef1:7 df2:7 c2:7
  bf1:7 af1:7 ef1:7 ef2:7 bf2:7

  ef1:7 af1:7 ef1:7 ef1 :7
  af1:7 af1:7 ef1:7 df2:7 c2:7
  bf1:7 af1:7 ef1:7 ef2:7 bf2:7

  af1:7 s8 ef4:7/g af4:6 a4:dim7 ef8:7/bf s4 s8 ef8*5:9
}

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Up Swing [John Coltrane 1964]" 184

  \sectNoBarNoBreak "A1"

  g'4 ef8 df8 r4 r8 c'8~ | c4 af8 ef8 gf4-. r8 bf,8 | g'8 ef8 g4-. g4 g8 g8 | r8 ef8 d8 df8~ df2 |
  \break
  r8 c'4 ef,8 c'8 bf8 r8 c8~ | c4. af8 r8 gf8 r8 bf,8 | g'8 ef8 g4-. g4 g8 g8 | r8 ef8 d8 df8 r4 g8 f8~ |
  \break
  f4 d8 c8 bf8 c8 d8 f8 | ef8 c8 af8 \parenthesize f8 c'8 \parenthesize af8 ef'8 ef8~ |
  ef4. f8 ef8 c8 r4 | r4 r8 bf8 f'8 g8 af8 bf8 |

  \sect "A2"

  g4 ef8 df8 r4 r8 c'8~ | c4 af8 ef8 gf4-. r8 bf,8 | g'8 ef8 g4-. g4 g8 g8 | r8 ef8 d8 df8~ df2 |
  \break
  r8 c'4 ef,8 c'8 bf8 r8 c8~ | c4. af8 r8 gf8 r8 bf,8 | g'8 ef8 g4-. g4 g8 g8 | r8 ef8 d8 df8 r4 g8 f8~ |
  \break
  f4 d8 c8 bf8 c8 d8 f8 \textToCodaLastTime | ef8 c8 bf8 af8 gf8 ef8 gf8 af8 | gf8 ef4 ef8~ ef2 | r1 |

  \bar "||-|."

  \textCodaBreak

  ef'8 c8 af8 \parenthesize f8 c'8 \parenthesize af8 ef'8 ef8~ |
  <<
    { \voiceOne { ef1~ | ef1 | } }
    { \xVoiceTwo { r8 g,4 af8~ af8 a4 bf8 | r4 r8 ef,8~ ef2\fermata | } }
  >>

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
