%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Makin' Whoopee!"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Walter Donaldson"
  copyright = \markup \small "© 1928 Donaldson, Douglas & Gumble, Inc."
}

refrainLyrics = \lyricmode {
An -- oth -- er bride, __ an -- oth -- er June, __ an -- oth -- er sun -- ny hon -- ey -- moon. __
An -- oth -- er sea -- son, __ an -- oth -- er rea -- son __ for mak -- in' whoop -- ee! __

A lot of shoes, __ a lot of rice, __ the groom is ner -- vous, __ he ans -- wers twice. __
It's real -- ly kill -- ing __ that he's so will -- ing __ to make whoop -- ee! __

Pic -- ture a lit -- tle love nest, down where the ros -- es cling
Pic -- ture the same sweet love nest, think what a year can bring. __

He's wash -- ing dish -- es __ and ba -- by clothes. __
He's so am -- bit -- tious __ he e -- ven sews. __
But don't for -- get, folks, __ that's what you get, folks, __ for mak -- in' whoop -- ee! __
}

refrainChords = \chordmode {
  s2

  f2:maj7 fs2:dim7 g2:m7 c2:7 c2:m7 f2:7 bf2:maj7 ef2:7
  f2:maj7 d2:m7 df2:7 c2:7 f2:6 d2:m7 g2:m7 c2:7

  f2:maj7 fs2:dim7 g2:m7 c2:7 c2:m7 f2:7 bf2:maj7 ef2:7
  f2:maj7 d2:m7 df2:7 c2:7 f1:6 f1:6

  a2:m7.5- d2:7.9- g1:m7 bf2:m7 ef2:7 f1:maj7
  a2:m7.5- d2:7.9- g1:m7 bf2:m7 ef2:7 a4:m7 d4:7.9- g4:m7 c4:7

  f2:maj7 fs2:dim7 g2:m7 c2:7 c2:m7 f2:7 bf2:maj7 ef2:7
  f2:maj7 d2:m7 df2:7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Eddie Cantor 1928]" 4 = 110
  
  \partial 2 \invisEighth c8 d8 c8 |
  \bar "||"

  \sectStart "A1"
  
  a'2~ a8 c,8 d8 c8 | bf'2~ bf8 c,8 d8 c8 | c'2~ c8 f,8 g8 f8 | c'2~ c8 bf8 c8 bf8 |
  \break
  a4 a4~ a8 c,8 d8 c8 | af'4 af4~ af8 fs8 g8 gs8 | a4 f2.~ | f2 r8 c8 d8 c8 |
  
  \sect "A2"

  a'2~ a8 c,8 d8 c8 | bf'2~ bf8 c,8 d8 c8 | c'4 c4~ c8 f,8 g8 f8 | c'2~ c8 bf8 c8 bf8 |
  \break
  a4 a4~ a8 c,8 d8 c8 | af'4 af4~ af8 fs8 g8( gs8) | a4 f2.~ | f2 r2 |
  
  \sect "B"
  
  c'8 ef4 c8 ef4 c4 | bf4 bf2. | bf8 df4 bf8 df4 bf4 | a2. r4 |
  \break
  c8 ef4 c8 ef4 c4 | bf4 bf2. | bf8 df4 bf8 df4 bf4 | a2~ a8 c,8 d8 c8 |
  
  \sect "A3"

  a'4 a4~ a8 c,8 d8 c8 | bf'2~ bf8 c,8 d8 c8 | c'4 c4~ c8 f,8 g8 f8 | c'2~ c8 bf8 c8 bf8 |
  \break
  a4 a4~ a8 c,8 d8 c8 | af'4 af4~ af8 fs8 g8 gs8 | a4 f2.~ | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
