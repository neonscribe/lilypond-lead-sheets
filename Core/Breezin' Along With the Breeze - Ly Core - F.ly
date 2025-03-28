%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Breezin' Along With the Breeze"
  subtitle = \instrument
  poet = ""
  composer = "Haven Gillespie, Seymour Simons and Richard A. Whiting"
  copyright = \markup \small "© 1926 Jerome H. Remick & Co."
}

refrainLyrics = \lyricmode {
I'm just breez -- in' a -- long with the breeze. __
Trail -- in' the rails, __ roam -- in' the seas __
like the bird -- ies that sing __ in the trees. __
Pleas -- in' to live, __ liv -- in' to please. __

The sky is the on -- ly roof I have o -- ver my head
and when I'm wear -- y, Moth -- er Na -- ture makes me a bed.
I'm just go -- in' a -- long as I please, __
breez -- in' a -- long __ with the breeze. __
}

refrainChords = \chordmode {
  f1 f1 a2:7 a2:7.5+ d1:7
  g2:7 g2:7.5- c2:7 g4:m7 c4:7 f1 df1:7

  f1 f1 a2:7 a2:7.5+ d1:7
  g2:7 g2:7.5- c2:7 g4:m7 c4:7 f1 f1:7
  
  bf2 f4:aug bf4 bf4 bf4:m6 bf4 f4:7 bf1 bf2 bf2:m 
  f2 f4:dim7 f4 d1:m g1:9 c1:7

  f1 f1 a2:7 a2:7.5+ d1:7
  g1:7 c2:9 c2:7 f2 f2:dim7 f2. \chordInsideParens{ c4:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Nat King Cole 1955]" 4 = 126

  \sectStart "A1"
  
  c2. d4 | f8 g8 a8 c8~ c8 a8 c4 | a1~ | a2 c8 a8 c4 |
  \break
  a1~ | a2 a8 f8 a4 | f1~ | f4 r4 r2 |
  
  \sect "A2"

  c2. d4 | f8 g8 a8 c8~ c8 a8 c4 | a1~ | a2 c8 a8 c4 |
  \break
  a1~ | a2 a8 f8 a4 | f1~ | f4 r4 r4 f4 |
  
  \sect "B"
  
  d'2 cs4 d4 | f,4 g4 bf4 c4 | d2 d8 cs8 d4 | bf1 |
  c2 b4 c4 | d,4 e4 f4 g4 | a4 a4 a8 gs8 a4 | g1 |
  
  \sect "A3"

  c,2. d4 | f8 g8 a8 c8~ c8 a8 c4 | a1~ | a2 c8 a8 c4 |
  \break
  d1~ | d2 c8 a4. | f1~ | f2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
