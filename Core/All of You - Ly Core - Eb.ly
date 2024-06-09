%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "All of You"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1954 Cole Porter"
}

refrainLyrics = \lyricmode {
I love the looks of you, the lure of you.
The sweet of you, the pure of you,
The eyes, the arms, the mouth of you,
the East, West, North and the South of you. __

I'd love to gain com -- plete con -- trol of you,
And hand -- dle e -- ven the heart and soul of you.
So love at least a small per -- cent of me, do, __
For I love all of you.
}

refrainChords = \chordmode {
  s2.
  
  af1:m6 ef1:maj7 f1:m7.5- bf1:7.9-
  af1:m6 ef1:maj7 af1:m7 df1:7

  g1:m7 gf1:dim7 f1:m7 bf1:7
  ef2:maj7 d2:7 g2:m7.5-/df c2:7.9- f1:m7 bf1:7

  af1:m6 ef1:maj7 f1:m7.5- bf1:7.9-
  af1:m6 ef1:maj7 g1:m7 c1:7.9-

  af1:maj7 a2:m7.5- d2:7.9- g2:m7 df2:9 c1:7
  f2:m7 c2:7 f2:m7 bf2:7 ef1:6 ef2:6
  \chordInsideParens{ f2:m7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120
  
  \partial 2. ef4 f4 g4 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  af2. g4 | g2. bf,4 | cf2. af'4 | af2. f4 |
  \break
  af2. g4 | g2. bf,4 | cf2. bf'4 | bf2. af4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  c2. bf4 | c2. bf4 | c2. d,4 | d2. c4 |
  \break
  bf'2 bf2 | bf4 df2 c4 | bf2 c,4 c4~ | c4 d4 ef4 f4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  af2. g4 | g2. bf,4 | cf2. af'4 | af2. f4 |
  \break
  af2. g4 | g4 bf,8 c8 d4 ef4 | c2. bf'4 | bf2. b4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }
  
  d4. c8 d4. c8 | d4 c8 ef8~ ef8 d8 c4 | g1~ | g2. c,4 |
  \break
  a'2 bf2 | c2 d,2 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
