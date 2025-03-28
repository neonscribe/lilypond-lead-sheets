%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Watermelon Man"
  subtitle = \instrument
  poet = ""
  composer = "Herbie Hancock"
  copyright = \markup \small "© 1962 Hancock Music"
}

straightEighths = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1:7 f1:7 f1:7 f1:7
  bf1:7 bf1:7 f1:7 f1:7
  c1:7 bf1:7 c1:7 bf1:7
  c1:7 bf4:7 r2. f1:7 f1:7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Straight Eighths" 4 = 125

  \xTextMark \markup{ \bold \box "Refrain" }

  \bar ".|:"
  \repeat volta 2 {
  ef'1~\mf\< | ef4\! f,8 f8 <c' af>8-- <d bf>4-> f,8~-> |
  \override Glissando.style = #'zigzag
  \cadenzaOn
  \afterGrace f1\glissando { \hideNotes bf,8 \unHideNotes }
  \cadenzaOff
  |
  \bar "|"
  r1 |
  \break
  f''1~\< | f4\! f,8 f8 <c' af>8-- <d bf>4-> f,8~ |
  \override Glissando.style = #'zigzag
  \cadenzaOn
  \afterGrace f1\glissando { \hideNotes bf,8 \unHideNotes }
  \cadenzaOff
  |
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
  |
  \bar "|"
  r1 |
  }

}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
