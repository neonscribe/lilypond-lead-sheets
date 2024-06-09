%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Take Five"
  subtitle = \instrument
  poet = ""
  composer = "Paul Desmond"
  copyright = "© 1960 Desmond Music Co."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2

  ef2.:m bf2:m7 ef2.:m bf2:m7 ef2.:m bf2:m7 ef2.:m bf2:m7
  ef2.:m bf2:m7 ef2.:m bf2:m7 ef2.:m bf2:m7 ef2.:m bf2:m7

  cf4*5:maj7 bf4*5:m7 af4*5:m7 gf4*5:maj7
  cf4*5:maj7 bf4*5:m7 af4*5:m7 f2.:m7 bf2:m7

  ef2.:m bf2:m7 ef2.:m bf2:m7 ef2.:m bf2:m7 ef2.:m bf2:m7
  ef2.:m bf2:m7 ef2.:m bf2:m7 ef2.:m bf2:m7 ef4*5:m
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 5/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 160

  \partial 2 bf,8 ef8 gf8 af8 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  a8 bf8 a8 af8 gf4 bf,4 df4 | ef2. f16( gf16 f16 ef16) df4 |
  ef2. df16( ef16 df16 bf16) af4 | bf2. bf8 ef8 gf8 af8 |
  \break
  a8 bf8 a8 af8 gf4 bf,4 df4 | ef2. df16( ef16 df16 bf16) af4
  bf2. f'16( gf16 f16 ef16) df4 | ef2. r2 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  ef'8 gf4 ef8 cf4 af8 bf8 cf8 c8 | df8 f4 df8 bf4 gf8 af8 a8 bf8 |
  cf8 ef4 cf8 af4 f8 gf8 af8 a8 | bf8 a8 bf8 cf8 df4 df8 c8 df8 d8 |
  \break
  ef8 gf4 ef8 cf4 af8 bf8 cf8 c8 | df8 f4 df8 bf4 gf8 af8 a8 bf8 |
  cf8 ef4 cf8 af4 f8 af8 df8 cf8 | bf2. bf,8 ef8 gf8 af8 |

  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  a8 bf8 a8 af8 gf4 bf,4 df4 | ef2. f16( gf16 f16 ef16) df4 |
  ef2. df16( ef16 df16 bf16) af4 | bf2. bf8 ef8 gf8 af8 |
  \break
  a8 bf8 a8 af8 gf4 bf,4 df4 | ef2. df16( ef16 df16 bf16) af4
  bf2. f'16( gf16 f16 ef16) df4 | ef2. r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
