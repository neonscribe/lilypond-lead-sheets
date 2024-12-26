%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "In Love In Vain"
  subtitle = \instrument
  poet = "Leo Robin"
  composer = "Jerome Kern"
  copyright = "© 1946 T.B. Harms Co."
}

refrainLyrics = \lyricmode {
It's on -- ly hu -- man for an -- y -- one to want to be in love
but who wants to be in love in vain?
At night you hang a -- round the hall
and eat your heart out
and cry your eyes out
and rack your brains.

You sit and won -- der why an -- y -- one as won -- der -- ful as she
should cause you such mis -- er -- y and pain.
I thought that I would be in hea -- ven
But I'm on -- ly up a tree
'cause it's just my luck to be in love in vain.
}

jazzRealefrainChords = \chordmode {
  s2.

  ef2 c2:m7 f2:m7 bf2:7 ef2 c2:m7 f2:m7 bf2:7
  ef1:maj7 af2:maj7 bf2:7 g1:m7 c1:7.9-

  f2:m7 bf2:7 ef1 d1:m7 g2:7 c2:m
  c1:m7 f1:7 f1:m7 bf1:7

  ef2 c2:m7 f2:m7 bf2:7 ef2 c2:m7 f2:m7 bf2:7
  ef1:maj7 af2:maj7 bf2:7 g1:m7.5- c1:7.9-
  
  af1:6 af1:dim7 ef1/bf bf2:m7 ef2:7
  f1:m7 bf1:7 ef1:6

  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:11 }
}

classicRealIIIRefrainChords = \chordmode {
  s2.

  bf2:6.9 g2:m7 c2:m7 f2:7 d2:m7 g2:m7 c2:m7 f2:7
  bf1:maj7 c2:m7 f2:7 d1:m7 g1:7
  
  c2:m7 c2:m7/bf a2:m7.5- d2:7.9- g2:m g2:m7+ g2:m7 g2:m6
  g1:m7 c1:7 c1:m7 f1:sus7

  bf2:6.9 g2:m7 c2:m7 f2:7 d2:m7 g2:m7 c2:m7 f2:7
  bf1:maj7 c2:m7 f2:7 f1:m7 bf1:7

  ef1:maj7 e2:m7.5- a2:7.9- d2:m7 af2:7.11+ g1:7
  c1:m7 f1:7 bf1:6.9 bf1:6.9
}

refrainChords = \transpose bf ef { \classicRealIIIRefrainChords }

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \partial 2. c4 ef4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  ef4 ef2 f4 | ef4 d4 c4 bf4 | c4 d4 ef4 g4 | f2. f4 |
  g4 g2 af4 | g4 f4 ef4 d4 | bf'1~ | bf4 g4 bf4 g4 |
  
  \sect "B"
  
  af4 af4 af4 bf4 | af4 g4 f4 ef4 | f4 r4 f2~ | f4 g4 c4 g4 |
  f4 r4 f2~ | f4 g4 c4 g4 | f1~ | f4 c4 ef4 c4 |
  
  \sect "A2"
  
  ef4 ef2 f4 | ef4 d4 c4 bf4 | c4 d4 ef4 g4 | f2. f4 |
  g4 g2 af4 | g4 f4 ef4 d4 | bf'1~ | bf4 bf4 af4 g4 |

  \sect "C"
  
  f4 ef'4 ef4 ef4 | ef4 ef4 d4 c4 | ef,4 bf'4 bf4 bf4 | bf2 af4 g4 |
  c4 af4 af4 af4 | d4 bf4 af4 f4 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
