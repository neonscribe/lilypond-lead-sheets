%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "(I Don't Stand) A Ghost of a Chance (With You)"
  subtitle = \instrument
  poet = "Bing Crosby and Ned Washington"
  composer = "Victor Young"
  copyright = \markup \small "© 1932 Lawrence Music Publishers, Inc."
}

refrainLyrics = \lyricmode {
I need your love so bad -- ly, I love you, oh, so mad -- ly,
but I don't stand a ghost of a chance with you.
I thought at last I'd found you,
but oth -- er loves sur -- round you,
and I don't stand a ghost of a chance with you.
If you'd sur -- rend -- er just for a ten -- der kiss or two, __
you might dis -- cov -- er that I'm the lov -- er meant for you,
and I'd be true.
But what's the good of schem -- ing, I know I must be dream -- ing,
for I don't stand a ghost of a chance with you.
}

refrainChords = \chordmode {
  s4

  c1:maj7 g1:7.5+ e2:m7.5- a2:7.9- d2:m7.5- g2:7.9-
  c2:maj7 a2:m7 d2:m7 g2:7 e2:m7 a2:7 d2:m7 g2:7

  c1:maj7 g1:7.5+ e2:m7.5- a2:7.9- d2:m7.5- g2:7.9-
  c2:maj7 a2:m7 d2:m7 g2:7 c2:maj7 d2:m7 e2:m7 a2:7
  
  d1:m7 g1:7 c2:maj7 g2:7 c1:maj7
  fs1:m7.5- b1:7.9- e2:m7 a2:7 d2:m7 g2:7.5+

  c1:maj7 g1:7.5+ e2:m7.5- a2:7.9- d2:m7.5- g2:7.9-
  c2:maj7 a2:m7 d2:m7 g2:7 c2:maj7
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 100

  \partial 4 g4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g4 g4 g4 g4 | g4 g2 g4 | g4 g4 bf4 a4 | af4 af2 af4 |
  \break
  g4 g4 d'4. c8 | \tuplet 3/2 { e4 c4 a4 } g4 a4 | e1 | r2 r4 g4 |
  
  \sect "A2"
  
  g4 g4 g4 g4 | g4 g2 g4 | g4 g4 bf4 a4 | af4 af2 af4 |
  \break
  g4 g4 d'4. c8 | \tuplet 3/2 { e4 c4 a4 } g4 a4 | c1 | r1 |
  
  \sect "B"
  
  \tuplet 3/2 { d,4 e4 f4 } a8 a4. | \tuplet 3/2 { ef4 f4 g4 } b8 bf4. |
  a4. e8 e2~ | e2 r2 |
  \break
  \tuplet 3/2 { fs4 g4 a4 } c8 c4. | \tuplet 3/2 { fs,4 g4 a4 } c8 c4. |
  b4. fs8 fs4 fs4 | a4. ef8 ef4 g4 |
  
  \sect "A3"

  g4 g4 g4 g4 | g4 g2 g4 | g4 g4 bf4 a4 | af4 af2 af4 |
  \break
  g4 g4 d'4. c8 | \tuplet 3/2 { e4 c4 a4 } g4 a4 | c1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
