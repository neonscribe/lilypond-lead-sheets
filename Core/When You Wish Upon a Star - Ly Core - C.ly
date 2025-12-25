%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "When You Wish Upon a Star"
  subtitle = \instrument
  poet = "Ned Washington"
  composer = "Leigh Harline"
  copyright = \markup \small { \now " " "© 1940 Bourne Co." }
}

refrainLyrics = \lyricmode {
When you wish up -- on a star, makes no diff -- 'rence who you are,
an -- y -- thing your heart de -- sires will come to you.

If your heart is in your dream, no re -- quest is too ex -- treme,
When you wish up -- on a star as dream -- ers do.

Fate is kind. She brings to those who love the sweet ful -- fill -- ment of their sec -- ret long -- ing.

Like a bolt out of the blue, fate steps in and sees you through,
When you wish up -- on a star your dreams come true.

When you wish up -- on a star your dreams come true.
}

refrainChords = \chordmode {
  c2:maj7 a2:7.5+ d1:m g1:7 c4:dim7 c2.:maj7
  e2:m7 ef2:dim7 d2:m7 g2:7 d2:m7 g2:7 c2:maj7 d4:m7 g4:7

  c2:maj7 a2:7.5+ d1:m g1:7 c4:dim7 c2.:maj7
  e2:m7 ef2:dim7 d2:m7 g2:7 d2:m7 g2:7 c1:maj7
  
  d2:m7.5-/g g2:7.9- c1:maj7 d2:m7 g2:7 c2:dim7 c2:maj7
  a1:m7 d1:7 d1:m7.5- g1:7.9-

  c2:maj7 a2:7.5+ d1:m g1:7 c4:dim7 c2.:maj7
  e2:m7 ef2:dim7 d2:m7 g2:7 d2:m7 g2:7 c2:maj7 d4:m7 g4:7

  e2:m7 ef2:dim7 d2:m7 g2:7 d2:m7 g2:7 c1:maj7
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
  \tempo "Medium Ballad [Cliff Edwards 1939]" 4 = 104

  \sectStart "A1"
  
  g,4 g'4 f4 e4 | cs4 d4 a'2 | b,4 b'4 a4 g4 | fs4 g4 c2 |
  \break
  d4 c4 b4 a4 | g4 f4 e4 d4 | a'2 b,2 | g'2. r4 |
  
  \sect "A2"

  g,4 g'4 f4 e4 | cs4 d4 a'2 | b,4 b'4 a4 g4 | fs4 g4 c2 |
  \break
  d4 c4 b4 a4 | g4 f4 e4 d4 | a'2 b,2 | c1 |
  
  \sect "B"
  
  d2 e2 | g1 | r4 d4 e4 f4 | fs8 a8 g2. |
  \break
  r4 e4 fs4 g4 | gs8 b8 a4 r8 a8 b8 c8 | c1 | b2. r4 |
  
  \sect "A3"

  g,4 g'4 f4 e4 | cs4 d4 a'2 | b,4 b'4 a4 g4 | fs4 g4 c2 \textToCodaLastTime |
  \break
  d4 c4 b4 a4 | g4 f4 e4 d4 | a'2 b,2 | g'2. r4 |
  
  \textCodaBreak
  
  d'4 c4 b4 a4 | g4 f4 e4 d4 | a'2 b2 | c2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
