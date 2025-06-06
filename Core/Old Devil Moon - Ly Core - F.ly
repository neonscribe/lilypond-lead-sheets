%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Old Devil Moon"
  subtitle = \instrument
  poet = "E. Y. Harburg"
  composer = "Burton Lane"
  copyright = \markup \small "© 1946 Chappell & Co."
}

refrainLyrics = \lyricmode {
  I look at you and sud -- den -- ly, some -- thing in your eyes I see
  soon be -- gins be -- witch -- ing me. __
  It's that
  old de -- vil moon __ that you stole from the skies. __
  It's that old de -- vil moon __ in your eyes. __
  You and your glance __
  make this ro -- mance __ too hot to han -- dle. __
  Stars in the night __ blaz -- ing their light __ can't hold a can -- dle __
  to your raz -- zle daz -- zle.
  You've got me fly -- in' high and wide on a mag -- ic car -- pet ride
  full of but -- ter -- flies in -- side. __
  Wan -- na
  cry wan -- na croon, __ wan -- na laugh like a loon, __
  It's that old de -- vil moon __ in your eyes. __
  Just when I think I'm free as a dove
  old dev -- il moon deep in your eyes blinds me with love. __

  old dev -- il moon deep in your eyes blinds me with love. __

}

refrainChords = \chordmode {
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7
  f1:maj7 ef1:maj7 f1:maj7 c2:m7 f2:7

  bf1:maj7 bf1:maj7 bf1:m7 ef1:7
  
  af2:m7 df2:7 gf2:maj7 c2:7 f1:maj7 ef1:maj7
  
  f2:maj7 ef2:maj7 f2:maj7 ef2:maj7 d1:maj7 d1:m7
  d1:m7 g1:7 g1:m7 c1:7
  
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7
  f1:maj7 ef1:maj7 f1:maj7 c2:m7 f2:7

  bf1:maj7 bf1:maj7 bf1:m7 ef1:7
  
  af2:m7 df2:7 gf2:maj7 c2:7 f1:maj7 ef1:maj7
  
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7
  f2:maj7 ef2:maj f2:maj7 ef2:maj f1:maj7
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
  
  f1:maj7 ef1:maj7 f1:maj7 ef1:maj7
  f2:maj7 ef2:maj7 f2:maj7 ef2:maj7 f1:maj7 f1:maj7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Latin to Swing" 4 = 130

  \xTextMark \markup{ \bold \box "A1" }
  
  f1^\markup { Latin } | ef8 ef8 ef8 ef8 ef4 g4 | f1 | g8 g8 g8 g8 g4 bf4 |
  \break
  a1 | bf8 bf8 bf8 bf8 bf4 d4 | c1~ | c2 c4^\markup { Swing } c4 |
  \sect "B1"

  c2 bf8 a4 f 8~ | f2 a4 bf4 | c2 bf8 a4 f8~ | f2 a4 bf4 |
  \break

  df2 cf8 bf4 gf8~ | gf2 a8 g4 f8~ | f1^\markup { Latin } | r2 ef8 c8 ef8 f8~ |
  \sect "C"

  f2 ef8 c8 ef8 g8~ | g2 \tuplet 3/2 { ef4 c4 ef4 } | a2^\markup { Swing } a2~ | a2 f8 d8 f8 a8~ |
  \break
  a2 f8 d8 f8 b8~ | b2 \tuplet 3/2 { f4 d4 f4 } | c'2 c2~ | 
  c8^\markup { Stop (head only) } d4 af8 g8 f8 d8 c8 |

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "A2" }
  
  f1^\markup { Latin } | ef8 ef8 ef8 ef8 ef4 g4 | f1 | g8 g8 g8 g8 g4 bf4 |
  \break
  a1 | bf8 bf8 bf8 bf8 bf4 d4 | c1~ | c2 c4^\markup { Swing } c4 |
  \sect "B2"

  c2 bf8 a4 f 8~ | f2 a4 bf4 | c2 bf8 a4 f8~ | f2 a4 bf4 |
  \break

  df2 cf8 bf4 gf8~ | gf2 a8 g4 f8~ | f1^\markup { Latin } | r2 ef8 c8 ef4 |
  
  \xTextMark \markup{ \bold \box "D" }

  f2 f2~ | f2 ef8 c8 ef4 | f1~ | f2 \tuplet 3/2 { ef'4 ef4 ef4 } |
  \break

  c2 \tuplet 3/2 { bf4 c4 bf4 } | a2 \tuplet 3/2 { f4 ef4 g4 } | c1~ | c2 r2 \textToCodaLastTime |
  \bar ".|:-|."

  \textCodaBreak

  \repeat volta 2 {
    r1 |
  \xTextMark \markup{ "Vamp" }
    r1 |
  }
  r1 | 
  r2 \tuplet 3/2 { ef4 ef4 ef4 } |
  \break
  c2 \tuplet 3/2 { bf4 c4 bf4 } | a2 \tuplet 3/2 { f4 ef4 g4 } | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
