%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:36.088276Z"

\include "../Include/lead-sheets.ily"

headerTitle = "I Don't Want to Set the World on Fire"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Bennie Benjamin,Eddie Durham,Eddie Seiler,Sol Marcus"
headerCopyright = "© 1940 Cherio Corp."

refrainLyrics = \lyricmode {
I don't want to set the world on fi -- re. __
I just want to start __ a flame in your heart. __
In my heart I have but one de -- si -- re __
and that one is you, __ no oth -- er will do. __
I've lost all am -- bi -- tion,
all world -- ly claim. __
I just want to be the one you love.
And with your ad -- mis -- sion, that you feel the same __
I'll have reached the goal I'm dream -- ing of, __ be -- lieve me.
I don't want to set the world on fi -- re. __
I just want to start __ a flame in your heart. __
}

refrainChords = \chordmode {
  f1:maj7 a2:m7 af2:m7 g1:m7 g2:m7 g2:m7.5-
  c1:7 g2:m7 c2:7 a2:m7 d2:7.9- g2:7 c2:7

  f1:maj7 a2:m7 af2:m7 g1:m7 g2:m7 g2:m7.5-
  c1:7 g2:m7 c2:7 f2:6 g2:m7 gs2:dim7 f2/a

  c2:m7 f2:7 c2:m7 f2:7 bf1:maj7 bf1:maj7
  d2:m7 g2:7 d2:m7 g2:7 g1:m7 c2:7 c2:7.5+

  f1:maj7 a2:m7 af2:m7 g1:m7 g2:m7 g2:m7.5-
  c1:7 g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Ballad [Ink Spots 1941]" 87

  \sectNoBar "A1"

  a4 c4 c,8 d8 f8 a8 | c2 cf2 | bf4 d2.~ | d2 bf2 |
  \break
  a8 c8 a8 c8~ c2 | r4 a4 c8 cs8 d8 a8~ | a1~ | a1 |

  \sect "A2"

  a4 c4 c,8 d8 f8 a8 | c2 cf2 | bf4 d2.~ | d2 bf2 |
  \break
  a8 c8 a8 c8~ c2 | r4 a4 c8 cs8 d8 f,8~ | f1~ | f1 |

  \sectPageBreak "B"

  g8 g8 g8 d'8~ d8 d4 f,8 | g8 g8 g8 d'8~ d2 | c8 c8 bf8 bf8 a8 a8 d8 d8 | a2. g4 |
  \break
  a8 a8 a8 e'8~ e8 e4 g,8 | a8 a8 a8 e'8~ e2 |
  d8 cs8 d8 cs8 d8 cs8 \tuplet 3/2 { d8 ds8 e8~ } | e4 d8 a8~ a8 af4. |

  \sectPageBreak "A3"

  a4 c4 c,8 d8 f8 a8 | c2 cf2 | bf4 d2.~ | d2 bf2 |
  \break
  a8 c8 a8 c8~ c2 | r4 a4 c8 cs8 d8 f,8~ | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
