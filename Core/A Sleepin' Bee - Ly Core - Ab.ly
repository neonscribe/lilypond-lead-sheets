%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "A Sleepin' Bee"
  subtitle = \instrument
  poet = "Harold Arlen & Truman Capote"
  composer = "Harold Arlen"
  copyright = \markup \small { \now " " "© 1954 Harold Arlen and Truman Capote" }
}

refrainLyrics = \lyricmode {
When a bee lies sleep -- in' __ in the palm of your hand, __
you're be -- witched and deep in __ love's long looked af -- ter land. __

Where you'll see a sun -- up sky with a morn -- in' new,
and where the days go laugh -- in' by as love comes a -- call -- in' on you. __

Sleep on bee, don't wak -- en, can't be -- lieve what just passed. __
He's mine for the tak -- in', __ I'm so hap -- py at last. __

May -- be I dream, but he seems sweet gol -- den as a crown.
A sleep -- in' bee done told me I'll walk with my feet off the ground
when my one true love I have found.
}

refrainChords = \chordmode {
  af2:maj7 ef2:sus9 af2:maj7 ef2:sus9 af2:maj7 d2:9.11+ df2:maj7 gf2:sus13
  af2:maj7 df2:7 c2:7 f2:7.9- bf2:m7 e2:9.11+ ef2:9 df2:9
  
  c2:13 c2:7.9-.5+ f2:7.9- f2:7.9-.5+ bf2:13 bf2:9.5+ ef2:13 ef2:13.9-
  af2:13 af2:9.5+ df1:7 bf4:m7 c4:m7 df4:6 d4:dim7 ef2:sus9 ef2:9

  af2:maj7 ef2:sus9 af2:maj7 ef2:sus9 af2:maj7 d2:9.11+ df2:maj7 gf2:sus13
  af2:maj7 df2:7 c2:7 f2:7.9- bf2:m7 e2:9.11+ ef2:9 df2:9

  c2:13 c2:7.9-.5+ f2:7.9- f2:7.9-.5+ bf2:13 bf2:9.5+ ef2:13 ef2:13.9-
  af2:maj7 df2:maj7 c2:7 f2:7 bf2:9 ef2:13 c2:7 f2:7.9-
  
  bf2:9 bf2:9.5+ ef2:sus13 ef2:13 af2:6
  \chordOpenParen{ b2:maj7 }
  e2:maj7
  \chordCloseParen{ a2:maj7 }
}

refrainKey = af

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
  \tempo "Medium" 4 = 120

  \sectStart "A1"
  
  c4 ef4 f4 af4 | c4 ef4~ \tuplet 3/2 { ef4 c4 b4 } |
  \tuplet 3/2 { c4 ef,4 f4 } af2~ | af2. r4 |
  c,4 ef4 f4 af4 | c4 f4~ \tuplet 3/2 { f4 ef4 c4 } |
  \tuplet 3/2 { ef4 c4 df4 } bf2~ | bf2. r4 |
  
  \sect "B"
  
  c4 c4 df4. b8 | c8 ef8 df2. | bf4 bf4 c4. bf8 | c2. bf4 |
  af4 af4 bf4. g8 | af8 cf8 bf2 af4 | df,4 ef8 ef8 f8 f8 g4 | af4( bf2.) |
  
  \sect "A2"

  c,4 ef4 f4 af4 | c4 ef4~ \tuplet 3/2 { ef4 c4 b4 } |
  \tuplet 3/2 { c4 ef,4 f4 } af2~ | af2. r4 |
  c,4 ef4 f4 af4 | c4 f4~ \tuplet 3/2 { f4 ef4 c4 } |
  \tuplet 3/2 { ef4 c4 df4 } bf2~ | bf2. r4 |
  
  \sect "C"

  c8 c8 c4 df4. b8 | c4 df2 c4 | d4 d4 d4 d4 | ef2. c4 |
  c,4 ef4 f4 af4 | c4 <ef ef,>2 ef,4 | c'4 c8 c8 c4 ef,8 f8 | c'2. e,8 f8 |
  c'2 c2 | c2 ef,4 f4 | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
