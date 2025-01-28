%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Blues for Alice"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker"
  copyright = "© 1951 Atlantic Music Corp."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1:6 e2:m7 a2:7.9- d2:m7 g2:7 c2:m7 f2:7
  bf1:7 bf2:m7 ef2:7 a2:m7 d2:7 af2:m7 df2:7
  g1:m7 c1:7 a2:m7 d2:m7 g2:m7 c2:7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Charlie Parker 1951]" 4 = 164

  \bar ".|:"
  \repeat volta 2 {
  f'4 c8 a8 e'4 c8 a8 | d8 e8 b8 d8 cs8 bf8 g8 a8~ |
  a4 f8 d8 g8 a8 f8 e8 |
  \tuplet 3/2 { ef8 g8 bf8 } d8 df8 r8 f,8 \tuplet 3/2 { f8 g8 f8 } |
  \break
  c'4 bf8 f8 af8 bf,8 r8 g'8 | ef'8 df8 bf8 af8 c8 f,8 g8 a8~ |
  a4 e8 c8 d4 r8 df'8~ | df4 cf8 ef,8 bf'4 r8 af8 |
  \break
  \tuplet 3/2 { g4 f'4 f4 } f8 d8 bf8 d,8 | a'8 g8 c8 bf8 ef4 r8 c8~ |
  c4 a8 e8 g4 r8 d'8~ | d4 bf8 d,8 a'4 r4 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice before and twice after solos." }
