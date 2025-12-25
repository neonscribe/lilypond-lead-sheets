%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Me and My Shadow"
  subtitle = \instrument
  poet = "Billy Rose"
  composer = "Dave Dreyer and Al Jolson"
  copyright = \markup \small { \now " " "© 1927 Irving Berlin Inc." }
}

refrainLyrics = \lyricmode {
Me and my shad -- ow stroll -- ing down the av -- en -- ue. __
Me and my shad -- ow, not a soul to tell our trou -- bles to. __
And when it's twelve o' -- clock __ we climb the stair. __
We nev -- er knock __ for no -- bod -- y's there, __
just Me and my shad -- ow all a -- lone and feel -- ing blue. __
}

refrainChords = \chordmode {
  ef1 ef1 af1:m f1:m7
  f1:7 f2:7 bf2:7 ef1 bf1:7
  
  ef1 ef1 d1:7 d1:7
  c1:m ef2:m f2:7 bf1:7 bf1:7
  
  ef1:7 ef1:7 af1:maj7 af2:maj7 df2:7
  c1:7 c1:7 f2:9 bf2:7 bf2:7 bf2:aug

  ef1 ef1 af1:m f1:m7
  f1:m7 f2:m7/bf bf2:7 ef1
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra and Sammy Davis, Jr. 1962]" 4 = 110

  \sectStart "A1"
  
  ef1 | g2  bf2 | b1 | c1 |
  \break
  f,4 g4 af4 c4 | ef2 d2 | bf1~ | bf1 |
  
  \sect "A2"

  ef,1 | g2 bf2 | d1 | c1 |
  \break
  ef4 ef4 d4 c4 | ef4 ef4 d4 f,4 | bf1~ | bf4 bf4 c4 d4 |

  \sect "B"
  
  ef4 a,4 c2~ | c2 bf2 | ef4 g,4 bf2~ | bf2 af2 |
  \break
  c4 g4 bf2~ | bf2 af2 | g4 f4 ef4 f4~ | f4 r4 bf2 |

  \sect "A3"

  ef,1 | g2  bf2 | b1 | c1 |
  \break
  f,4 g4 af4 c4 | ef2 d2 | ef1~ | ef4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
