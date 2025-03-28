%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Fascinating Rhythm"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small "© 1924 Warner Bros., Inc."
}

refrainLyrics = \lyricmode {
Fas -- ci -- nat -- ing rhy -- thm, you've got me on the go.
Fas -- ci -- na -- ting rhy -- thm, I'm all a qui -- ver.
What a mess you're mak -- ing, the neigh -- bors want to know
why I'm al -- ways shak -- ing just like a fliv -- ver.
Each morn -- ing I get up with the sun, start a hop -- ping nev -- er stop -- ping.
To find at night, no work has been done.
I know that once it did -- n't mat -- ter but now you're do -- ing wrong.
When you start to pat -- ter, I'm so un -- hap -- py.
Won't you take a day off? De -- cide to run a -- long
some -- where far a way off and make it snap -- py.
Oh, how I long to be the man I used to be.
Fas -- ci -- nat -- ing rhy -- thm oh, won't you stop pick -- ing on me!
}

refrainChords = \chordmode {
  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 ef1:7 ef1:7
  af1 f2:m7 bf2:7 ef1 ef1:7
  c1:m7 c2:m7 f2:7 bf1:7 cs1:dim7

  bf1:7 bf1:7 bf1:7 bf1:7
  ef1:7 ef1:7 ef1:7 ef1:7
  af1 d2:m7.5- g2:7 c2:m c2:m/bf f1:7
  bf1:7 bf1:7 ef1 ef1
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \xTextMark \markup{ \bold \box "A1" }
  
  f8 af8 g8 f8 bf8 bf8 r8 f8 | af8 g8 f8 bf8 bf8 r8 f8 af8 | g8 f8 bf8 bf8 r8 f8 af8 g8 | f4 bf,2. |
  \break
  bf'8 df8 c8 bf8 ef8 ef8 r8 bf8 | df8 c8 bf8 ef8 ef8 r8 bf8 df8 | c8 bf8 ef8 ef8 r8 bf8 df8 c8 | bf4 ef,2. |

  \sect "B"
  
  r4 ef4 af4 bf4 | c4 bf8 d8~ d8 bf8 c4 | g1 | bf8 g8 g8 g8 bf8 g8 g8 g8 |
  \break
  r4 ef4 g4 bf4 | ef4 d8 f8~ f8 c8 d4 | bf1 | r4 c4 af4 g4 |
  
  \sect "A2"
  
  f8 af8 g8 f8 bf8 bf8 r8 f8 | af8 g8 f8 bf8 bf8 r8 f8 af8 | g8 f8 bf8 bf8 r8 f8 af8 g8 | f4 bf,2. |
  \break
  bf'8 df8 c8 bf8 ef8 ef8 r8 bf8 | df8 c8 bf8 ef8 ef8 r8 bf8 df8 | c8 bf8 ef8 ef8 r8 bf8 df8 c8 | bf4 ef,2. |

  \sect "C"
  
  r4 ef4 af4 bf4 | c4 c8 d8~ d8 c8 d4 | r4 ef4 f8 d4. | c1 |
  \break
  f,8 af8 g8 f8 bf8 bf8 r8 f8 | af8 g8 f8 c'8~ c8 ef8 g,4 | ef1~ | ef8 r8 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
