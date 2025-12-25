%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "It Had to Be You"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Isham Jones"
  copyright = \markup \small { \now " " "© 1924 Jerome H. Remick & Co." }
}

refrainLyrics = \lyricmode {
It had to be you, __ it had to be you, __
I wan -- dered a -- round __ and fin -- al -- ly found __
the some -- bod -- y who __
Could make me be true, __ could make me be blue __
And e -- ven be glad, __ just to be sad, __
think -- ing of you. __
Some oth -- ers I've seen __ might nev -- er be mean, __
Might nev -- er be cross __ or try to be boss, __
but they would -- n't do, __
for no -- bod -- y else __ game me a thrill, __
with all your faults __ I love you still. __
It had to be you, __ won -- der -- ful you, __
had to be you. __
}

refrainChords = \chordmode {
  s2.
  
  g2:maj7 d2:7.5+ g1:maj7 e1:7 e1:7
  a1:7 a1:7 a1:7 a1:7

  d1:7 d2:7 ds2:dim7 e1:m7 e1:m7
  a1:7 a1:7 d2:7 ef2:7.5- d2:7 d2:7.5+
  
  g2:maj7 d2:7.5+ g1:maj7 e1:7 e1:7
  a1:7 a1:7 a1:7 a2:7 g2:7

  c1:maj7 f1:7 g2:maj7 b2:7 e2:m7 bf2:dim7
  d2:7 bf2:dim7 d1:7 g2:6 c2:m g2:6
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
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
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Artie Shaw 1938]" 4 = 164

  \partial 2. d4 e8 d8 e8 fs8~ |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  fs1 | r4 fs4 g8 fs8 g8 gs8~ | gs1 | r4 gs4 a8 gs8 a8 b8~ |
  \break
  b4. g8 a8 gs8 a8 b8~ | b4. g8 a8 gs8 a8 b8~ | b1 | r4 a4 b8 a8 b8 d8~ |
  
  \sect "B"
  
  d1 | r4 b4 a8 b8 a8 g8~ | g1 | r4 g4 g8 fs8 g8 a8~ |
  \break
  a2 g8 fs8 g8 a8~ | a2 b8 e8 b8 a8~ | a1 | r4 d,4 e8 d8 e8 fs8~ |

  \sect "A2"
  
  fs1 | r4 fs4 g8 fs8 g8 gs8~ | gs1 | r4 gs4 a8 gs8 a8 b8~ |
  \break
  b4. g8 a8 gs8 a8 b8~ | b4. g8 a8 gs8 a8 b8~ | b1 | r4 b4 b8 c8 d8 e8~ |
  
  \sect "C"
  
  e2 e,8 fs8 g8 a8~ | a2 a8 b8 c8 d8~ | d2 a8 b8 a8 g8~ | g4 fs4 e8 d8 e8 fs8~ |
  \break
  fs2 e8 d8 e8 fs8~ | fs2 b8 d8 b8 g8~ | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
