%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "There Is No Greater Love"
  subtitle = \instrument
  poet = "Marty Symes"
  composer = "Isham Jones"
  copyright = "© 1936 Music Sales Corporation"
}

refrainLyrics = \lyricmode {
There is no great -- er love
than what I feel for you, __
no great -- er love, __ no heart so true.
There is no great -- er thrill
than what you bring to me, __
No sweet -- er song
than what you sing to me. __
You're the sweet -- est thing I have ev -- er known,
and to think that you are mine a -- lone!
There is no great -- er love
in all the world it's true, __
no great -- er love
than what I feel for you.
}

refrainChords = \chordmode {
  \chordInsideParens{ f2.:7 }

  bf1:maj7 ef1:7 af1:7.5- g1:7
  c1:7 c1:7 c1:m7 f1:7

  bf1:maj7 ef1:7 af1:7.5- g1:7
  c1:7 c2:7 f2:7 bf1:6 bf1:6

  a2:m7.5- d2:7 g1:m a2:m7.5- d2:7 g1:m
  a2:m7.5- d2:7 g1:m c1:7 f1:7


  bf1:maj7 ef1:7 af1:7.5- g1:7
  c1:7 c2:7 f2:7 bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \partial 2. a4 bf4 c4 |
  \bar "$"

  \xTextMark \markup{ \bold \box "A1" }
  
  bf4 a4 g4. d8 | f4 e4 ef4 bf4 | d1~ | d4 d4 a'4 af4 |
  \break
  g1~ | g4 g4 d'4 df4 | c1 | r4 a4 bf4 c4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  bf4 a4 g4. d8 | f4 e4 ef4 bf4 | d1~ | d4 d4 a'4 af4 |
  \break
  g4 g4 d'4 c4 | bf2 c2 | bf1~ | bf2. r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d,4 fs4 a4 c4 | bf1 | fs4 a4 c4 ef4 | d1 |
  \break
  d,4 fs4 a4 c4 | bf4 a4 g4 d4 | c1 | r4 a'4 bf4 c4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  bf4 a4 g4. d8 | f4 e4 ef4 bf4 | d1~ | d4 d4 a'4 af4 |
  \break
  g4 g4 d'4 c4 | bf2 c2 | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
