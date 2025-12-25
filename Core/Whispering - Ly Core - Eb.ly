%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Whispering"
  subtitle = \instrument
  poet = "Malvin Schonberger"
  composer = "John Schonberger"
  copyright = \markup \small { \now " " "© 1920 Sherman, Clay & Co." }
}

refrainLyrics = \lyricmode {
  Whis -- per -- ing while you cud -- dle near me,
  Whis -- per -- ing so no one can hear me,
  Each lit -- tle whis -- per seems to cheer me,
  I know it's true, there's no one dear, but you. You're
  
  whis -- per -- ing why you'll nev -- er leave me,
  Whis -- per -- ing why you'll nev -- er grieve me,
  Whis -- per and say that you be -- lieve me,
  Whis -- per -- ing that I love you.
}

refrainChords = \chordmode {
  ef1 ef1 a1:m7 d1:7
  ef1 ef1 c1:7.5+ c1:7

  f1:7 f1:7 bf1:7 bf1:7
  ef1 g2:m7 gf2:dim7 f2:m7 bf2:7 f2:m7 bf2:7
  
  ef1 ef1 a1:m7 d1:7
  ef1 ef1 c1:7.5+ c1:7

  f1:7 f1:7 bf1:7 bf1:7
  f1:m7 bf2:7 df2:7 ef2
  \chordOpenParen{ e2:dim7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

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
  \tempo "Medium [Frank Sinatra with Tommy Dorsey 1940]" 4 = 116

  \xTextMark \markup{ \bold \box "A1" }
  
  ef'2 d4 ef4 | f4 ef4 d4 ef4 | d1 | c1 |
  \break
  bf2 a4 bf4 | c4 bf4 a4 bf4 | af1 | g1 |

  \sect "B"
  
  g2 f4 g4 | c4 g4 f4 g4 | g1 | f1 |
  \break
  ef2 f4 g4 | bf2 c4 d4 | c2 bf4 d4 | c2 bf2 |

  \sect "A2"
  
  ef2 d4 ef4 | f4 ef4 d4 ef4 | d1 | c1 |
  \break
  bf2 a4 bf4 | c4 bf4 a4 bf4 | af1 | g1 |

  \sect "C"

  g2 f4 g4 | c4 g4 f4 g4 | g1 | f1 |
  \break
  f4 g4 af4 bf4 | c2 ef2 | ef2 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
