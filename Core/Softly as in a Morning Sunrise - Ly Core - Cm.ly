%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Softly, as in a Morning Sunrise"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Sigmund Romberg"
  copyright = \markup \small { \now " " "© 1928 Bambalina Music Publishing Co." }
}

refrainLyrics = \lyricmode {
  Soft -- ly, as in a morn -- ing sun -- rise,
  The light of love comes steal -- ing
  In -- to a new -- born day, oh!
  Flam -- ing, with all the glow of sun -- rise,
  A burn -- ing kiss is seal -- ing
  The vow that all be -- tray.
  For the pas -- sions that thrill love
  And lift you high to heav -- en,
  Are the pas -- sions that kill love
  And let you fall to hell!
  So ends each sto -- ry.
  Soft -- ly, as in an eve -- ning sun -- set,
  The light that gave you glo -- ry
  Will take it all a -- way.
}

refrainChords = \chordmode {
  c1:m7 d2:m7.5- g2:7.9- c1:m7 d2:m7.5- g2:7.9- 
  c1:m7 d2:m7.5- g2:7.9- c1:m7 d2:m7.5- g2:7.9- 

  c1:m7 d2:m7.5- g2:7.9- c1:m7 d2:m7.5- g2:7.9- 
  c1:m7 d2:m7.5- g2:7.9- c1:m7 f2:m7 bf2:7
  
  ef1:maj7 ef1:maj7 c1:7.9- c1:7.9-
  f1:m7 fs1:dim7 g1:7.9- d2:m7.5- g2:7.9-

  c1:m7 d2:m7.5- g2:7.9- c1:m7 d2:m7.5- g2:7.9- 
  c1:m7 d2:m7.5- g2:7.9- c1:m7
  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7.9- }
}

refrainKey = c

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [June Christy 1955]" 4 = 115

  \sectStart "A1"
  
  c2 g2 | r8 f8 g8 f8 g4 f4 | c'2 ef,2 | r8 d8 ef8 d8 ef4 d4 |
  \break
  g2 c,2 | r8 g'8 af8 g8 ef4 d4 | c1 | g'1 |
  
  \sect "A2"
  
  c2 g2 | r8 f8 g8 f8 g4 f4 | c'2 ef,2 | r8 d8 ef8 d8 ef4 d4 |
  \break
  g2 c,2 | r8 g'8 af8 g8 ef4 d4 | c1 | \tuplet 3/2 { r4 d4 ef4 } \tuplet 3/2 { f4 g4 af4 }
  
  \sect "B"
									       
  bf2 ef,2 | r8 bf'8 c8 bf8 c4 bf4 | bf2 e,2~ | \tuplet 3/2 { e4 e4 f4 } \tuplet 3/2 { g4 af4 bf4 }
  \break
  c2 f,2 | r8 c'8 d8 c8 d4 c4 | d2. d4 | f4 f4 ef4 d4 |
  
  \sect "A3"

  c2 g2 | r8 f8 g8 f8 g4 f4 | c'2 ef,2 | r8 d8 ef8 d8 ef4 d4 |
  \break
  g2 c,2 | r8 g'8 af8 g8 ef'4 d4 | c1~ | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
