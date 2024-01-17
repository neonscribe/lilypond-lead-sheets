%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = \songTitle
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Jerome Kern"
  copyright = "© 1939 T.B. Harms Co."
}

verseLyrics = \lyricmode {
Time and a -- gain I've longed for ad -- ven -- ture,
some -- thing to make my heart beat the fast -- er.
What did I long for? I nev -- er real -- ly knew.
Find -- ing your love, I've found my ad -- ven -- ture,
touch -- ing your hand, my heart beats the fast -- er,
all that I want in all of this world is you.
}

verseChords = \chordmode {
  g2:maj7 d2:sus7 g2:maj7 d2:sus7 a2:m7 d2:7 a2:m7 d2:13
  g2:maj7 f2:7.11+ e1:7.5+ a1:13 a2:m7 d2:7
  a2:m7 d2:sus7 g2:maj7 d2:sus7 e1:m7 fs2:m7.5- b2:7.5+
  a1:m7 d2:sus7 d2:7 g1:6
  g4:6 c4:7 bf4:/d c4:/e
}

verseKey = g

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Freely"

  \mark \markup "Verse"
  
  d8 d8 d4 g4 a4 | b4 c8 b8 a4 g4 | d8 d8 d4 a'4 b4 | c4 d8 c8 b4 a4 |
  d,8 d8 d4 b'4 c4 | d4 e8 d8 c4 b4 | a1 | r1 |
  d,8 d8 d4 g4 a4 | b4 c8 b8 a4 g4 | b,8 b8 b4 fs'4 g4 | a4 b8 a8 g4 fs4 |
  d8 d8 d4 g4 d4 | d8 d8 d4 a'4 d,4 | g1 | r4 e4 f4 g4 |
  
  \bar "||"

  \key af \major
  \pageBreak
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"
