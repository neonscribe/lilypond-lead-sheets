%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Love Is Here to Stay"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small { \now " " "© 1938 Chappell & Co." }
}

verseLyrics = \lyricmode {
  The more I read the pa -- pers
  The less I com -- pre -- hend
  The world and all its ca -- pers
  And how it all will end.
  No -- thing seems to be last -- ing,
  But that is -- n't our af -- fair.
  We've got some -- thing per -- ma -- nent,
  I mean in the way __ we care. __
}

verseChords = \chordmode {
  \chordInsideParens{ c4:13 }
  
  f1:6 f1:maj7 d1:9 d1:9
  g1:m7 c1:9 f2:6/a af2:dim7 g2:m7 c2:7 bf1:maj7
  f1/a g1:13 
  \chordInsideParens{ c1:7 }
  bf1:maj7
  e2:m7.5- a2:7 d1:7 g1:7 c1:13 c4:13
}

verseKey = f

verseMelody = \relative g' {
  \time 2/2
  \key f \major
  \clef \whatClef
  \tempo "Freely"

  \xTextMark \markup{ "Verse" }
  
  \partial 4 a4 |
  \bar "||"
  
  c4 c4 a4 d,4 | e4 e2 a4 | c4 c4 a4 d,4 | e2. a4 |
  \break
  c4 c4 a4 c,4 | d4 d2 e4 | g8 g8 g2 f4 | g1 | d'4 c4 bf8 a8 bf4 |
  \break
  c4 c2 f,4 | \tuplet 3/2 { e4 e4 e4 } e4 d4 | e1 | d'4 c4 bf4 a4 |
  \break
  g8 g8 g2 a4 | fs8 fs4 a8 d,2~ | d2 f2 | a1~ |
  
  \partial 4 a4

  \bar "||"
  \xPageBreak
}

refrainLyrics = \lyricmode {
  It's ver -- y clear
  our love is here to stay,
  Not for a year, but ev -- er and a day.
  The ra -- di -- o and the tel -- e -- phone
  and the mov -- ies that we know
  may just be pass -- ing fan -- cies,
  and in time may go.
  But, oh my dear,
  our love is here to stay,
  To -- geth -- er we're go -- ing a long, long way.
  In time the Rock -- ies may crum -- ble,
  Gi -- bral -- tar may tum -- ble,
  they're on -- ly made of clay,
  but our love is here to stay.
  (It's ver -- y)
}

refrainChords = \chordmode {
  s2.

  g1:9 g2:m7 c2:7 f2:6 bf2:7
  a2:m7 d2:7 g1:9 g2:m7 c2:7 ef2:9.5- d2:9
  b2:m7.5- e2:7.9- a2:m7 d2:7 g2:m7 c2:7 f2:maj7
  \chordInsideParens{ bf2:maj9 }
  e2:m7.5- a2:7 d1:m7 g1:7 g1:m7 c2:7
  \chordInsideParens{ d2:7 }
  
  g1:9 g2:m7 c2:7 f2:6 bf2:7
  a2:m7 d2:7 g1:9 g2:m7 c2:7 ef2:9.5- d2:9
  b2:m7.5- e2:7.9- a2:m7 d2:7 g2:m7 c2:7
  ef2:9.5- d2:7 g2:m7 gs2:dim7 a2:m7 d2:7
  g2:m7 c2:9 f1:6
  \chordInsideParens{ d1:7 }
}

refrainKey = f

refrainMelody = \relative g {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef

  \tempo "Medium [Frank Sinatra 1956]" 4 = 108

  \partial 2. c4 d4 a'4 |
  
  \sectNoBreak "A1"
  
  f1 | f8 g4 f8 g4 g4 | f1 | r4 c4 d4 c'4 |
  \break
  a1 | f8 g4 f8 g4 g4 | a1 | r4 e'4 e4 d4 |

  \sect "B"

  c2 d4. c8 | bf8 bf8 bf4 c4. bf8 | a4 a4 c4 bf4 | g4 a4 a4 g4 |
  \break
  f4 g4 e4 f4 | r8 g4 a8 fs4 g4 | d'1 | r4 c,4 d4 a'4 |

  \sect "A2"

  f1 | f8 g4 f8 g4 g4 | f1 | r4 c4 d4 c'4 |
  \break
  a1 | f8 g4 f8 g4 g4 | a1 | r4 e'4 e4. d8 |

  \sect "C"

  c8 c8 c4 d8 d4 c8 | bf8 bf8 bf4 c8 c4. | r8 a8 gs8 a8 c4 bf4 | g2 d'2 |
  \break
  r4 c4 d4 a4 | c2 d,2 | f1 | r1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

%%% \include "../Include/verse.ily"
\include "../Include/refrain.ily"
