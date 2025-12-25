%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Bye Bye Blues"
  subtitle = \instrument
  poet = ""
  composer = "Fred Hamm, Dave Bennett, Bert Lown and Chauncey Gray"
  copyright = \markup \small { \now " " "© 1930 Bourne Co." }
}

refrainLyrics = \lyricmode {
Bye bye blues. __ Bye bye blues. __ Bells ring, birds sing.
Sun is shin -- ing, no more pin -- ing.
Just we two. __ Smil -- ing thru. __ Don't sigh, don't cry,
Bye bye blues. __
}

refrainLyricsTwo = \lyricmode {
}

refrainAGJChords = \chordmode {
  %% Anthologie des Grilles de Jazz

  c1 c1 af1:7 af1:7
  c1 e1:m7.5- a1:7 a1:7

  d1:7 d1:7 g1:7 g1:7
  c1/e ef1:dim7 d2:m7 g2:7 d2:m7 g2:7.5+

  c1 c1 af1:7 af1:7
  c1 e1:m7.5- a1:7 a1:7

  d1:7 d1:7 g1:7 g1:7
  c1 af1:7 c1
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainHLBanjoChords = \chordmode {
  %% Hal Leonard Tenor and Plectrum Banjo Book

  c1 c1 af1:7 af1:7
  c1 c1 a1:7 a1:7

  d1:7 d1:7 g1:7 g1:7
  c1 c1:dim7 g1:7 g2:7 g2:7.5+

  c1 c1 af1:7 af1:7
  c1 c1 a1:7 a1:7

  d1:9 d1:7 g1:13 g1:7
  c1 af1:7 c1 c1
}

refrainHLPVGChords = \chordmode {
  %% Hal Leonard Piano-Vocal-Guitar Book

  c1 c1 af1:7 af1:7
  c1 c1 a1:7 a1:7

  d1:9 d1:7 g1:13 g1:7
  e2:m7 c2/e ef1:dim7 d1:m7 g2/a g2:7

  c1 c1 af1:7 af1:7
  c1 c1 a1:7 a1:7

  d1:9 d1:9 g1:13 g1:7
  c1 af1:7 c1 \chordInsideParens{ g1:7 }
}

refrainUGChords = \chordmode {
  %% Ultimate Guitar Les Paul

  c1 c1 af1:7 af1:7
  c1 c1 a1:7 a1:7

  d1 d1 g1:9 g1:9
  c1 ef1:dim7 d1:m g1:9

  c1 c1 af1:7 af1:7
  c1 c1 a1:7 a1:7

  d1 d1 g1:9 g1:9
  c1 f1:m7 c1:6 c1:6
}

refrainChords = \refrainUGChords

refrainKey = c

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
  \tempo "Medium [Les Paul & Mary Ford 1952]" 2 = 135

  \xTextMark \markup{ \bold \box "A1" }

  e'1 | g,1 | af1~ | af1 |
  \break
  e'1 | g,1 | a1~ | a1 |

  \sect "B"

  e'1 | a,1 | e'1 | b1 |
  \break
  d2 c2 | b2 a2 | c2 b2 | a2 g2 |
  
  \sect "A2"

  e'1 | g,1 | af1~ | af1 |
  \break
  e'1 | g,1 | a1~ | a1 |
  
  \sect "C"

  e'1 | a,1 | e'1 | b1 |
  \break
  c1 | af1 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
