%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Heart and Soul"
  subtitle = \instrument
  poet = "Frank Loesser"
  composer = "Hoagy Carmichael"
  copyright = \markup \small { \now " " "© 1938 Famous Music Corporation" }
}

refrainLyrics = \lyricmode {
Heart and soul, __ I fell in love with you.
Heart and soul, __ the way a fool would do.
Mad -- ly, __ be -- cause you held me tight and stole a kiss in the night.

Heart and soul, __ I begged to be a -- dored.
Lost con -- trol __ and tum -- bled ov -- er -- board.
Glad -- ly, __ that mag -- ic night we kissed there in the moon -- mist.

Oh, but your lips were thrill -- ing, much too thrill -- ing.
Nev -- er be -- fore were mine so strange -- ly will -- ing.

But now I see __ what one em -- brace can do.
Look at me, __ it's got me lov -- ing you.
Mad -- ly, __ that lit -- tle kiss you stole held all my heart and soul.
}

refrainChords = \chordmode {
  f2 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  a2:m7 d2:m7 g2:m7 c2:7 f2 d2:m7 g2:m7 c2:7

  f2 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  a2:m7 d2:m7 g2:m7 c2:7 f2 g4:m7 c4:7 f2:maj7 c4:m7 f4:7
  
  bf2:maj7 a2:7 d2:7 g2:7 c2:7 f2:7 bf2:7 a2:7
  bf2:maj7 a2:7 d2:7 g2:7 c2:7 f2:7 bf2:7 c2:7

  f2 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  a2:m7 d2:m7 g2:m7 c2:7 a2:7.5+ d2:7 g2:m7 c2:7 f2
  \chordOpenParen{ d2:m7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [The Cleftones 1959]" 4 = 150

  \sectStart "A1"
  
  f4 f4 f2~ | f8 f8 e8 d8 e8 f8 g4 | a4 a4 a2~ | a8 a8 g8 f8 g8 a8 bf4 |
  \break
  c2 f,2~ |f8 d'8 c8 bf8 a4 g4 | f2 r8 g8 a8 bf8 | c4 bf8 a8 g2 |
  
  \sect "A2"

  f4 f4 f2~ | f8 f8 e8 d8 e8 f8 g4 | a4 a4 a2~ | a8 a8 g8 f8 g8 a8 bf4 |
  \break
  c2 f,2~ |f8 d'8 c8 bf8 a4 g4 | f2 r8 g8 a8 bf8 | c4 f,2. |
  
  \sect "B"
  
  r8 d'8 c8 bf8 a4. g8 | fs2 g2 | e2 f2 | d2 e2 |
  \break
  r8 d'8 c8 bf8 a4. g8 | fs2 g2 | e2 f2 | d2 e4. c8 |
  
  \sect "A3"

  f4 f4 f2~ | f8 f8 e8 d8 e8 f8 g4 | a4 a4 a2~ | a8 a8 g8 f8 g8 a8 bf4 |
  \break
  c2 f,2~ |f8 d'8 c8 bf8 a4 g4 | a1 | 
  \break
  r8 bf8 a8 g8 f4 e4 | f1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
