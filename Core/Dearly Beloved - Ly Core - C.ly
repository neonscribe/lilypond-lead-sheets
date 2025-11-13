%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Dearly Beloved"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Jerome Kern"
  copyright = \markup \small { \now " " "© 1942 Chappell & Co. Inc." }
}

refrainLyrics = \lyricmode {
Dear -- ly be -- lov -- ed how clear -- ly I see,
Some -- where in hea -- ven you were fash -- ioned for me.
An -- gel eyes __ knew you. __ An -- gel voi -- ces led me to you. __
Noth -- ing could save me, fate gave me a sign.
I know that I'll be yours come show -- er or shine.
So I say __ mere -- ly, __ dear -- ly be -- lov -- ed be mine. __
}

refrainChords = \chordmode {
  d1:m7/g g1:7 d1:m7/g g1:7 
  d1:m7/g g1:7 d1:m7/g g1:7
  
  c1:maj7 a1:m7 d1:m7 g1:7
  e1:m7 a1:m7 ef1:m7 af1:7

  d1:m7/g g1:7 d1:m7/g g1:7 
  d1:m7/g g1:7 d1:m7/g g1:7
  
  c1:maj7 a1:m7 d1:7 d1:7
  d1:m7 g1:7 c1:6 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Fred Astaire 1942]" 4 = 130

  \sectStart "A1"
  
  g2 d4. e8 | f4 g2 a4 | g2 d4. g8 | f1 |
  \break
  g2 d4. e8 | f4 g4 a4 c4 | b2 g4. b8 | a1 |
  
  \sect "B"
  
  g4 a4 c2~ | c1 | c,2 g'2~ | g1 |
  \break
  g4 b4 d2~ | d4 df4 c4 b4 | bf2 af2~ | af1 |
  
  \sect "A2"

  g2 d4. e8 | f4 g2 a4 | g2 d4. g8 | f1 |
  \break
  g2 d4. e8 | f4 g4 a4 c4 | b2 g4. b8 | a1 |
  
  \sect "C"

  g4 a4 c2~ | c1 | d,2 b'2~ | b1 |
  \break
  g2 d4. e8 | f4 g2 e4 | c1~ | c2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
