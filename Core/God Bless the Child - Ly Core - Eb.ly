%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "God Bless the Child"
  subtitle = \instrument
  poet = ""
  composer = "Arthur Herzog, Jr. and Billie Holiday"
  copyright = \markup \small { \now " " "© 1941 Edward B. Marks Music Company" }
}

refrainLyrics = \lyricmode {
Them that's got shall get, them that's not shall lose, so the Bi -- ble said, and it still is news.
Ma -- ma may have, Pa -- pa may have, but God bless the child that's got his own, that's got his own.
Yes, the strong gets more, while the weak ones fade, empty pock -- ets don't ev -- er make the grade.
Ma -- ma may have, Pa -- pa may have, but God bless the child that's got his own, that's got his own.
Mon -- ey, you got lots o' friends crowd -- in' 'round the door, when you're gone and spend -- in' ends,
they don't come no more.
Rich re -- la -- tions give, crust of bread, and such, you can help your -- self, but don't take too much.
Ma -- ma may have, Pa -- pa may have, but God bless the child that's got his own, that's got his own.
}

refrainChords = \chordmode {
  s4
  
  ef4:maj7 ef4:7 af2:6 ef4:maj7 ef4:7 af2:6 bf2:m7 ef2:7 bf2:m7 ef2:7
  af2:maj7 af2:6 af2:m7+ af2:m6 g2:m7 c2:7.9- f2:m7 bf2:7 ef1:6 f2:m7 bf2:7

  ef4:maj7 ef4:7 af2:6 ef4:maj7 ef4:7 af2:6 bf2:m7 ef2:7 bf2:m7 ef2:7
  af2:maj7 af2:6 af2:m7+ af2:m6 g2:m7 c2:7.9- f2:m7 bf2:7 ef1:6 d2:m7.5- g2:7
  
  c2:m c2:m7+ c2:m7 c2:m6 g1:m7 d2:m7.5- g2:7
  c2:m c2:m7+ c2:m7 c2:m6 g2:m7 c2:7 f2:m7.5- bf2:7

  ef4:maj7 ef4:7 af2:6 ef4:maj7 ef4:7 af2:6 bf2:m7 ef2:7 bf2:m7 ef2:7
  af2:maj7 af2:6 af2:m7+ af2:m6 g2:m7 c2:7.9- f2:m7 bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

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
  \tempo "Ballad [Billie Holiday 1941]" 4 = 68

  \partial 4 ef8 f8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g4 g4 f4 ef8 f8 | g4 g4 f4 bf8 c8 | df4 df4 c4 bf8 c8 | df4 bf4 g2 |
  g8 g4 f8 c2 | g'8 g4 f8 cf4. g'8 | bf8 bf4 g8 bf4 g4 | g8 bf8 bf2 bf,4 | c8 ef8 ef2. | r2 r4 ef8 f8 |
  
  \bar "||-||"

  \xTextMark \markup{ \bold \box "A2" }
  
  g4 g4 f4 ef8 f8 | g4 g4 f4 bf8 c8 | df4 df4 c4 bf8 c8 | df4 bf4 g2 |
  g8 g4 f8 c2 | g'8 g4 f8 cf4. g'8 | bf8 bf4 g8 bf4 g4 | g8 bf8 bf2 bf,4 | c8 ef8 ef2. | r1 |
  
  \bar "||-||"

  \xTextMark \markup{ \bold \box "B" }
  
  ef'4 c4 ef4 c4 | ef4 c8 ef8~ ef2 | d4 bf4 d4 bf4 | d1 |
  ef4 c4 ef4 c4 | ef4 c8 ef8~ ef2 | bf4 c4 c4 c4 | f,2. ef8 f8 |
  
  \bar "||-||"

  \xTextMark \markup{ \bold \box "A3" }

  g4 g4 f4 ef8 f8 | g4 g4 f4 bf8 c8 | df4 df4 c4 bf8 c8 | df4 bf4 g2 |
  g8 g4 f8 c2 | g'8 g4 f8 cf4. g'8 | bf8 bf4 g8 bf4 g4 | g8 bf8 bf2 bf,4 | c8 ef8 ef2. | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
