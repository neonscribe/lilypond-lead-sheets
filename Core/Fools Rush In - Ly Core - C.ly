%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Fools Rush In (Where Angels Fear to Tread)"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Rube Bloom"
  copyright = \markup \small { \now " " "© 1940 Warner Bros, Inc." }
}

refrainLyrics = \lyricmode {
Fools rush in where an -- gels fear to tread, and so I come to you, my love, my heart a -- bove my head.
Though I see the dan -- ger there, if there's a chance for me then I don't care.

Fools rush in where wise men nev -- er go, but wise men nev -- er fall in love, so how are they to know?
When we met I felt my life be -- gin, so o -- open up your heart and let this fool rush in.
}

refrainChords = \chordmode {
  d1:m7 g1:9 c1:maj9 a1:m7
  d1:m7 g1:7 c1:maj9 a1:7.9-
  
  d1:m7 d2:m7 g2:9 c1 a1:m7
  d2:7.5- a2:m7 d1:7 d1:m7/g g1:7

  d1:m7 g1:9 c1:maj9 a1:m7
  d1:m7 g1:7 bf1:7.5- a1:7
  
  d1:m7 f1:m6 c1:maj9 a1:m7
  d2:m7 af2:9.11+ g1:7 c1:6
  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7 }
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
  \tempo "Medium [Rick Nelson 1963]" 4 = 122

  \sectStart "A1"
  
  a4. a8 a2~ | a4 b4 e8 d8 b8 a8 | g1~ | g4 a4 c8 b8 a8 g8 |
  \break
  f4. f8 f2~ | f4 g4 b8 a8 g8 f8 | e1~ | e2 a4 e4 |
  
  \sect "B"
  
  d1~ | d4 a'4 g4 e4 | c1~ | c4 d4 e4 g4 |
  \break
  gs4. a8 a2~ | a4 a4 b4 c4 | d1~ | d1 |

  \sect "A2"

  a4. a8 a2~ | a4 b4 e8 d8 b8 a8 | g1~ | g4 a4 c8 b8 a8 g8 |
  \break
  f4. f8 f2~ | f4 g4 b8 a8 g8 f8 | e1~ | e1 |
  
  \sect "C"
  
  d4. d8 d2~ | d4 f4 af4 c4 | e4. e8 e2~ | e4 e4 d8 c8 a8 c8 |
  \break
  d4. d8 d2~ | d4 d4 c4 b4 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
