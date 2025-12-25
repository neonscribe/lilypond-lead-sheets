%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "St. Louis Blues"
  subtitle = \instrument
  poet = ""
  composer = "W.C. Handy"
  copyright = \markup \small { \now " " "© 1914 Handy Bros. Music Co. Inc." }
}

refrainChords = \chordmode {
  s2

  g1:m g1:m d1:7 d1:7
  d1:7 d1:7
  
  g1:m g1:m
  
  g2:m a2:7 d1:7
  
  g1:7 c1:7 g1:7 g1:7
  c1:7 c1:7 g1:7 g1:7
  d1:7 c1:7 g1:7 d1:7

  g1:7 g1:7 g1:7 g1:7
  c1:7 c1:7 g1:7 g1:7
  d1:7 d1:7 g1:7 
  \chordInsideParens{ d1:7 }
}

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up [Artie Shaw 1939]" 4 = 176

  \partial 2 \invisEighth d'8^\markup { Latin } d8 bf8 |

  \xTextMark \markup{ \bold \box "A1, A2" }

  \bar ".|:"
  \repeat volta 2 {
  d8 d4.~ d2 | r8 c8 c8 cs8 d8 bf4. | a1 | r2 r8 c8 c8 a8 |
  \break
  c8 c4.~ c2 | r8 c8 c8 cs8 d8 a4. 
  } \alternative { {
  | g1 | r2 r8 d'8 d8 bf8 |
  } {
  g2 a2 | d4. c8~ c2 |
  } }
  \sect "B"
  \key \refrainKey \major
  
  b8^\markup { Swing } d8 b8 g8~ g2 | r8 ds8 e8 g8 bf4 a8 g8~ | g1 | r1 |
  \break
  r8 e8 g8 a8~ a2 | r8 e8 g8 a8 bf4 a8 g8~ | g1 | r1 |
  \break
  f8 a8 f8 d8~ d2 | r8 bf'4 bf8 bf4 a8 g8~ | g1 | r1 |
  
  \sect "C"
  
  g4 bf8 b8 g4 a8 b8 | g4 bf8 b8 g8 a8 b8 g8~ | g1 | r2 r4 bf8 b8 |
  \break
  a4 g8 e8 g4 a8 bf8 | a4 g8 e8 g8 a8 bf8 g8~ | g1 | r2 r4 bf8 b8 |
  \break
  d4 bf8 b8 d,8 bf'8 b8 c,8~ | c8 bf'8 b8 d,8~ d8 bf'8 b8 g8~ | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Solo on " \box{ "B" } " 12-bar blues." }