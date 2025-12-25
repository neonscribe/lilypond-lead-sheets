%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Chinatown, My Chinatown"
  subtitle = \instrument
  poet = "William Jerome"
  composer = "Jean Schwartz"
  copyright = \markup \small { \now " " "© 1910 Jerome H. Remick & Co." }
}

refrainLyrics = \lyricmode {
Chi -- na -- town, my Chi -- na -- town, where the lights are low.
Hearts that know no oth -- er land, drift -- ing to and fro.
Dream -- y, dream -- y Chi -- na -- town, al -- mond eyes of brown.
Hearts seem light and life seems bright in dream -- y Chi -- na -- town.
}

refrainChords = \chordmode {
  c1 c1 c1 c1
  c1 c1 g1:7 g1:7
  
  g1:7 g1:7 a1:m a1:m
  d1:7 d1:7 g1:7 g1:7

  c1 c1 c1 c1
  c1:7 c1:7 f1 f1
  
  f1 f1:m6 c1 a1:7
  d1:7 d2:m7 g2:7 c1
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
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

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast [Louis Armstrong 1931]" 4 = 300

  \sectStart "A1"
  
  c'2 d2 | b2 g2 | a4 b4 g2~ | g1 |
  \break
  a2 b2 | g2 a2 | f1~ | f1 |
  
  \sect "B"
  
  e2 d2 | g2 e2 | d4 e4 c2~ | c1 |
  \break
  b'2 a2 | d2 b2 | a1~ | a1 |

  \sect "A2"

  c2 d2 | b2 g2 | a4 b4 g2~ | g1 |
  \break
  a2 g2 | c2 e2 | d1~ | d1 |

  \sect "C"
  
  d2 e2 | d2 c2 | a4 b4 g2~ | g2. a4 | 
  \break
  c2 a2 | c2 d2 | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
