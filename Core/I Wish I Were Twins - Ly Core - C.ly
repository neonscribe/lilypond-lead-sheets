%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Wish I Were Twins"
  subtitle = \instrument
  poet = "Edgar De Lange and Frank Loesser"
  composer = "Joseph Meyer"
  copyright = \markup \small "© 1934 Donaldson, Douglas & Gumble Inc."
}

refrainLyrics = \lyricmode {
I wish that I were twins, __ you great big ba -- by -- kins, __
so I could love you twice as much __ as I do. __
I'd have four lov -- ing arms __ to em -- brace you.
Four eyes to i -- do -- lize __ you each time I face you.
With two hearts twice as true __ what could -- n't four lips do? __
When four ears hear you say -- ing “I'm yours!” __
You great big ba -- by -- kins, __ I wish that I were twins, __
so I could love you twice as much __ as I do!
}

refrainChords = \chordmode {
  c1:6 c1:6 d1:7 d1:7
  g2:9 cs2:dim7 d2:m7 g2:7 c1:6 c1:6

  a1:m6 a1:m6 e1:m e1:m
  a1:m6 a1:m6 e2:m7 a2:7 d2:m7 g2:7

  c1:6 c1:6 d1:7 d1:7
  g2:9 cs2:dim7 d2:m7 g2:7 b1:m7.5- e1:7

  a2:m a2:m7 d1:7 e2:m e2:m7 a1:7.5+
  d1:7 d2:m7 g2:7 c2:6
  \chordOpenParen{ bf2:7 }
  af2:7 
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium or Fast [Fats Waller 1934]" 4 = 220

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 c4 d4 c4 | d8 c4 d8~ d2 | r4 c4 d4 c4 | d8 c4 d8~ d2 |
  \break
  r8 g8 a8 g8 a4 a4 | a4 g8 a8~ a8 g8 a4 | e1~ | e1 |
  
  \sect "B"
  
  r4 e4 fs4 e4 | fs4 e8 fs8~ fs8 e8 fs4 | g1 | b,1 |
  \break
  r4 e4 fs4 e4 | fs4 e8 fs8~ fs8 e8 fs4 | g2 b2 | a2 b,2 |
  
  \sect "A2"
  
  r4 c4 d4 c4 | d8 c4 d8~ d2 | r4 c4 d4 c4 | d8 c4 d8~ d2 |
  \break
  r4 g4 a4 g4 | a4 g8 a8~ a8 g8 a4 | b1~ | b1 |
  
  \sect "C"
  
  r4 c4 d4 c4 | d8 c4 d8~ d2 | r4 g,4 a4 g4 | a8 g4 a8~ a2 |
  \break
  r8 c8 d8 c8 d4 c4 | d4 c8 d8~ d8 c8 d4 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
