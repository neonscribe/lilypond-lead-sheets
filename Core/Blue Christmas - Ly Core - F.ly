%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Blue Christmas"
  subtitle = \instrument
  poet = ""
  composer = "Billy Hayes and Jay Johnson"
  copyright = \markup \small "© 1948 Choice Music Inc."
}

refrainLyrics = \lyricmode {
I'll have a blue Christ -- mas with -- out you.
I'll be so blue just think -- ing a -- bout you.
Dec -- o -- ra -- tions of red on a green Christ -- mas tree
Won't mean a thing, dear, if you're not here with me.
And when those blue slow -- flakes start fall -- ing,
that's when those blue mem -- 'ries start call -- ing.
You'll be do -- in' all right with your Christ -- mas of white,
but I'll have a blue, blue, blue, blue Christ -- mas.
}

refrainChords = \chordmode {
  s2.

  f1:maj7 f2:maj7/a af2:dim7 g2:m7 df2:9.11+ c1:9
  g1:m7 c1:7 f1:6 f1:6
  
  a2:m7.5- d2:7 a2:m7.5- d2:7 g1:m7 g1:m7
  g1:7 g1:7 c2:7 d4:m7 ds4:dim7 c2:7/e g4:m7 c4:7.9-

  f1:maj7 f2:maj7/a af2:dim7 g2:m7 df2:9.11+ c1:9
  g1:m7 c1:7 f1:6 f1:6
  
  a2:m7.5- d2:7 a2:m7.5- d2:7 g1:m7 gs1:dim7
  c1:7/g c2:9 c2:7.9- f1:6 f2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow [Elvis Presley 1957]" 4 = 92

  \partial 2. c4 f4 g4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  a1 | a4 g2 f4 | e4 g2.~ | g4 c,4 e4 g4 |
  \break
  bf2. bf4 | bf4 a2 g4 | f4 a2.~ | a2 a4 bf4 |
  
  \sect "B"
  
  c2 bf4 a4 | c2 bf4 a4 | g2 g4 a4 | bf1 |
  \break
  a2 g4 f4 | a4 g2 f4 | e4 e4 f4 fs4 | g4 c,4 f4 g4 |

  \sect "A2"
  
  a1 | a4 g2 f4 | e4 g2.~ | g4 c,4 e4 g4 |
  \break
  bf1 | bf4 a2 g4 | f4 a2.~ | a2 a4 bf4 |
  
  \sect "C"

  c2 bf4 a4 | c2 bf4 a4 | g2 a4 bf4 | d2. d,4 |
  \break
  c2 e4 f4 | g2 \tuplet 3/2 { a4 a4 a4 } | g4 f2.~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
