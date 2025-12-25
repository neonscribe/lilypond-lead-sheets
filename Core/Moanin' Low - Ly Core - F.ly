%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Moanin' Low"
  subtitle = \instrument
  poet = "Howard Dietz"
  composer = "Ralph Rainger"
  copyright = \markup \small { \now " " "© 1929 HARMS Inc." }
}

refrainLyrics = \lyricmode {
Moan -- in' low, __ my sweet man I love him so, though he's mean __ as __ can be.
He's the kind of man __ needs the kind of wo -- man like me.

Gon -- na die, __ if sweet man should pass me by. If I die __ where'll __ he be?
He's the kind of man needs the kind of wo -- man like me.

Don't know an -- y rea -- son why he treats me so poor -- ly. __
What have I gone __ and __ done?
Makes my trou -- ble dou -- ble with his wor -- ries,
when sure -- ly __ I ain't de -- serv -- in' of none.

Moan -- in' low, __ my sweet man is gon -- na go. When he goes, __ oh __ Lord -- ee!
He's the kind of man __ needs the kind of wo -- man like me. __
}

refrainChords = \chordmode {
  f1 bf2 bf2:m f1 bf2:m c2:7.5+
  f4 g4:m af4:dim f4/a c4:7 d4:m ef4:dim c4:aug/e f1 c1:7

  f1 bf2 bf2:m f1 bf2:m c2:7.5+
  f4 g4:m af4:dim f4/a c4:7 d4:m ef4:dim c4:aug/e f2 bf2:7 f2 a2:7
  
  d2:m g2:m6 d1:m g1:m a1
  d2:m g2:m6 d1:m g1:7 c2:7 c2:aug

  f1 bf2 bf2:m f1 bf2:m c2:7.5+
  f4 g4:m af4:dim f4/a c4:7 d4:m ef4:dim c4:aug/e f2 bf2:7 f1
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
  \tempo "Medium Ballad [Billie Holiday 1937]" 4 = 92

  \sectStart "A1"
  
  c8 d4 f8~ f4. d8 | g8 g4 a8 g8 f8 df4 | c4 d8 f8~ f8 g8~( \tuplet 3/2 { g8 gf8) f8 } | df2. d'8 c8 |
  \break
  f4 f8 f8~ f8 d4 a8 | c4 c8 c8~ c8 d8 af4 | f2. r4 | r1 |
  
  \sect "A2"
  
  c8 d4 f8~ f4. d8 | g8 g4 a8 g8 f8 df4 | c4 d8 f8~ f8 g8~( \tuplet 3/2 { g8 gf8) f8 } | df2. d'8 c8 |
  \break
  f4 f8 f8~ f8 d4 a8 | c4 c8 c8~ c8 d8 af4 | f2. r4 | r1 |
  
  \sect "B"
  
  gs8 a8 d8 c8 bf8 a8 g8 f8 | g8 g8 f8 e8~ e8 d8~ d4 | g8 g8 f8 e8~ e8 d8~ d4 | e1 |
  \break
  gs8 a8 d8 c8 bf8 a8 g8 f8 | g8 g8 f8 e8~ e8 d8~ d4 | gf8 e8 d8 a'8~ a8 a8 f4 | c'2. r4 |

  \sect "A3"

  c,8 d4 f8~ f4. d8 | g8 g4 a8 g8 f8 df4 | c4 d8 f8~ f8 g8~( \tuplet 3/2 { g8 gf8) f8 } | df2. d'8 c8 |
  \break
  f4 f8 f8~ f8 d4 a8 | c4 c8 c8~ c8 d8 af4 | f1~ | f2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
