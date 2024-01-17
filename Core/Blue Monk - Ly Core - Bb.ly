%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Blue Monk"
  subtitle = \instrument
  poet = "Abbey Lincoln"
  composer = "Thelonious Monk"
  copyright = "© 1962 Thelonious Music Corp."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  bf1:7 ef1:7 bf1:7 bf1:7
  ef1:7 e1:dim7 bf1:7 bf1:7
  c1:m7 f1:7 bf1:7 \chordInsideParens{ f1:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow" 4 = 65

  d8 ef8 e8 f8~ f2 | g8 gs8 a8 bf8~ bf2 |
  f8 g8 f8 e8 ef8 e,8 cs'8 d8~ | \tuplet 3/2 { d8 df4 } c2 r4 |
  \break
  g'8 gs8 a8 bf8~ bf2 | bf8 b8 c8 df8~ df2 |
  f,8 g8 f8 e8 ef8 e,8 cs'8 d8~ | d2. \tuplet 3/2 { f8 f8 f8 } |
  \break
  f8 f,8~ f2. | f'8 g8 f8 e8 ef8 e,8 cs'8 d8~ |
  d4 f8 g8 f8 e8 ef8 e,8 | cs'8 d8~ d2 r4 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column {
    \vspace #1
    \line { \large { Goin' alone, life is your own, but the cost sometimes is dear. } }
    \line { \large { Bein' complete, knowin' defeat, keepin' on from year to year. } }
    \line { \large { It takes some doin'. } }
    \line { \large { Monkery's the blues you hear, keepin' on from year to year. } }
    \vspace #1
    \line { \large { Life is a school, 'less you're a fool, but the learnin' brings you pain. } }
    \line { \large { Knowin' at once you're just a dunce, trial and error, loss and gain. } }
    \line { \large { It takes some doin'. } }
    \line { \large { Monkery's a slow, slow train, trial and error, loss and gain. } }
    \vspace #1
    \line { \large { Findin' your one, place in the sun, doesn't come the easy way. } }
    \line { \large { Shallow ain't deep, nothin' is cheap, measured by the dues you pay. } }
    \line { \large { It takes some doin'. } }
    \line { \large { Monkery's a blue highway, measured by the dues you pay. } }
    \vspace #1
  }
}

performanceNotes =
\markup {
  \vspace #3
  \column {
    \line { \huge { Intro: clarinet 12 bars } }
    \line { \huge { Vocal 24 bars } }
    \line { \huge { Guitar solo 24 bars } }
    \line { \huge { Vocal 12 bars } }
    \line { \huge { Ending: ritard last line, with ''articulation'' } }
  }
}

\include "../Include/notes.ily"
