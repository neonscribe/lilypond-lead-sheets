%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "I'll Never Be the Same"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Matt Malneck and Frank Signorelli"
  copyright = \markup \small { \now " " "© 1932 Robbins Music Corp." }
}

refrainLyrics = \lyricmode {
I'll nev -- er be the same.
Skies have lost their mean -- ing for me.
I'll nev -- er be the same,
no -- thing's what it once used to be.

And when the song -- birds that sing
tell me it's spring
I can't be -- lieve their song.
Once love was king
but kings can be wrong.

I'll nev -- er be the same.
There is such an ache in my heart.
Nev -- er be the same
since we're a -- part.

Though there's a lot that a smile can hide
I know deep down in -- side
I'll ne -- ver be the same,
Ne -- ver be the same a -- gain.
}

refrainChords = \chordmode {
  s4
  
  df2:7 c2:7 df2:7 c2:7 f2:maj7 g2:m7 a2:m7 d2:7
  df2:7 c2:7 df2:7 c2:7 f1:maj7 d2:m7 df2:7
  
  c2:m7 f2:7 c2:m7 f2:sus7 bf2:6.9 f2:7 bf1:maj7
  d2:m7 g2:7 d2:m7 g2:7 g1:m7 c1:7

  df2:7 c2:7 df2:7 c2:7 f1:maj7 d2:m7 df2:7
  c2:m7 f2:7 c2:m7 f2:7 bf2:6 f2:7.5+ bf1:6
  
  g1:m7 bf1:m6 a1:m7.5- d1:7
  df2:7 c2:7 df2:7 c2:7 f2:6
  \chordOpenParen{ d2:7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Slow [Billie Holiday 1937]" 4 = 90
  
  \partial 4 \invisEighth c8 |

  \sectNoBreak "A1"
  
  df8 ef8 f8 g8 c,2 | df8 ef8 f8 g8 a8 c8 a8 c8~ | c1 | r2 r4 r8 c,8 |
  \break
  df8 ef8 f8 g8 c,2 | df8 ef8 f8 g8 a8 c8 a8 c8~ | c1 | r2 r8 f,8 e8 f8 |
  
  \sect "B"
  
  d'4 c8 d8 c2 | c4 bf8 c8 bf2 | bf4 a8 bf8 a4 f4 | d2. r4 |
  \break
  a'4 g8 a8 g2 | r4 f4 \tuplet 3/2 { d4 f4 a4 } | c1 | r2 r4 r8 c,8 |
  
  \sect "A2"

  df8 ef8 f8 g8 c,2 | df8 ef8 f8 g8 a8 c8 a8 c8~ | c1 | r1 |
  \break
  f,8 g8 a8 c8 g2~ | g4 c4 c4 a4 | g1 | r2 r8 f8 g8 a8 |
  
  \sect "C"

  bf4 a8 bf8 a4 g4 | bf1 | c4 bf8 c8 bf4 a4 | c2. r8 c,8 |
  \break
  df8 ef8 f8 g8 c,2 | df8 ef8 f8 g8 a4 a4 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
