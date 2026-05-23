%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Nardis"
  subtitle = \subtitle
  poet = ""
  composer = "Miles Davis"
  copyright = \markup \small { \now " " "© 1958 Jazz Horn Music" }
}

refrainChords = \chordmode {
  s2

  e1:m7 f1:maj7 b1:7 c1:maj7
  a1:m7 f1:maj7 e1:maj7

  e1:m7

  e1:m7 f1:maj7 b1:7 c1:maj7
  a1:m7 f1:maj7 e1:maj7

  e1:m7

  a1:m7 f1:maj7 a1:m7 a1:maj7
  d1:m7 g1:7 c1:maj7 f1:7

  e1:m7 f1:maj7 b1:7 c1:maj7
  a1:m7 f1:maj7 e1:maj7 e1:m7
}

refrainKey = e

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium-Up [Bill Evans 1961]" 162

  \partial 2 b2 |
  \bar "||"

  \sectNoBarNoBreak "A1"

  e1 | r8 ds,8 e8 e'8 ds4. c8 | b1~ | b1 |
  \break
  r8 b4. a4 g4 | e4. a8~ a2 | \tuplet 3/2 { gs8 a8 gs8 } f2 e4~ |
  e2 b'2 |

  \sect "A2"

  e1 | r8 ds,8 e8 e'8 ds4. c8 | b1~ | b1 |
  \break
  r8 b4. a4 g4 | e4. a8~ a2 | \tuplet 3/2 { gs8 a8 gs8 } f2 e4~ |
  e2 e2 |

  \sect "B"

  b'2. b4~ | b2 b,8 c8 e8 g8 | b2. b4~ | b2. r4 |
  \break
  r8 e4. d4 c4 | e2 d2 | b2. b4~ | b2 b2 |

  \sect "A3"

  e1 | r8 ds,8 e8 e'8 ds4. c8 | b1~ | b1 |
  \break
  r8 b4. a4 g4 | e4. a8~ a2 | \tuplet 3/2 { gs8 a8 gs8 } f2 e4~ | e2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
