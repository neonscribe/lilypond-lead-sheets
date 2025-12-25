%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Just Squeeze Me"
  subtitle = \instrument
  poet = "Lee Gaines"
  composer = "Duke Ellington"
  copyright = \markup \small { \now " " "© 1946 Robbins Music Corporation" }
}

refrainLyrics = \lyricmode {
Treat me sweet and gen -- tle __ when you say good -- night. __
Just __ squeeze __ me, __ but please don't tease me. __

I get sen -- ti -- men -- tal __ when you hold me tight. __
Just __ squeeze __ me, __ but please don't tease me. __

Miss -- ing you since you went a -- way sing -- ing the blues a -- way each day,
count -- ing the nights and wait -- ing for you. __
I'm in the mood to let you know I nev -- er knew I loved you so.
Please say you love me too. __

When I get this feel -- in', __ I'm in ec -- sta -- cy. __
So __ squeeze __ me, __ but please don't tease me. __
}

refrainChords = \chordmode {
  f2:maj7 g2:m7 a2:m7 bf2:maj7 f2:maj7 bf:maj7 a2:m7 d2:7.9-
  g1:m7 c1:7 f2:maj7 d2:7.9- g2:m7 c2:7

  f2:maj7 g2:m7 a2:m7 bf2:maj7 f2:maj7 bf:maj7 a2:m7 d2:7.9-
  g1:m7 c1:7 f1:maj7 f1:maj7
  
  f1:7 f1:7 bf1:6 bf2:6 af2:9
  g1:7 g1:7 g1:m7 c1:7

  f2:maj7 g2:m7 a2:m7 bf2:maj7 f2:maj7 bf:maj7 a2:m7 d2:7.9-
  g1:m7 c1:7 f1:maj7
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
  \tempo "Medium [Paul Desmond 1975]" 4 = 125

  \sectStart "A1"
  
  a4 a4 a8 bf4 c8~ | c4. c8~ c2 | a4 a4 a8 bf4 c8~ | c4. c8~ c4. c8~ |
  \break
  c4. bf8~ bf2 | r8 c4. c4 c4 | c4. a8~ a2 | r1 |
  
  \sect "A2"

  a4 a4 a8 bf4 c8~ | c4. c8~ c2 | a4 a4 a8 bf4 c8~ | c4. c8~ c4. c8~ |
  \break
  c4. bf8~ bf2 | r8 c4. c4 c4 | c4. a8~ a2 | r1 |
  
  \sect "B"
  
  \tuplet 3/2 { a8 bf8 b8 } c8 c8 c8 d8 c4 | \tuplet 3/2 { a8 bf8 b8 } c8 c8 c8 d8 c4 |
  \break
  \tuplet 3/2 { bf8 c8 cs8 } d8 ef8 d8 bf8 g8 bf8~ | bf1 |
  \break
  \tuplet 3/2 { b8 c8 cs8 } d8 d8 d8 e8 d4 | \tuplet 3/2 { b8 c8 cs8 } d8 d8 d8 e8 d4 |
  \break
  f2 d4. fs,8 | g8 e'4 d8~ d2 |
  
  \sect "A3"

  a4 a4 a8 bf4 c8~ | c4. c8~ c2 | a4 a4 a8 bf4 c8~ | c4. c8~ c4. c8~ |
  \break
  c4. bf8~ bf2 | r8 c4. c4 c4 | c4. a8~ a2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
