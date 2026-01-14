%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 16))
  

\header {
  title = "Sweet Lorraine"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Cliff Burwell"
  copyright = \markup \small { \now " " "© 1928 Mills Music Inc." }
}

refrainLyrics = \lyricmode {
  I've just found joy, __ I'm as hap -- py as a ba -- by boy __
  with an -- oth -- er brand new choo -- choo toy, __
  When I met my sweet Lor -- raine. __
  
  A pair of eyes __ that are bright -- er than the sum -- mer skies. __
  When you see them you will re -- a lize __
  why I love my sweet Lor -- raine.
  
  When its rain -- ing I don't miss the sun,
  for it's in my sweet -- ie's smile. __
  Just to think that I'm the luck -- y one
  Who will lead her down the aisle. __
  
  Each night I pray __ that no -- bod -- y steals her heart a -- way. __
  Just can't wait un -- til that hap -- py day __
  when I mar -- ry sweet Lor -- raine.
}

refrainNRChords = \chordmode {
  \chordInsideParens{ d4:7.5+ }
  
  g4:6 f4:7.11+ e2:7 a2:m7 d4:7 b4:7.9- 
  e4:m7 \chordInsideParens{ ef4:7 } d4:m7 g4:7.5+ c2:7 b2:7.9-
  e2:7 a2:7 a2:m7d2:7 b2:m7 e2:7 a2:m7 d2:7.5+

  g4:6 f4:7.11+ e2:7 a2:m7 d4:7 b4:7.9- 
  e4:m7 \chordInsideParens{ ef4:7 } d4:m7 g4:7.5+ c2:7 b2:7.9-
  e2:7 a2:7 a2:m7d2:7 g2:6 c4:7 cs4:dim7 g2:6/d d4:m7 g4:7
  
  c2:6 e2:7 a4:m7 \chordInsideParens{ af4:7 } g4:m7 c4:7
  f2:maj7 e2:7 a4:m7 \chordInsideParens{ af4:7 } g4:m7 c4:7
  f2:7 e2:7 ef2:9.11+ d2:7
  f2:7 e2:7 ef2:9.11+ d4:7 d4:7.5+

  g4:6 f4:7.11+ e2:7 a2:m7 d4:7 b4:7.9- 
  e4:m7 \chordInsideParens{ ef4:7 } d4:m7 g4:7.5+ c2:7 b2:7.9-
  e2:7 a2:7 a2:m7 d2:7.9- g2:6
  \chordOpenParen{ c4:7 }
  cs4:dim7 g2:6/d
  \chordCloseParen{ d2:7 }
}

refrainChords = \refrainNRChords

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Moderately Slow Swing [Nat King Cole 1941]" 4 = 82

  \partial 4 as4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  b4 b4 b2~ | b4 a8 b8 c8 d8 b8 a8 | g4 g4 g2~ | g4 fs8 g8 a8 b8 g8 fs8 |
  \break
  e4 e4 e2~ | e4 d8 e8 fs8 g8 a8 b8 | d1~ | d2. as4 |
  
  \sect "A2"
  
  b4 b4 b2~ | b4 a8 b8 c8 d8 b8 a8 | g4 g4 g2~ | g4 fs8 g8 a8 b8 g8 fs8 |
  \break
  e4 e4 e2~ | e4 d8 e8 fs8 g8 a8 b8 | g1 | r1 |
  
  \bar "||"
  
  \xPageBreak

  \sectNoBar "B"
  
  c8 d8 e8 f8 e4 d4 | c4 c4 c2 | c8 d8 e8 f8 e8 d4 c8~ | c1 |
  \break
  a8 b8 c8 d8 c4 b4 | a4 a4 a2 | a8 b8 c8 d8 c4 b8 a8~ | a2. as4 | 
  
  \sect "A3"

  b4 b4 b2~ | b4 a8 b8 c8 d8 b8 a8 | g4 g4 g2~ | g4 fs8 g8 a8 b8 g8 fs8 |
  \break
  e4 e4 e2~ | e4 d8 e8 fs8 g8 a8 b8 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
