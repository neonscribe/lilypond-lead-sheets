%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "The Man I Love"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small "© 1924 T.B. Harms & Co."
}

refrainLyrics = \lyricmode {
Some -- day he'll come a -- long,
The man I love.
And he'll be big and strong,
The man I love,
And when he comes my way,
I'll do my best to make him stay.

He'll look at me and smile,
I'll un -- der -- stand.
And in a lit -- tle while
He'll take my hand.
And though it seems ab -- surd,
I know we both won't say a word.

May -- be I shall meet him Sun -- day,
may -- be Mon -- day, may -- be not.
Still I'm sure to meet him one day,
May -- be Tues --  day will be my good news day.

We'll build a lit -- tle home,
Just meant for two,
From which I'll nev -- er roam.
Who would, would you?
And so all else a -- bove,
I'm wait -- ing for the man I love.
}

refrainChords = \chordmode {
  ef1:maj7 ef1:m7 g1:m7.5- c1:7.5+
  f1:m7.5- bf1:7 g2:7.5+ c2:9 f2:m7 bf2:7

  ef1:maj7 ef1:m7 g1:m7.5- c1:7.5+
  f1:m7.5- bf1:7 ef2:6 af2:9 ef2:6 d4:7.9- g4:7
  
  c4:m c4:m/bf a2:m7.5- af2:9 g2:7.5+ c1:m7 g1:7
  c4:m c4:m/bf a2:m7.5- af2:9 g2:7.5+ c2:m c2:7.5+ f2:m7 bf2:7

  ef1:maj7/g ef1:m7/gf g1:m7.5-/f c1:7.5+/e
  f1:m7.5-/ef bf1:7/d ef2:6 af2:9 ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 110

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 bf8 c8 bf8 c8 bf8 df4 | r8 bf8 c8 bf8 df2 | r8 bf8 c8 bf8 c8 bf8 df4 | r8 af8 bf8 af8 c2 |
  \break
  r8 af8 bf8 af8 bf8 af8 cf4 | r8 g8 af8 g8 bf4 af4 | g2 g2 | g1 |
  
  \sect "A2"
  
  r8 bf8 c8 bf8 c8 bf8 df4 | r8 bf8 c8 bf8 df2 | r8 bf8 c8 bf8 c8 bf8 df4 | r8 af8 bf8 af8 c2 |
  \break
  r8 af8 bf8 af8 bf8 af8 cf4 | r8 g8 af8 g8 bf4 g4 | ef2 ef2 | ef2. r4 |
  
  \sect "B"
  
  ef8 f8 g8 fs8 g4 ef'4 | ef4 d4 bf4 b4 | d4 c4 g4 a4 | b1 |
  \break
  ef,8 f8 g8 fs8 g4 ef'4 | ef4 d4 bf4 b4 | d4 c4 bf4 af4 | g4 f4 g4 af4 |
  
  \sect "A3"

  r8 bf8 c8 bf8 c8 bf8 df4 | r8 bf8 c8 bf8 df2 | r8 bf8 c8 bf8 c8 bf8 df4 | r8 af8 bf8 af8 c2 |
  \break
  r8 af8 bf8 af8 bf8 af8 cf4 | r8 g8 af8 g8 bf4 g4 | ef2 ef2 | ef2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
