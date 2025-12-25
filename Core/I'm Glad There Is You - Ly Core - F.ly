%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "I'm Glad There Is You"
  subtitle = \instrument
  poet = ""
  composer = "Paul Madeira and Jimmy Dorsey"
  copyright = \markup \small { \now " " "© 1942 Mayfair Music Corp." }
}

refrainLyrics = \lyricmode {
In this world of or -- di -- na -- ry peo -- ple, ex -- tr'or -- di -- na -- ry peo -- ple,
I'm glad there is you.

In this world of o -- ver -- rat -- ed pleas -- ures, of un -- der -- rat -- ed treas -- ures,
I'm glad there is you.

I'll live to love, I'll love to live with you be -- side me.
This role so new, I'll mud -- dle through with you to guide me.

In this world where man --y, man -- y play at love, and hard -- ly an -- y stay in love,
I'm glad there is you.
More than ev -- er, I'm glad there is you.
}

refrainChords = \chordmode {
  f1:maj7 f1:maj7 f1:m7 f1:m7
  g1:m7 c1:7 f2:maj7 d2:7.9- g2:m7 c2:7
  
  f1:maj7 f2/a af2:dim7 g1:m7 c1:7
  f1:maj7 d1:7.9- g1:m7 c2:7 c4:m7 f4:7
  
  bf1:maj7 bf2:m7 ef2:7 f1:maj7 e2:m7.5- a2:7.9-
  d1:m7 g1:7 g1:m7 c1:7

  f1:maj7 f1:maj7 f1:m7 f1:m7
  g1:m7 c1:7 c1:m7 f1:7

  bf1:maj7 g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
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
  \tempo "Ballad [Julie London 1955]" 4 = 62

  \sectStart "A1"
  
  e8 e4 e8~ e2~ | e4 e4 a8 a8 e8 e8 | ef8 ef4.~ ef2~ | ef 4 ef4 af8 af8 ef8 ef8 |
  \break
  d8 d4.~ d2~ | d4 d4 \tuplet 3/2 { e4 f4 g4 } | c1~ | c2 r2 |
  
  \sect "A2"
  
  c8 c4 c8~ c2~ | c4 c4 e8 e8 d8 d8 | bf8 bf4.~ bf2~ | bf4 bf4 d8 d8 c8 c8 |
  \break
  a8 a4.~ a2~ | a4 a4 c8 bf8 a8 g8~ | g1~ | g4 a4 bf4 c4 |
  
  \sect "B"

  c2~ c8 f,8 g8 a8 | c4 bf4 f4 g4 | a4. a8~ a2~ | a4 e4 f4 g4 |
  \break
  a2~ a8 e8 f8 g8 | a4 g4 e4 f4 | d1 | e1 |

  \sect "A3"
  
  e8 e4 e8~ e2~ | e4 e4 a8 a8 e8 e8 | ef8 ef4 ef8~ ef2~ | ef4 ef4 af8 af8 ef8 ef8 |
  \break
  d8 d4 d8~ d2~ | d4 d4 \tuplet 3/2 { e4 f4 g4 } | c1~ | c2 r4 c8 cs8 |
  \break
  d8 f4.~ f2~ | f4 f,4 a8 a8 a4 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
