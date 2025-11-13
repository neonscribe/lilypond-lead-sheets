%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "It's You or No One"
  subtitle = \instrument
  poet = "Sammy Cahn"
  composer = "Jule Styne"
  copyright = \markup \small { \now " " "© 1948 Warner Bros, Inc." }
}

refrainLyrics = \lyricmode {
It's you or no one for me. __ I'm sure of this, __ each time we kiss. __
Now and for -- ev -- er, and when for -- ev -- er's done, you'll find that you are still the one. __
Please don't say “No” to my plea, __ 'cause if you do __ then I'm all through. __
There's this a -- bout you, my world's an emp -- ty world with -- out you.
It's you or no one for me. __
}

refrainChords = \chordmode {
  f1:m7 bf2:7 bf2:7.9- ef2:maj7 af2:9 g2:m7 c2:7.9-
  f1:m7 bf1:7 g2:m7 c2:m7 bf2:m7 ef2:7

  af1:m7 df1:7 gf1:maj7 ef2:m7 f2:7.9-
  bf2:maj7 g2:m7 c2:m7 f2:7.9- f1:m7 bf2:7 g4:m7 gf4:m7

  f1:m7 bf2:7 bf2:7.9- ef2:maj7 af2:9 g2:m7 c2:7.9-
  f1:m7 bf1:7 g1:m7.5- c1:7.9-

  af1:m7 df1:7 ef2:maj7 c2:m7 af2:m7 df2:7
  f1:m7 bf2:7 bf2:7.9- ef1:6 ef2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ gf4:m7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Doris Day 1948]" 4 = 170

  \sectStart "A1"
  
  r4 bf4 bf4 bf4 | bf4 f2 g4 | bf,1~ | bf4 c4 bf4 g'4 |
  \break
  f1~ | f4 ef4 d4 c'4 | bf1~ | bf1 |
  
  \sect "B"
  
  r4 df4 df4 df4 | df4 af2 bf4 | cf4 bf4 af4 gf4 | df2. ef4 |
  \break
  f4 g4 f4 d'4 | c2. a4 | f1~ | f1|

  \sect "A2"

  r4 bf4 bf4 bf4 | bf4 f2 g4 | bf,1~ | bf4 c4 bf4 g'4 |
  \break
  f1~ | f4 ef4 d4 c'4 | bf1~ | bf1 |
  
  \sect "C"
  
  r4 ef4 ef4 ef4 | ef4 ef,2 f4 | g4 af4 bf4 ef4 df4 cf4 df4 cf4 |
  \break
  r4 bf4 bf4 bf4 | bf4 f2 g4 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
