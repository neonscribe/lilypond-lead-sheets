%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Love Me or Leave Me"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Walter Donaldson"
  copyright = \markup \small { \now " " "© 1928 Donaldson, Douglas & Gumble, Inc." }
}

refrainLyrics = \lyricmode {
Love me or leave me, or let me be lone -- ly,
you won't be -- lieve me, and I love you on -- ly.
I'd rath -- er be lone -- ly than hap -- py with some -- bod -- y else. __

You might find the night -- time the right time for kiss -- ing,
but night -- time is my time for just rem -- i -- nis -- cing.
Re -- gret -- ing, in -- stead of for -- get -- ting with some -- bod -- y else. __

There'll be no -- one un -- less that some -- one is you. __
I in -- tend __ to be in -- de -- pen -- dent -- ly blue. __

I want your love, but I don't want to bor -- row,
to have it to -- day, and to give back to -- mor -- row.
For my love is your love, there's no love for no -- bod -- y else. __
}

refrainChords = \chordmode {
  f1:m7 g2:7 c2:7 f1:m7 g2:7 c2:7 
  af2:maj7 f2:m7 bf2:m7 ef2:7
  
  af1:6 g2:m7.5- c2:7
  
  f1:m7 g2:7 c2:7 f1:m7 g2:7 c2:7 
  af2:maj7 f2:m7 bf2:m7 ef2:7

  af2:6 df2:7 af1:6
  
  c1:m7 f1:7 bf2:m7 f2:7.9- bf1:m7
  bf1:m7 ef1:7 c2:m7 b2:dim7 bf2:m7 c2:7.9-

  f1:m7 g2:7 c2:7 f1:m7 g2:7 c2:7 
  af2:maj7 f2:m7 bf2:m7 ef2:7 af1:6

  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7 }
}

refrainKey = af

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad [Billie Holiday 1941]" 4 = 92

  \sectStart "A1"

  c'8 c4 c8 c,8 c4 c8 | d8 d4 d8 e8 e4. | c'8 c4 c8 c,8 c4 c8 | d8 d4 d8 e8 e4 c'8 | 
  \break
  ef8 ef4 ef8 ef,8 ef4 ef8 | f8 f8 f8 bf8~ bf8 af8 bf8 af8~ |

  af1~ | af4 r4 r4 b4 |

  \sect "A2"
  
  c8 c4 c8 c,8 c4 c8 | d8 d4 d8 e8 e4 e8 | c'8 c4 c8 c,8 c4 c8 | d8 d4 d8 e8 e4 c'8 | 
  \break
  ef8 ef4 ef8 ef,8 ef4 ef8 | f8 f8 f8 bf8~ bf8 af8 bf8 af8~ |

  af1~ | af2 r2 |


  \sect "B"
  
  c4 ef8 c8~ c8 ef8 c4 | a4 c8 g8~ g8 a8 f4 | df'2( c2 | bf1) |
  \break
  bf4 df8 bf8~ bf8 df8 bf4 | g4 bf8 f8~ f8 g8 ef4 | ef'2( d2 | df1) |

  \sect "A3"

  c8 c4 c8 c,8 c4 c8 | d8 d4 d8 e8 e4 e8 | c'8 c4 c8 c,8 c4 c8 | d8 d4 d8 e8 e4 c'8 | 
  \break
  ef8 ef4 ef8 ef,8 ef4 ef8 | f8 f8 f8 bf8~ bf8 af8 bf8 af8~ | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
