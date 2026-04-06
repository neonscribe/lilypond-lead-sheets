%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Deep in a Dream"
  subtitle = \instrument
  poet = "Eddie DeLange"
  composer = "Jimmy Van Heusen"
  copyright = \markup \small { \now " " "© 1938 Scarsdale Music Corporation and Warner Bros Inc." }
}

refrainLyrics = \lyricmode {
I dim all the lights __ and I sink in my chair, __
the smoke from my cig -- a -- rette climbs through the air. __
The walls of my room fade a -- way in the blue __ and I'm deep in a dream of you. __

The smoke makes a stair -- way for you to de -- scend, __
you come to my arms, __ may this bliss nev -- er end. __
For we love a -- new __ just as we used to do __ when I'm deep in a dream of you. __

Then from the ceil -- ing __ sweet mu -- sic comes steal -- ing,
we glide through a lov -- ers re -- frain.
You're so ap -- peal -- ing __ that I'm soon re -- veal -- ing my love for you o -- ver a -- gain.

My cig -- a -- rette burns __ me, I wake with a start. __
My hand is -- n't hurt, __ but there's pain in my heart. __
A -- wake or a -- sleep __ ev -- 'ry mem -- 'ry I'll keep __ deep in a dream of you. __
}

refrainChords = \chordmode {
  s4
  
  c2:maj9 c2:1.3.5+ c2:6 c2:7 f2:maj9 f2:1.3.5+ f2:6 f2:7
  bf2:maj7 ef2:9 d2:m7 e2:7 a2:m7 d2:9 g2:sus9 g2:9

  c2:maj9 c2:1.3.5+ c2:6 c2:7 f2:maj9 f2:1.3.5+ f2:6 f2:7
  bf2:maj7 ef2:9 d2:m7 e2:7 a2:m7 d4:9 df4:7 c2:6 bf4:m7 ef4:9

  af2:maj7 f2:m7 bf2:m7 ef2:7 c2:m7 b2:dim7 bf2:m7 ef2:7
  af2:m7 f2:m7 bf2:m7 ef2:7 af2:maj7 f2:m7 d2:m7 g2:7

  c2:maj9 c2:1.3.5+ c2:6 c2:7 f2:maj9 f2:1.3.5+ f2:6 f2:7
  bf2:maj7 ef2:9 d2:m7 e2:7 a2:m7 d4:9 df4:9 c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }
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
  \tempoFour "Ballad [Chet Baker 1959, 54 BPM] or Medium [Artie Shaw 1939]" 115

  \partial 4 g4 |
  \bar "||"

  \sectStart "A1"
  
  e8 e8 e8 e8~ \tuplet 3/2 { e4 d4 c4 } | e8 f8 g8 e8~ e4. c8 |
  \break
  a'8 a8 a8 a8~ \tuplet 3/2 { a4 g4 f4 } | a8 bf8 c8 a8~ a4. f8 |
  d'8 d8 d8 bf8~ \tuplet 3/2 { bf4 a4 g4 } | f8 f8 f8 d8~ d4 c8 d8 | 
  \tuplet 3/2 { e4 e4 e4 } a4. e8 | d2~ d4 r8 g8 |
  
  \sect "A2"
  
  e8 e8 e8 e8~ \tuplet 3/2 { e4 d4 c4 } | e8 f8 g8 e8~ e4. c8 |
  \break
  a'8 a8 a8 a8~ \tuplet 3/2 { a4 g4 f4 } | a8 bf8 c8 a8~ a4. f8 |
  d'8 d8 d8 bf8~ \tuplet 3/2 { bf4 a4 g4 } | f8 f8 f8 d8~ d4 c8 d8 | 
  \tuplet 3/2 { e4 e4 e4 } a4 b,8 c8~ | c2 r8 c8 c8 c8 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBar "B"
  
  ef8 ef8~ ef2 e4 | \tuplet 3/2 { f4 g4 af4 } \tuplet 3/2 { bf4 c4 df4 } |
  \break
  \tuplet 3/2 { ef4 c4 bf4 } \tuplet 3/2 { af4 g4 f4 } | ef2 r8 c8 c8 c8 |
  ef8 ef8~ ef2 e4 | \tuplet 3/2 { f4 g4 af4 } \tuplet 3/2 { bf4 c4 df4 } |
  \tuplet 3/2 { ef4 c4 af4 } \tuplet 3/2 { ef'4 c4 af4 } | g2. r8 g8 |

  \sect "A3"

  e8 e8 e8 e8~ \tuplet 3/2 { e4 d4 c4 } | e8 f8 g8 e8~ e4. c8 |
  \break
  a'8 a8 a8 a8~ \tuplet 3/2 { a4 g4 f4 } | a8 bf8 c8 a8~ a4. f8 |
  d'8 d8 d8 bf8~ bf4 a8 g8 | f8 f8 f8 d8~ d2 |
  \tuplet 3/2 { e4 e4 e4 } a4 b,8 c8~ | c2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
