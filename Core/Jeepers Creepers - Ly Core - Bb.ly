%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Jeepers Creepers"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Harry Warren"
  copyright = \markup \small "© 1938 M. Witmark & Sons"
}

refrainLyrics = \lyricmode {
Jeep -- ers creep -- ers! Where'd ya get those peep -- ers? __
Jeep -- ers creep -- ers! Where'd ya get those eyes?

Gosh all git up! How'd they get so lit up? __
Gosh all git up! How'd they get that size?

Gol -- ly gee! When you turn those heat -- ers on, __
Woe is me! Got to put my cheat -- ers on. __

Jeep -- ers creep -- ers! Where'd ya get those peep -- ers? __
Oh! Those weep -- ers! How they hyp -- no -- tize! __
Where'd ya get those eyes?
}

refrainChords = \chordmode {
  c2:m7 f2:7 bf1:6 c2:m7 f2:7 bf1:6 
  c2:m7 f2:7 bf1:6 c2:m7 f2:7 bf1

  c2:m7 f2:7 bf1:6 c2:m7 f2:7 bf1:6 
  c2:m7 f2:7 bf1:6 c2:m7 f2:7 bf1

  f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7 ef1:maj7
  g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7 f1:7

  c2:m7 f2:7 bf1:6 c2:m7 f2:7 bf1:6 
  c2:m7 f2:7 d2:m7 g2:7 c2:m7 f2:7 bf2 g2:7 c2:m7 f2:7 bf1
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Louis Armstrong 1939]" 4 = 165

  \sectStart "A1"
  
  d'2 c2 | c2 bf2 | r8 c4 c8 bf4 a4 | g4. f8~ f2 |
  \break
  d'2 c2 | c2 bf2 | r8 c4 c8 bf4 a4 | bf1 |
  
  \sect "A2"

  d2 c2 | c2 bf2 | r8 c4 c8 bf4 a4 | g4. f8~ f2 |
  \break
  d'2 c2 | c2 bf2 | r8 c4 c8 bf4 a4 | bf1 |
  
  \sect "B"
  
  bf2 g2 | bf1 | r8 bf4 af8 g4 f4 | d4 ef8 c8~ c2 |
  \break
  c'2 a2 | c1 | r8 c4 bf8 a4 g4 | g4 a8 f8~ f2 |
  
  \sect "A3"

  d'2 c2 | c2 bf2 | r8 c4 c8 bf4 a4 | g4. f8~ f2 |
  \break
  d'2 c2 | c2 b2 | r8 c4 c8 bf4 a4 | bf2( d2) | r8 c4 c8 bf4 a4 | bf2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
