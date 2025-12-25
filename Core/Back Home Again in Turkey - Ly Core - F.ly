%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Back Home Again in Turkey"
  subtitle = \instrument
  poet = ""
  composer = "Matt Glaser"
  copyright = \markup \small { \now " " "© 2014 Berklee College of Music" }
}

straightEighths = ##t

refrainChords = \chordmode {
  s4

  f1 d1:7 g1:7 g1:7
  c1:7 g2:m7 c2:7 f1 f1:7
  
  bf1 bf1:m f1 f1
  g1:7 g1:7 c1:7 c1:7

  f1 d1:7 g1:7 g1:7
  a1:7 a1:7 d1:7 a1:7
  
  d1:m a1:7 d1:m7 b1:dim7
  f1:7 c1:7 f1 f1
}

refrainKey = f

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
  \tempo "Straight Eighths, Medium Fast" 4 = 175

  \partial 4 a8 \parenthesize g8 |

  \sectNoBreak "A1"
  
  f4 f8 g8 f8 c8 a8 bf8 | c8 d8 ef8 f8 d4 f8 g8 | a4 a4 a8 g8 f8 g8 | a4 e'8 cs8~ cs4 e8 cs8 |
  \break
  c4 c8 d8 c8 a8 e8 f8 | g8 a8 bf8 c8 df8 b8 c8 bf8 | a8 c4 d8 c2 | a8 f8 g8 e8 f8 a8 cs8 f8 |
  
  \sect "B"
  
  d8 f4 d8 f4 f4 | df8 f4 df8 f4. c8~ | c8 f4 c8 f4 a8 g8 | f8 d8 bf8 g8 a8 c8 a8 f8 |
  \break
  e8 f8 a8 c8 cs4 e8 d8 | a4 c8 b8~ b8 af'8 g8 f8 | e8 g8 ef4 d8 f8 df4 | c8 df16 c16 b8 c8 cs8 e8 a8 g8 |

  \sect "A2"
  
  f8 e8 f8 g8 f8 c8 a8 bf8 | c8 d8 c8 a8 c4 f8 g8 |
  a4 f8 d8 cs8 d8 f8 a8 | cs4 e8 cs8~ cs4 \tuplet 3/2 { e,8 a8 cs8 } |
  \break
  e4 e,8 d'8 \tuplet 3/2 { cs8 d8 cs8 } e,8 bf'8 | \tuplet 3/2 { a8 bf8 a8 } e8 d8 cs8 e8 g8 e8 |
  a8 f8 g8 a8 f8 e8 d8 f8 | g8 e8 f8 g8 e8 cs8 bf4 |

  \sect "C"
  
  a8 gs8 a8 bf8 b8 bf8 b8 c8 | cs8 c8 cs8 c8 b8 bf8 a8 g8 |
  f8 e8 f8 g8 f8 c8 a8 as8 | b8 d8 f8 af8 b4 g'8 e8 |
  \break
  f8 c8 b8 d8 c8 a8 gs8 bf8 | a8 f8 e8 g8 f4 f'8 e8 | f4 f,4 f4 c'8 bf8 | a8 c8 f8 b,8~ b2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
