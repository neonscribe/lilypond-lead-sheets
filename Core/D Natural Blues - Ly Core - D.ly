%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "D-Natural Blues (Monterey Blues)"
  subtitle = \instrument
  poet = ""
  composer = "Wes Montgomery"
  copyright = \markup \small { \now " " "© 1961 Taggie Music Co." }
}

refrainChords = \chordmode {
  s4
  
  s2 s8 d8:7 s4 s2 s8 g8:7 s4 s1 s2 s8 d4.:7
  g1:7 g1:7 d1:7 d1:7
  e1:m7 a1:7 d1:7
  \chordOpenParen{ e2:m7 }
  \chordCloseParen{ a2:7 }

  d1:7 g1:7 d1:7 d1:7
  g1:7 g1:7 d1:7 d1:7
  e1:m7 a1:7 d2:7 g2:7 d2:7 a2:7
}

refrainKey = d

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
  \tempo "Medium-Up [Wes Montgomery 1960]" 4 = 184

  \partial 4 \invisEighth a8 |

  \sectNoBreak "Head"
  
  d8 d8 \tuplet 3/2 { d8 a8 c8 } r4 \tuplet 3/2 { r8 d,8 f8 } | g8 g8 \tuplet 3/2 { g8 d8 f8 } r4 a8 c8 |
  d8 f4. d8 c8 a8 d,8 | af'8 g8 \tuplet 3/2 { fs8 d8 fs8 } r4 d8 f8 |
  \break
  g8 a4.~ a8 d,8 af'8 g8 | f8 d4.~ d8 a'4 g8 | ds16 fs16 d4.~ d8 c'8 a8 g8 | ds16 fs16 d4.~ d8 b8 d8 fs8 | 
  \break
  g4 a4-. r4 \tuplet 3/2 { r8 d,8 f8 } | g8 g8 g8 f8 \tuplet 3/2 { g16 af16 g16 } f8 \tuplet 3/2 { d8 a8 cs8 } |
  d4. d'8~ \tuplet 3/2 { d8 c8 a8 } \tuplet 3/2 { g8 d8 fs8~ } | fs8 d8 a8 g8~ g4 r4 |

  \sect "Solos"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s4 r2 r8 d8 r4 s4 r2 r8 d8 r4 r1 s4 r2 r8 d4.
}



\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
