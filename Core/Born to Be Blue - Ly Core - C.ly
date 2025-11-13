%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Born to Be Blue"
  subtitle = \instrument
  composer = "Mel Tormé & Robert Wells"
  copyright = \markup \small { \now " " "© 1946 Wells Music Inc. and Arc Music" }
}

refrainLyrics = \lyricmode {
Some folks were meant to live in clo -- ver, __
But they are such a cho -- sen few.
And clo -- ver be -- ing green,
Is some -- thing I've nev -- er seen
'cause I was born to be blue.

When there's a yel -- low moon a -- bove me, __
They say there's moon -- beams I should view,
But moon -- beams be -- ing gold,
Are some -- thing I can't be -- hold
'cause I was born to be blue.

When I met you
the world was bright and sun -- ny;
When you left the cur -- tain fell. __
I'd like to laugh, __
but noth -- ing strikes me fun -- ny;
Now my world's a fad -- ed pas -- tel. Well,

I guess I'm luck -- i -- er than some folks; __
I've known the thrill of lov -- ing you.
And that a -- lone is more than I was cre -- at -- ed for,
'cause I was born to be blue.
}

refrainSRBChords = \chordmode {
  c2:9 df:9 c2:9 gf2:9.11+ f2:9 ef2:9
  af2:maj7 g2:7.5+.9- c2:m7 df2:9.11+ c2:m7 f2:9

  f2:m7 d2:7.5+.9+ d2:m7.5- g2:7.5+.9-

  c2:9 df:9 c2:9 gf2:9.11+ f2:9 ef2:9
  af2:maj7 g2:7.5+.9- c2:m7 df2:9.11+ c2:m7 f2:9

  f2:m7 af4:9 g4:7.5+.9- c1:6

  af2:m7 df2:9 af2:m9 df2:9 af2:m9 df2:13.9- gf1:maj7
  df2:m9 gf2:9 cf4:maj7 cf4:maj7/bf af4:m9 af4:m9/gf
  f2:m9 bf2:13 ef2:maj7 d4:m7.5- g4:7.5+.9-

  c2:9 df:9 c2:9 gf2:9.11+ f2:9 ef:9
  af2:maj7 g2:7.5+.9- c2:m7 df2:9.11+ c2:m7 f2:9
  f2:m7 af4:9 g4:7.5+.9- c2:6
  \chordInsideParens{ df2:9 }
}

refrainHLChords = \chordmode {
  c2:7 df2:7 c2:7 gf2:7.5- f2:7 ef2:7 af4:maj7 \chordSlash 1 d4:m7.5- g4:7.9-
  c2:m7 df2:7 d2:m7 f2:7
  
  f2:m7 af2:7.5- g2:7 g2:7.5+

  c2:7 df2:7 c2:7 gf2:7.5- f2:7 ef2:7 af4:maj7 \chordSlash 1 d4:m7.5- g4:7.9-
  c2:m7 df2:7 d2:m7 f2:7
  
  f2:m7 af4:7 g4:7.5+ c1:6

  af2:m7 df2:7 af2:m7 df2:7 af2:m7 df2:7 gf1:maj7
  df2:m7 gf2:7 cf2:maj7 af2:m7 f2:m7 bf2:7 ef2:maj7 d4:m7.5- g4:7.5+

  c2:7 df2:7 c2:7 gf2:7.5- f2:7 ef2:7 af4:maj7 \chordSlash 1 d4:m7.5- g4:7.9-
  c2:m7 df2:7 d2:m7 f2:7 f2:m7 af4:7 g4:7.5+ c2:6 \chordInsideParens{ g2:7.5+ }
}

refrainChords = \refrainHLChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Chet Baker 1964]" 4 = 70

  \sectStart "A1"

  r8 c8 a8 g8 af8 df8 bf8 af8 | a8 c4.~ c2 |
  \break
  r8 g8 f8 ef8 g8 c8 g8 f8 | ef2. r8 d8 |
  \break
  ef8 ef8 d8 ef8 g8( f4) c8 | \tuplet 3/2 { ef8 f8 ef8 } d8 ef8 g8( f4.) |
  \break
  r8 c8 d8 c8 d8 b8 c4 | g'1 |

  \sect "A2"

  r8 c8 a8 g8 af8 df8 bf8 af8 | a8 c4.~ c2 |
  \break
  r8 g8 f8 ef8 g8 c8 g8 f8 | ef2. r8 d8 | 
  \break
  ef8 ef8 d8 ef8 g8( f4) c8 | \tuplet 3/2 { ef8 f8 ef8 } d8 ef8 g8( f4.) |
  \break
  r8 c8 d8 c8 ef8 c8 ef4 | c1 |
  \bar "||"

  \xPageBreak
  \sectNoBarNoBreak "B"

  r8 bf'8 bf8 af8 bf4. af8 | bf8 df8 bf8 af8 bf8 df4. |
  \break
  bf8 df8 bf8 af8 bf4 af8 f8~ | f2 r8 df8 c8 df8 |
  \break
  af'2~ af8 gf8 ff8 ef8 | gf4 af4 bf8 cf4. |
  \break
  bf8 f8 g8 af8 \tuplet 3/2 { bf4 bf4 bf4 } | g2 g2 |
  
  \sect "A3"

  r8 c8 a8 g8 af8 df8 bf8 af8 | a8 c4.~ c2 |
  \break
  r8 g8 f8 ef8 g8 c8 g8 f8 | ef2. r8 d8 |
  \break
  ef8 ef8 d8 ef8 g8( f4) c8 | \tuplet 3/2 { ef8 f8 ef8 } d8 ef8 g8( f4.) |
  \break
  r8 c8 d8 c8 ef8 c8 ef4 | c1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
