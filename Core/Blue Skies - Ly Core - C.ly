%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Blue Skies"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = "© 1927 Irving Berlin"
}

refrainLyrics = \lyricmode {
  Blue skies __ smi -- ling at me. __
  No -- thing but blue skies __ do I see. __
  Blue -- birds __ sing -- ing a song; __
  No -- thing but blue -- birds __ all day long. __

  Ne -- ver saw the sun shi -- ning so bright.
  Ne -- ver saw things go -- ing so right.
  No -- tic -- ing the days hur -- ry -- ing by;
  When you're in love, my how they fly.

  Blue days, __ all of them gone. __
  No -- thing but blue skies __ from now on. __
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  a1:m a1:m/gs a1:m/g a1:m/fs
  c2 a2:7 d2:m7 g2:7 c1 b2:m7.5- e2:7
  
  a1:m a1:m/gs a1:m/g a1:m/fs
  c2 a2:7 d2:m7 g2:7 c1 c1
  
  c1 f2:m6 c2 f2:m c2 g2:7 c2
  c1 f2:m6 c2 f2:m6 c2 b2:m7.5- e2:7.5+

  a1:m a1:m/gs a1:m/g a1:m/fs
  c2 a2:7 d2:m7 g2:7 c1 b2:m7.5- e2:7
  \set chordChanges = ##f
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing" 4 = 160

  \mark \markup{ \box "A1" }
  
  a2 e'2~ | e2 d8 c8 d4 | e1~ | e2 d8 c8 d4 |
  \break
  e2 g,2~ | g2 g4 a4 | c1~ | c1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  a2 e'2~ | e2 d8 c8 d4 | e1~ | e2 d8 c8 d4 |
  \break
  e2 g,2~ | g2 g4 a4 | c1~ | c1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  c8 d8 e8 f8 g2 | af8 g8 f4 g2 | f8 e8 d4 e2 | d8 c8 b4 c2 |
  \break
  c8 d8 e8 f8 g2 | af8 g8 f4 g2 | f8 e8 d4 e2 | d8 c8 b4 c2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  a2 e'2~ | e2 d8 c8 d4 | e1~ | e2 d8 c8 d4 |
  \break
  e2 g,2~ | g2 g4 a4 | c1~ | c1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
