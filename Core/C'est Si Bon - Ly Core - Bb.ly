%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "C'est Si Bon (It's So Good)"
  subtitle = \instrument
  poet = "Andre Hornez/Jerry Seelen"
  composer = "Henri Betti"
  copyright = \markup \small "© 1947 Arpege Editions"
}

refrainChords = \chordmode {
  s2
  
  c1:m7 f1:7 bf2:maj7 ef2:maj7 d2:m7 g2:7
  c1:m7 f1:7 bf2:6 ef2:7 d2:m7.5- g2:7.9-

  c1:m7 f1:7 bf2:maj7 ef2:maj7 d2:m7 g2:7
  c1:m7 f1:7 bf1:6 af2:m7 df2:7
  
  gf2:maj7 ef2:m7 af2:m7 df2:7 gf1:maj7 gf1:maj7
  g1:m7 c1:7 c1:m7 f2:7 d4:m7 df4:m7

  c1:m7 f1:7 bf2:maj7 ef2:maj7 d2:m7 g2:7
  c1:m7 f1:7 d1:m7.5- g1:7.9-
  
  c1:m7 ef1:m6 bf1:maj7 bf1:maj7
  df2:m7 gf2:7 c2:m7 f2:7 bf1:6 c2:m7 f2:7
  
  bf2:6 a2:6 bf1:6
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Eartha Kitt 1953]" 4 = 140
  
  \partial 2 f4 e4 |

  \xTextMark \markup{ \bold \box "A1" }
  
  \bar ".|:"
  \repeat volta 2 {
  ef1~ | ef8 f4 g8 a8 g8 f4 | d1~ | d8 f4 g8 a8 g8 f4 |
  ef1~ | ef8 f8 g8 a8 d8 a4 g8~ | g1~ | g2 f4 e4 |
  
  \sect "A2"
  
  ef1~ | ef8 f4 g8 a8 g8 f4 | d1~ | d8 f4 g8 a8 g8 f4 |
  ef1~ | ef8 f8 g8 a8 d8 f,4 bf8~ | bf1~ | bf4 r4 bf4 b4 |
  
  \sect "B"
  
  df2 bf4 af4 | gf 2 f4 ef4 | ef2 df2~ | df4 r4 bf'4 b4 |
  c2 bf4 a4 | g2 a4 bf4 | d1 | c4 r4 f,4 e4 |
  \bar "||"
  
  \xPageBreak
  \sectNoBarNoBreak "A3"
  
  ef1~ | ef8 f4 g8 a8 g8 f4 | d1~ | d8 f4 g8 a8 g8 f4 |
  ef1~ | ef8 f8 g8 a8 d8 f4 f8~ | f1~ | f2 f4 e4 |
  
  \sect "C"
  
  ef1~ | ef8 d4 c8 ef8 d8 c4 | d1~ | d8 d4 c8 bf8 a8 g4 |
  gf1~ | gf8 f8 g8 a8 d8 f,4 bf8~ |
  } \alternative {{
    bf1 | r2 f4 e4 |
    } {
      bf'2\repeatTie a2 | bf4 r4 r2 |
    }}
      

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
