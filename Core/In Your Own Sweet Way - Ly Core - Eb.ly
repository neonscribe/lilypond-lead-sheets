%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "In Your Own Sweet Way"
  subtitle = \instrument
  poet = "Iola Brubeck"
  composer = "Dave Brubeck"
  copyright = "© 1955 Derry Music Co."
}

refrainLyrics = \lyricmode {
}

refrainHLChords = \chordmode {
  s4
  
  a2:m11.5- d2:7.5-.9- g2:m7 c2:9 c2:m9 f2:13 bf2:6 ef2:maj7
  af2:m7 df2:7 gf2:maj7 cf2:maj9 c2:m7.5+ f2:13.9-
  
  bf1:6.9

  bf1:6.9

  e2:m11 a2:13 d1:maj13 e2:m11 a8:13.9- a4.:13 d1:maj13
  d2:m7 g2:13.11+ e2:m11 a2:7.5-.9- d2:m7.5- af2:13 g2:7 c2:m7
  
  a2:m11.5- d2:7.5-.9- g2:m7 c4:9 c4:7.9- c1:m11 gf4/f ef8:sus13 bf8*5:6.9
  af2:m7 df2:7 gf4.:maj7 cf8*5:maj9 c2:m7.5+ f2:13.9- bf1:1.3.5.9/f
}

refrainNRChords = \chordmode {
  \chordInsideParens{ ef4:6 }
  
  a2:m7 d2:7 g2:m7 c2:7 c2:m7 f2:7 bf2:7 ef2:maj7
  af2:m7 df2:7 gf2:maj7 cf2:maj7 f2:7.9+ cf2:7
  
  bf2:7 ef2:6

  bf2:7 ef2:6

  e2:m7 a2:7 d1:maj7 e2:m7 a2:7 d1:maj7
  d2:m7 g2:7 e2:m7 a2:7 d2:m7.5- af2:7 g2:7 c2:m7
  
  a2:m7 d2:7 g2:m7 c2:7 c2:m7 f2:7 bf2:7 ef2:maj7
  af2:m7 df2:7 gf2:maj7 cf2:maj7 f2:7.9+ cf2:7 bf1:7
}

refrainChords = \refrainNRChords

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 122
  
  \partial 4 ef'8 bf8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  d2 c2 | bf1 | r4 \tuplet 3/2 { d8 ef8 f8 } ef4 d4 | bf4 c8 d8~ d2 |
  \break
  r8 cf8 df8 ef8 df8 ef16 df16 cf4 | bf4 df8 gf,8~ gf4 bf4 | af2 gf2 |
  \alternative { \volta 1 {
  f2 r8 g8 \tuplet 3/2 { a8 bf8 ef8 } |
  } \volta 2 {
  f,4. f8 g8 a8 bf8 c8 |
  } } }
  \sect "B"
  
  a2 b2 | cs4. cs8 e8 cs8 a8 f8 | r8 a8 a8 a8 bf8 b4. | fs'4 fs8 fs8~ fs2 |
  \break
  r8 c4. cs4 d4 | g4 g8 g8~ g4 gf4 |
  \tuplet 3/2 { f4 f,4 c'8 f8 } \tuplet 3/2 { ef4 f,4 bf8 ef8 } |
  \tuplet 3/2 { d4 f,4 af8 d8 } c4 ef8 bf8 |

  \sect "A3"
  
  d2 c2 | bf1 | r4 \tuplet 3/2 { d8 ef8 f8 } ef4 d4 | bf4 c8 d8~ d2 |
  \break
  r8 cf8 df8 ef8 df8 ef16 df16 cf4 | bf4 df8 gf,8~ gf4 bf4 | af2 gf2 | f1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
