%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:17:00.460908Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "You've Changed"
  subtitle = \subtitle
  poet = "Bill Carey"
  composer = "Carl Fischer"
  copyright = \markup \small { \now " " "© 1941 Southern Music Publishing Company Inc." }
}

refrainLyrics = \lyricmode {
You've changed, that spar -- kle in your eyes is gone.
Your smile is just a care -- less yawn.
You're break -- ing my heart, __ you've changed. __

You've changed, your kiss -- es now are so bla -- sé.
You're bored with me in ev -- 'ry way.
I can't un -- der -- stand, __ you've changed. __

You've for -- got -- ten the words, __ “I love you,”
each mem -- o -- ry that we've shared. __
You ig -- nore ev -- 'ry star __ a -- bove you. __
I can't re -- a -- lize you ev -- er cared. __

You've changed, you're not the an -- gel I once knew.
No need to tell me that we're through.
It's all o -- ver now, __ you've changed. __
}

refrainChords = \chordmode {
  s4
  
  ef1:maj7 a2:m7 d2:7.5+ g1:m7 c1:7.5+
  f1:7 b2:7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7

  ef1:maj7 a2:m7 d2:7.5+ g1:m7 c1:7.5+
  f1:7 b2:7 bf2:7 bf1:m7 ef1:7
  
  af1:maj7 af1:m7 g1:m7 bf2:m7 ef2:7
  af1:maj7 af1:m7 g2:m7 gf2:m7 f2:m7 bf2:7

  ef1:maj7 a2:m7 d2:7.5+ g1:m7 c1:7.5+
  f1:7 b2:7 bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Ballad [Harry James 1941]" 86

  \partial 4 bf4 |

  \sectNoBreak "A1"
  
  d2. bf4 | d8 df8 c8 cf8 bf4 c4 | bf2. g4 | c8 cf8 bf8 a8 af4 c4 |
  \break
  g2. c4 | fs,8 fs8 fs8 g8~ g4 d8 c8~ | c1~ | c2 r4 bf'4 |
  
  \sect "A2"

  d2. bf4 | d8 df8 c8 cf8 bf4 c4 | bf2. g4 | c8 cf8 bf8 a8 af4 c4 |
  \break
  g2. c4 | fs,8 fs8 fs8 g8~ g4 d8 f8~ | f1~ | f2 r4 ef8 f8 |
  
  \sect "B"
  
  g8 bf8 af8 g8~ g4 ef8 gf8~ | gf8 gf4.~ gf2 | f8 d8 ef8 f8~ f8 d8 ef8 bf'8~ bf2. ef,8 f8 |
  \break
  g8 bf8 af8 g8~ g4 ef8 gf8~ | gf8 gf4.~ gf4 g8 af8 | bf8 bf8 bf8 bf8 df8 df4 bf8~ | bf2. bf4 |
  
  \sect "A3"

  d2. bf4 | d8 df8 c8 cf8 bf4 c4 | bf2. g4 | c8 cf8 bf8 a8 af4 c4 |
  \break
  g2. c4 | fs,8 fs8 fs8 g8~ g4 g8 ef8~ | ef1~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
