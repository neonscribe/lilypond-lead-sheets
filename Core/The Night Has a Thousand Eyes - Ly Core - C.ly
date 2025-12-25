%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "The Night Has a Thousand Eyes"
  subtitle = \instrument
  poet = "Buddy Bernier"
  composer = "Jerry Brainin"
  copyright = \markup \small { \now " " "© 1948 Paramount Music Corporation" }
}

refrainChords = \chordmode {
  s4
  
  g1:maj7/d g1:maj7/d d1:sus7 d1:sus7
  g1:maj7/d g1:maj7/d d1:sus7 d1:7
  
  d1:m7 g1:7 c1:maj7 f1:7
  g1:maj7/d d1:sus7 g1/d
  
  d1:sus7
  
  g1:maj7
  
  c1:m7 f1:7 bf1:maj7 bf1:maj7
  bf1:m7 ef1:7 af1:maj7 af1:maj7
  
  a1:m7 d1:sus7 g1:maj7 e1:m7
  g1:maj7/d d1:sus7 g1:maj7/d \chordInsideParens{ d1:sus7 }
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
  \tempo "Fast Latin [John Coltrane 1960]" 4 = 220

  \partial 4 d4 |

  \sectStart "A1,A2"
  
  \bar ".|:-||"
  \repeat volta 2 {
  a'1~ | a2 fs4 d8 e8~ | e1~ | e2 r8 b'4 g8 |
  \break
  a4. a8 a8 a4 a8~ | a8 a4. fs4 d8 e8~ | e4. c8 b8 a4 d8~ | d2. d4 |
  \break
  d'1~ | d4 c8 b8 c8 d4 b8~ | b1~ | b2 a4 g4 |
  \break
  d4. d8~ d4 d4~ | d8 e8 fs8 d8 c8 fs4 g8~ | g1 |
  \alternative { \volta 1 {
  r2 r4 d4 |
  } \volta 2 {
  r2 r4 g4 |
  } } }

  \sect "B"
  
  bf4. bf8~ bf4 bf4~ | bf8 a8 bf8 df8~ df8 c4. | a1~ | a2 r4 a4 |
  \break
  af4. af8~ af4 af4~ | af8 g8 af8 b8~ b8 bf4. | g1~ | g1 |
  
  \sect "C"
  
  g2 g4. g8~ | g4. a8 b4 g4 | d'1~ | d2 c4 b4 |
  \break
  d,2 d4. d8~ | d8 e8 fs8 d8 c8 f4 g8~ | g1 | r2 r4
  \override Parentheses.font-size = #5
  \parenthesize d4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
