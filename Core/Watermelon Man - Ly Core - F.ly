%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Watermelon Man"
  subtitle = \subtitle
  poet = ""
  composer = "Herbie Hancock"
  copyright = \markup \small { \now " " "© 1962 Hancock Music" }
}

straightEighths = ##t

refrainChords = \chordmode {
  f1:7 f1:7 f1:7 f1:7
  bf1:7 bf1:7 f1:7 f1:7
  c1:7 bf1:7 c1:7 bf1:7
  c1:7 bf4:7 r2. f1:7 f1:7
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Straight Eighths, Latin [Mongo Santamaria 1962]" 120

  \sectNoBar "Refrain"

  \bar ".|:"
  \repeat volta 2 {
  ef'1~\mf\< | ef4\! f,8 f8 <c' af>8-- <d bf>4-> f,8~-> |
  \override Glissando.style = #'zigzag
  \cadenzaOn
  \afterGrace f1\glissando { \hideNotes bf,8 \unHideNotes }
  \cadenzaOff
  r1 |
  \break
  f''1~\< | f4\! f,8 f8 <c' af>8-- <d bf>4-> f,8~ |
  \override Glissando.style = #'zigzag
  \cadenzaOn
  \afterGrace f1\glissando { \hideNotes bf,8 \unHideNotes }
  \cadenzaOff
  \bar "|"
  r1 |
  \break
  r4 c'8 c8 g'4 a4-. | af8 g8 f8 d8 f4 g4-. | r4 c,8 c8 g'4 a4-. | af8 g8 f8 d8 c4 d4-. |
  \break
  r4 c8 c8 g'4 af4 | f4-^ f,8 f8 <c' af>8-- <d bf>4-> f,8~ |
  \override Glissando.style = #'zigzag
  \cadenzaOn
  \afterGrace f1\glissando { \hideNotes bf,8 \unHideNotes }
  \cadenzaOff
  \bar "|"
  r1 |
  }
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
