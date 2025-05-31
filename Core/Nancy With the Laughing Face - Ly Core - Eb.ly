%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Nancy With the Laughing Face"
  subtitle = \instrument
  poet = "Phil Silvers"
  composer = "James Van Heusen"
  copyright = \markup \small "© 1944 Sands Music Corporation"
}

refrainLyrics = \lyricmode {
If I don't see her each day __ I miss her. Gee! What a thrill __ each time I kiss her.
Be -- lieve me I've got a case __ on Nan -- cy with the laugh -- ing face. __

She takes the win -- ter and makes __ it sum -- mer. Sum -- mer could take __ some les -- sons from her.
Pic -- ture a tom -- boy in lace. __ That's Nan -- cy with the laugh -- ing face. __

Do you ev -- er hear mis -- sion bells ring -- ing? Well, she'll give you the ver -- y same glow. __
When she speaks you would think __ it was sing -- ing. Just hear her say, “Hel -- lo.”

I swear to good -- ness you can't __ re -- sist her. Sor -- ry for you __ she has no sis -- ter.
No one could ev -- er re -- place __ my Nan -- cy with the laugh -- ing face. __
}

refrainChords = \chordmode {
  s2
  
  f1:m7 bf1:7.9- ef2:maj7 af2:7 g2:m7 gf2:dim7
  f2:m7 f2:m7/ef d2:m7.5- g2:7.5+ c2:m7 f2:7 bf2:sus7 bf4:7 c4:7.9-

  f1:m7 bf1:7.9- ef2:maj7 af2:7 g2:m7 gf2:dim7
  f2:m7 f2:m7/ef d2:m7.5- g2:7.5+ c2:m7 af4:m7 df4:9 ef2:6 g2:7.5+
  
  c1:m c1:m7+ c1:m7 f2:7 bf2:7.9-
  ef2:maj7 c2:m7 f2:m7 bf4:7 g4:7.5+ c2:m7 f2:7 bf2:sus7 bf4:7 c4:7.9-

  f1:m7 bf1:7.9- ef2:maj7 af2:7 g2:m7 gf2:dim7
  f2:m7 f2:m7/ef d2:m7.5- g2:7.5+ c2:m7 af4:m7 df4:9 ef2:6 \chordInsideParens{ c2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Frank Sinatra 1944]" 4 = 64

  \partial 2 \invisEighth bf8 bf8 a8 |
  \bar "||"

  \sectStart "A1"
  
  af8 af8 af8 af8~ af4 bf4 | g4 g2. | f8 ef8 f8 ef8~ ef4. d8 | f4 ef4 d4 df4 |
  \break
  r8 c8 b8 c8 bf'8 bf8 af8 f8~ | f2 g2 | f8 ef8 f8 ef8 f8 g4 bf,8~ | bf2 r8 bf'8 bf8 a8 |
  
  \sect "A2"

  af8 af8 af8 af8~ af4 bf4 | g4 g2. | f8 ef8 f8 ef8~ ef4. d8 | f4 ef4 d4 df4 |
  \break
  r8 c8 b8 c8 bf'8 bf8 af8 f8~ | f2 g2 | f8 ef8 f8 g8 ef8 ef4 ef8~ | ef2. ef8 f8 |
  
  \sect "B"
  
  g8 d'8 c8 g8~ g8 ef8 f8 g8~ | g4 g2 ef8 f8 | g8 d'8 c8 g8~ g8 ef8 f8 g8~ | g2. g8 af8 |
  \break
  bf8 f'8 ef8 bf8~ bf8 g8 af8 bf8~ | bf4 bf2 g4 | f4 ef4 f4 g4 | bf,2 r8 bf'8 bf8 a8 |

  \sect "A3"

  af8 af8 af8 af8~ af4 bf4 | g4 g2. | f8 ef8 f8 ef8~ ef4. d8 | f4 ef4 d4 df4 |
  \break
  r8 c8 b8 c8 bf'8 bf8 af8 f8~ | f2 g2 | f8 ef8 f8 g8 ef8 ef4 ef8~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
