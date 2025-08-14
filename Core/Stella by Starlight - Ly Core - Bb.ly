%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Stella by Starlight"
  subtitle = \instrument
  poet = "Ned Washington"
  composer = "Victor Young"
  copyright = \markup \small "© 1946 Famous Music Corporation"
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  #{
  \lyricmode {
  The song __ a rob -- in sings __ 
  through years __ of end -- less springs. __
  The mur -- mur of a brook at ev -- en -- tide __
  that rip -- ples by a nook where two lov -- ers hide. __
  A great __ sym -- phon -- ic theme, __
  that's Stel -- la by star -- light __ and not a dream. __
  She's all __ of these and more, __
  She's ev -- 'ry -- thing __ that you'd a -- dore. __
  (The)
  }
  #} #{ 
  \lyricmode {
  The song __ a rob -- in sings __ 
  through years __ of end -- less springs. __
  The mur -- mur of a brook at ev -- en -- tide __
  that rip -- ples by a nook where two lov -- ers hide. __
  A great __ sym -- phon -- ic theme, __
  that's Stel -- la by star -- light __ and not a dream. __
  My heart __ and I a -- gree __ 
  she's ev -- 'ry -- thing on earth to me. __
  (The)
  }
  #}
)

refrainChords = \chordmode {
  \chordInsideParens{ f4:7 }

  e1:m7.5- a1:7.9- c1:m7 f1:7
  f1:m7 bf1:7 ef1:maj7 af1:7

  bf1:maj7 e2:m7.5- a2:7.9- d1:m7 bf2:m7 ef2:7
  f1:maj7 e2:m7.5- a2:7.9- a1:m7.5- d1:7.9-

  g1:7.5+ g1:7.5+ c1:m7 c1:m7
  af1:7.11+ af1:7.11+ bf1:maj7 bf1:maj7

  e1:m7.5- a1:7.9- d1:m7.5- g1:7.9-
  c1:m7.5- f1:7.9- bf1:maj7

  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Miles Davis 1958]" 4 = 85

  \partial 4 bf4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  a1~ | a4 g4 a4 bf4 | f1~ | f2 f2 |
  \break
  g1~ | g4 f4 f4 g4 | bf,1~ | bf2 c2 |
  
  \sect "B"
  
  ef4 d4 c4 bf4 | d2. e4 | g4. f8 f2~ | f2. g4 |
  \break
  bf4 a4 g4 f4 | g2 a4 bf4 | d4. c8 c2~ | c2 d2 |
  
  \sect "C"
  
  ef1~ | ef4 ef4 ef4 d4 | f1~ | f4 ef4 \tuplet 3/2 { d4 c4 bf4 } |
  \break
  d2 d2~ | d4 c4 bf4 a4 | c1~ | c2 bf2 |
  
  \sect "A2"

  a1~ | a4 g4 a4 bf4 | f1~ | f4 f4 f4 ef4 |
  \break
  gf1~ | gf4 gf4 gf4 f4 | f1~ | f2. \parenthesize bf4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
