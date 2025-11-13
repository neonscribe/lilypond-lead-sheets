%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "My Shining Hour"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Harold Arlen"
  copyright = \markup \small { \now " " "© 1943 Harwin Music Co." }
}

refrainLyrics = \lyricmode {
This will be my shin -- ing hour. __ Calm and hap -- py and bright. __
In my dreams, your face will flow -- er through the dark -- ness of the night. __
Like the lights of home be -- fore me, or an an -- gel watch -- ing o'er me.
This will be my shin -- ing hour, __ till I'm with you a -- gain. __
}

refrainChords = \chordmode {
  ef1:maj7 f2:m7 bf2:sus7 ef1:maj7 f2:m7 bf2:7
  ef2:maj7 f2:m7 g2:m7 c2:7.5+ f2:m7 bf2:7 d2:m7.5- g2:7.9-

  c1:m7 a1:m7.5- d1:m7.5- g1:7
  c1:m7 f1:7 f1:m7 bf1:7
  
  bf1:m7 ef1:7 af1:maj7 af1:maj7
  af1:m7 df1:7 g2:m7.5+ c2:7.9+ f2:m7 bf2:7

  ef1:maj7 f2:m7 bf2:sus7 ef2:maj7 f2:m7 g2:m7 bf2:7
  af1:maj7 f2:m7 bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Slow [Casa Loma Orchestra 1943]" 4 = 110

  \sectStart "A1"
  
  g2. af4 | bf2 ef,2 | g2. g4 | g2( bf,2) |
  \break
  g'2. af4 | bf4 ef,4 af2 | bf,1~ | bf1 |
  
  \sect "A2"
  
  ef2. f4 | g2 c,2 | f2 f2 | f2 d2 |
  \break
  ef2. f4 | g4 ef4 a4 f4 | bf1~ | bf1 |

  \sect "B"

  bf2. c4 | ef2 d2 | ef,2 ef2 | ef2 bf'2 |
  \break
  ef,2 ef2 | ef2 bf'2 | ef,2 ef2 | ef2 bf'2 |

  \sect "A3"

  g2. af4 | bf2 ef,2 | g2 af2 | bf2( c2) |
  \break
  ef2 ef,2 | af4 g4 f2 | ef1~ | ef2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
