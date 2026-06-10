%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:33.593274Z"

\include "../Include/lead-sheets.ily"

headerTitle = "(I Love You) For Sentimental Reasons"
headerSubtitle = \subtitle
headerPoet = "Derek Watson"
headerComposer = "William Best"
headerCopyright = "© 1945 Duchess Music Corporation"

refrainLyrics = \lyricmode {
I love you for sen -- ti -- men -- tal rea -- sons,
I hope you do be -- lieve me, I'll give you my heart.
I love you and you a -- lone were meant for me,
please give your lov -- ing heart to me, and say we'll nev -- er part.
I think of you ev -- 'ry morn -- ing; dream of you ev -- 'ry night.
Dar -- ling, I'm nev -- er lone -- ly when ev -- er you're in sight.
I love you for sen -- ti -- men -- tal rea -- sons,
I hope you do be -- lieve me, I've giv -- en you my heart.
heart.
}

refrainChords = \chordmode {
  s4

  f2:maj7 af2:7 g2:m7 c2:7
  f2:maj7 d2:m7 g2:m7 c2:7 f2:6 d2:m7
  g2:m7 c2:7 f2:maj7 d2:7.9- g4:m7 \chordSlash 1 c4:7 gf4:7.5+

  f2:maj7 af2:7 g2:m7 c2:7
  f2:maj7 d2:m7 g2:m7 c2:7 f2:6 d2:m7
  g2:m7 c2:7 f2:6 bf2:m6 f4:6 \chordSlash 1 c4:m7 b4:7.5-

  bf2:maj7 b2:dim7 f2/c d2:7.9- g2:m7 c2:7 f1:maj7
  e2:m7.5- a2:7.9- d1:m7 g1:m7 g4:m7/c \chordSlash 1 c4:7 gf4:7.5+

  f2:maj7 af2:7 g2:m7 c2:7
  f2:maj7 d2:m7 g2:m7 c2:7 f2:6 d2:m7
  g2:m7 c2:7 f2:6 d2:7.9- g4:m7 \chordSlash 1 c4:7 gf4:7.5+

  f2:6 g2:m7 gf2:7 f2:maj7
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Nat King Cole 1946]" 72

  \partial 4 d'4 |

  \sectNoBreak "A1"

  c8 c4.~ c2~ | c4 c4 bf8 a8 g8 f8 | a8 a4.~ a2~ | a4 bf4 a8 g8 a8 c,8 |
  f8 f4.~ f2~ | f4 a4 \tuplet 3/2 { g4 f4 g4 } | a1~ | a2. d4 |

  \sect "A2"

  c8 c4.~ c2~ | c4 c4 bf8 a8 g8 f8 | a4. c8 a2~ | a4 bf4 a8 g8 a8 c,8 |
  f4. a8 f2~ | f4 a4 g8 f8 e8 g8 | f1~ | f2. f4 |

  \sectPageBreak "B"

  \tuplet 3/2 { d'4 d4 d4 } e4. d8 | c4 c2. | \tuplet 3/2 { bf4 bf4 bf4 } d4. c8 | a1 |
  \tuplet 3/2 { g4 g4 g4 } bf4. a8 | g4 f2 a4 | d8 d4.~ d4 c8 b8 | c2. c4 |

  \sect "A3"

  c8 c4.~ c2~ | c4 c4 bf8 a8 g8 f8 | a8 a4.~ a2~ | a4 bf4 a8 g8 a8 c,8 |
  f8 f4.~ f2~ | f4 a4 g8_"(rit. last time)" f8 e8 g8 \textToCodaLastTime | f1~ | f2. r4 \daCapoAfterSolos |

  \bar "||-|."

  \textCodaBreak

  f1 | <gf bf df ff>4 <gf bf df ff>4 <f a c e>2\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
