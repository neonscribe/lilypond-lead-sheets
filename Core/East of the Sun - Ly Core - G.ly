%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "East of the Sun (and West of the Moon)"
  subtitle = \instrument
  poet = ""
  composer = "Brooks Bowman"
  copyright = \markup \small "© 1934 Brooks Bowman"
}

refrainLyrics = \lyricmode {
East of the sun __ and west of the moon, __
We'll build a dream house __ of love, dear.
Close to the sun in the day,
Near to the moon at night.
We'll live in a love -- ly way, dear,
liv -- ing on love and pale moon -- light.
Just you and I, __ for -- ev -- er and a day. __
Love will not die; __ we'll keep it that way. __
Up a -- mong the stars we'll find a har -- mo -- ny of life to a love -- ly tune,
East of the sun and west of the moon, dear,
East of the sun and west of the moon. __
}

refrainChords = \chordmode {
  g1:maj7 g1:maj7 b1:m7 e1:7
  a1:m7 a1:m7 c1:m7 f1:7

  a1:m7 d1:7 fs2:m7.5- b2:7 e1:m7
  a1:7 a1:7 a1:m7 d1:7

  g1:maj7 g1:maj7 b1:m7 e1:7
  a1:m7 a1:m7 c1:m7 f1:7

  a2:m7 a2:m7/g fs2:m7.5- b2:7.9- e1:m7 a1:7
  a1:m7 c2:m6 d2:7 b1:m7 bf1:m7 
  
  a1:m7  d1:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \xTextMark \markup{ \bold \box "A1" }
  
  \tuplet 3/2 { d4 d4 d4 } fs2~ | fs2 e2 | \tuplet 3/2 { b4 b4 b4 } fs'2~ | fs1 |
  \break
  \tuplet 3/2 { e4 e4 e4 } b'4 b4~ | b2 a2 | c1 | ef,1 |

  \sect "B"

  \tuplet 3/2 { c'4 c4 c4 } \tuplet 3/2 { d4 d4 d4 } | | b1 | \tuplet 3/2 { fs4 fs4 fs4 } b4 b4 | g2. g4 |
  \break
  \tuplet 3/2 { fs4 fs4 fs4 } a4 a4 | fs2 e2 | \tuplet 3/2 { c'4 c4 c4 } d4 d4 | b4 b4 a2 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "A2"
  
  \tuplet 3/2 { d,4 d4 d4 } fs2~ | fs2 e2 | b8 b8 b8 b8 fs'2~ | fs1 |
  \break
  \tuplet 3/2 { e4 e4 e4 } b'2~ | b2 a2 | \tuplet 3/2 { c4 c4 c4 } ef,2~ | ef1 |

  \sect "C"

  c'4 b4 d4. c8 | b4 a4 c4. b8 | g8 g8 g8 g8 b4 b8 b8 | fs4 fs4 a2 |
  \break
  \tuplet 3/2 { c,4 e4 g4 } b4 a4 | c2 b4 b4 | d1 | df1 |
  \break
  
  \tuplet 3/2 { c4 c4 c4 } e,4 e4 | b'2 b4 b4 | g1~ | g2. r4 |

   \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
