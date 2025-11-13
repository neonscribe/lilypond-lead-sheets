%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Blame It on My Youth"
  subtitle = \instrument
  poet = "Edward Heyman"
  composer = "Oscar Levant"
  copyright = \markup \small { \now " " "© 1934 Levant Oscar Music" }
}

refrainLyrics = \lyricmode {
If I ex -- pect -- ed love __ when first we kissed,
blame it on my youth. __
If on -- ly just for you __ I did ex -- ist,
blame it on my youth. __
I __ be -- lieved in ev -- 'ry -- thing
Like a child at three.
You __ meant more than ev -- 'ry -- thing,
all the world to me.
If you were on my mind __ all night and day,
blame it on my youth. __
If I for -- got to eat __ and sleep and pray,
blame it on my youth. __
If __ I cried a lit -- tle bit
when first I learned the truth,
don't blame it on my heart, __
blame it on my youth. __
}

refrainChords = \chordmode {
  ef2:maj7 f2:m7 g2:m7 fs2:7.5- f2:m7 e2:dim7 f2:m7 bf2:7
  f2:m7 e2:dim7 f2:m7 bf2:7 g2:m7 f4:m7 bf4:m7 ef2:maj7 ef2:7
  
  af2:maj7 bf2:7 g2:m7 c2:m7 f2:m7 bf2:7 ef1:maj7
  d2:m7.5- g2:7.9- c1:m7 f2:7 b2:7.5+ bf1:7

  ef2:maj7 f2:m7 g2:m7 fs2:7.5- f2:m7 e2:dim7 f2:m7 bf2:7
  f2:m7 e2:dim7 f2:m7 bf2:7 g2:m7 f4:m7 bf4:m7 bf2:m7 ef2:7
  
  af2:maj7 bf2:7 g2:m7 c2:m7 f2:m7 f2:m7/ef df2:9.11+ c2:7
  f2:m7 e2:dim7 f2:m7 bf2:7 ef2:6
  \chordOpenParen{ c2:7.9- }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Dorsey Brothers 1934]" 4 = 112

  \sectStart "A1"
  
  g2 af8 bf8 \tuplet 3/2 { g8 af8 bf8~ } | bf4 bf,4 c4 ef4 | f2 g8 af8 \tuplet 3/2 { f8 g8 af8~ } | af1 |
  \break
  af2 bf8 c8 \tuplet 3/2 { af8 bf8 c8~ } | c4 c,4 d4 f4 | bf2 af8 bf8 \tuplet 3/2 { g8 af8 bf8~ } | bf1 |
  
  \sect "B"
  
  c2~ c8 c,8 d8 f8 | bf8 bf8 bf2. | af4 c4 bf4 af4 | g1 |
  \break
  af2~ af8 d,8 ef8 f8 | g8 g8 g2. | c4 c4 g4 g4 | f1 |
  
  \sect "A2"

  g2 af8 bf8 \tuplet 3/2 { g8 af8 bf8~ } | bf4 bf,4 c4 ef4 | f2 g8 af8 \tuplet 3/2 { f8 g8 af8~ } | af1 |
  \break
  af2 bf8 c8 \tuplet 3/2 { af8 bf8 c8~ } | c4 c,4 d4 f4 | bf2 af8 bf8 \tuplet 3/2 { g8 af8 bf8~ } | bf1 |
  
  \sect "C"

  c2~ c8 c,8 d8 f8 | bf8 bf8 bf2 g4 | af4 ef'4 c4 af4 | g1 |
  \break
  af2 bf8 c8 \tuplet 3/2 { af8 bf8 c8~ } | c2 c8 d8 \tuplet 3/2 { bf8 c8 ef8~ } | ef2 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
