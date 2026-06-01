%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:30.080501Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "Coquette (Firehouse Jazz Band Fake Book)"
  subtitle = \subtitle
  poet = "Gus Kahn"
  composer = "Carmen Lombardo and John Green"
  copyright = \markup \small { \now " " "© 1928 Leo Feist Inc." }
}

refrainLyrics = \lyricmode {
Tell me why you keep fool -- ing, lit -- tle co -- quette?
Mak -- ing fun of the ones who love you.
Break -- ing hearts you are rul -- ing, lit -- tle co -- quette.
True hearts ten -- der -- ly dream -- ing of you.
Some day you'll fall in love as I fell in love with you.
May -- be some -- one you love will just be fool -- ing.
And when you're all a -- lone with on -- ly re -- gret.
You'll know, lit -- tle co -- quette, I loved you.
}

refrainChords = \chordmode {
  ef1 ef2 e2:dim7 bf2:7/f bf2:7 bf1:7
  bf1:7 bf1:7 ef1 f2:7 bf2:7

  ef1 ef2 e2:dim7 bf2:7/f bf2:7 bf1:7
  bf1:7 bf1:7 ef1 ef1

  ef1:7 ef1:7 af1 af2. gf4:7
  f1:7 f1:7 bf1:7 bf2:7 bf2:7.5+

  ef1 ef2 e2:dim7 bf2:7/f bf2:7 bf1:7
  bf1:7 bf1:7 ef1 ef1
}

refrainKey = ef

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Up Swing [Bob Crosby 1938]" 176

  \xTextMark \markup{ \bold \box "A1" }

  ef4. c8~ c2 | ef8 c8 ef8 c8~ c8 g4. | bf8 g8 bf8 g8~ g2~ | g2. r4 |
  \break
  bf4. g8~ g2 | bf8 g8 bf8 g8~ g8 bf,4. | c8 g'8~ g2.~ | g4 r4 r2 |

  \sect "A2"

  ef'4. c8~ c2 | ef8 c8 ef8 c8~ c8 g4. | bf8 g8 bf8 g8~ g2~ | g2. r4 |
  \break
  bf4. g8~ g2 | bf8 g8 bf8 g8~ g8 bf,4. | c8 ef8~ ef2.~ | ef4 r4 r2 |

  \sect "B"

  ef4. f8~ f2 | f8 g8 bf8 ef8~ ef8 c4. | bf8 g8 bf8 g8~ g8 ef4. | f2. r4 |
  \break
  f4. g8~ g2 | g8 a8 c8 f8~ f8 d4. | c4. b8~ b2 | c8( bf8 c8 bf8 c8) d4. |

  \sect "A3"

  ef4. c8~ c2 | ef8 c8 ef8 c8~ c8 g4. | bf8 g8 bf8 g8~ g2~ | g2. r4 |
  \break
  bf4. g8~ g2 | bf8 g8 bf8 g8~ g8 bf,4. | c8 ef8~ ef2.~ | ef4 r4 r2 |

  \bar "|."
}

whatKey = #(or whatKey refrainKey)


\include "../Include/paper.ily"

\include "../Include/refrain.ily"
