%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "502 Blues"
  subtitle = \instrument
  poet = ""
  composer = "James Rowles"
  copyright = \markup \small { \now " " "© 1958 Kudu Music" }
}

refrainChords = \chordmode {
  s4

  a2.:m7 df2.:maj7.5+ b2.:m7.5- e2.:7.9-
  a2.:m7 df2.:maj7.5+ b2.:m7.5- e2.:7.9-
  c2.:m7 f2.:m7 bf4:maj7 \chordSlash 1 a4:m7 af4:m7 \chordSlash 1 df4:7
  fs2.:m7.5- b2.:7.9- e2.:maj7 \chordSlash 2 e4:7.5+

  a2.:m7 df2.:maj7.5+ b2.:m7.5- e2.:7.9-
  a2.:m7 df2.:maj7.5+ b2.:m7.5- e2.:7.9-
  c2.:m7 f2.:m7 bf4:maj7 \chordSlash 1 a4:m7 af4:m7 \chordSlash 1 df4:7
  fs2.:m7.5- b2.:7.9- e2.:m7 e2.:m7
}

refrainKey = a

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Wayne Shorter 1966]" 4 = 116

  \partial 4 \invisEighth e8 |
  \bar "||"

  \sectStart "A1"
  
  a2~ \tuplet 3/2 { a8 b8 a8 } | c2~ \tuplet 3/2 { c8 b8 a8 } | g8 e4.~ e4~ | e4 r4 r8 e8 |
  \break
  a2~ \tuplet 3/2 { a8 b8 a8 } | c2~ \tuplet 3/2 { c8 b8 a8 } | g8 e4.~ e4~ | e4 r4 r8 g8 |
  
  \sect "B"
  
  c2~ \tuplet 3/2 { c8 d8 c8 } | ef2~ \tuplet 3/2 { ef8 d8 f,8 } | bf4 c8 bf8 a8 bf8 | df4 ef,8 bf'8~ bf4 |
  \break
  b8 a8 gs8 a8 c4~ | \tuplet 4/3 { c4 ds,4 gs4 c4 } | ds2.~ | ds4 r4 \tuplet 3/2 { r8 d8 c8 } |
  
  \sect "A2"

  a2~ \tuplet 3/2 { a8 b8 a8 } | c2~ \tuplet 3/2 { c8 b8 a8 } | g8 e4.~ e4~ | e4 r4 r8 e8 |
  \break
  a2~ \tuplet 3/2 { a8 b8 a8 } | c2~ \tuplet 3/2 { c8 b8 a8 } | g8 e4.~ e4~ | e4 r4 r8 g8 |
  
  \sect "C"
  
  c2~ \tuplet 3/2 { c8 d8 c8 } | ef2~ \tuplet 3/2 { ef8 d8 f,8 } | bf4 c8 bf8 a8 bf8 | df4 ef,8 bf'8~ bf4 |
  \break
  b8 a8 gs8 a8 c8 ds8 | \tuplet 4/3 { gs4 c,4 ds4 gs,4 } | g2.~ | g2. |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
