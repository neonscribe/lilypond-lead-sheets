%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Almost Blue"
  subtitle = \instrument
  poet = ""
  composer = "Elvis Costello"
  copyright = \markup \small { \now " " "© 1982 Universal Music Publishing MGB Ltd." }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Al -- most blue, al -- most do -- ing things we used to do.
There's a girl here and she's al -- most you, al -- most.
All the things that your eyes once pro -- mised I see in hers too.
Now your eyes are red from cry -- ing, al -- most blue.
Flirt -- ing with this dis -- as -- ter be -- came me.
It named me as the fool who on -- ly aimed to be.

Al -- most blue, it's al -- most touch -- ing.
It will al -- most do. There's a part of me that's al -- ways true, al -- ways.
Not all good things come to an end. Now it is on -- ly a cho -- sen few.
I have seen such an un -- hap -- py coup -- le.
Al -- most me, al -- most you, al -- most blue.
}

refrainObjectGenderMaleLyrics = \lyricmode {
Al -- most blue, al -- most do -- ing things we used to do.
There's a boy here and he's al -- most you, al -- most.
All the things that your eyes once pro -- mised I see in his too.
Now your eyes are red from cry -- ing, al -- most blue.
Flirt -- ing with this dis -- as -- ter be -- came me.
It named me as the fool who on -- ly aimed to be.

Al -- most blue, it's al -- most touch -- ing.
It will al -- most do. There's a part of me that's al -- ways true, al -- ways.
Not all good things come to an end. Now it is on -- ly a cho -- sen few.
I have seen such an un -- hap -- py coup -- le.
Al -- most me, al -- most you, al -- most blue.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  \set chordChanges = ##t
  a2:m a2:m7+/gs a2:m7/g b4:m7.5- e4:7.9- a2:m ef2:dim7 b2:m7.5- e2:7.9-

  a2:m a2:m7+/gs a2:m7/g b4:m7.5- e4:7 a2:m a2:m7+/gs a2:m7/g b4:m7.5- e4:7
  c2:maj7 f2:maj7 e2:7.9+ e2:7.9+/d a2:m b2:m7/a ds2:dim7/a d2:m/a
  c2 bf2:6 a2:7.9- a2:7.9-/g d2:m d2:m/c b2:m7.5- e2:7.5+
  a2:m ef2:dim7 a2.:m a4:m/g f2 b2:m7.5- c2 cs2:dim7
  d2:m b2:m7.5- e2:sus7 e2:7.9-

  a2:m a2:m7+/gs a2:m7/g b4:m7.5- e4:7 a2:m a2:m7+/gs a2:m7/g b4:m7.5- e4:7
  c2:maj7 f2:maj7 e2:7.9+ e2:7.9+/d a2:m b2:m7/a ds2:dim7/a d2:m/a
  c2 bf2:6 a2:7.9- a2:7.9-/g d2:m d2:m/c b2:m7.5- e2:7.5+
  a1:m9 b1:m7.5- e1:7.9- a1:m6.9
  \set chordChanges = ##f
}

refrainKey = a

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad [Elvis Costello 1982]" 4 = 62

  \sectStart "Intro"

  \rsq \rsq \rsq \rsq \noBreak | \rsq \rsq \rsq \rsq \noBreak | \rsq \rsq \rsq \rsq \noBreak | \rsq \rsq \rsq \rsq |

  \sect "A1"
  
  r4 e8 e8~ e8 e4.~ | e4 e8 g8 f8 e8 d8 c8 | r4 e8 e8~ e8 e4.~ | e4 r8 e16 g16 f8 e8 d8 c8 |
  r4 e8 a,8 c2 | r4 e4 d2 | r4 a'4 b2 | c4. a16 b16 c8 b8 a8 g8 |
  r4 g4 \tuplet 3/2 { g4 g4 g4 } | g2 bf8 a8 g8 f8 | e2 r4 f4 | e2 c2 |
  
  \sect "B"
  
  r4 b'2 a8( e8) | a2. r4 | r4 \tuplet 3/2 { a8 b8 c8 } b8 a16 g16~ g16 e16 f8 |
  g8 g4.~ g2 | r4 \tuplet 3/2 { a8 b8 c8 } b8 a16 g16~ g8 f8 | a8 a8 a8. e16 e2 |
  \bar "||"
  
  \xPageBreak
  \sectNoBarNoBreak "A2"

  r4 e8 e8~ e8 e4.~ | e8. e16 e8 g8 f8 e8 d8 c8 | r4 e8 e8~ e8 e4.~ | e4 r8 e16 g16 f8 e8 d8 c8 |
  r4 e8 a,8 c2 | r4 e4 d2 | r4 a'8 a8 b4 b4 | c4. a16 b16 c8 b8 a8 g8 |
  r4 \tuplet 3/2 { g8 g8 e8 } g4 g4 | g2 bf8 a8 g8 f8 | e4 e4 e4 f4 | e2 c2 |
  
  \sect "C"
  
  b'8 a8 a2. | b8 c8 b8( a8~ a2) | r4 c8( b8) a8( e8~ e4) | b4( a2) r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
