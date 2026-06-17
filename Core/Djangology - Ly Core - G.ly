%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:31.493353Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Djangology"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Django Reinhardt"
headerCopyright = "© 1935 Publications Francis Day S.A."

refrainChords = \chordmode {
  a1/cs c1:m6 g1/b bf1:dim7
  a1:m7 af1:7 g2 d2:7 g1

  a1:7 d1:7 g1 bf1:dim7
  a1:m7 d1:7 g1 g1

  a1:7 d1:7 g1 bf1:dim7
  a1:m7 d1:7 g1 g1

  af2 ef2:7 af1 a2 e2:7 a1

  a1:7 d1:7 g1 bf1:dim7
  a1:m7 d1:7 g1 g1

  a1/cs c1:m6 g1/b bf1:dim7
  a1:m7 af1:7 g4
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \xTextMark \markup{ \bold \box "Intro" }
  \tempo \markup { "Charleston" \rhythm { 4. 8~ 2 } }

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \sect "A1"
  \tempoFour "Easy Swing [Django Reinhardt 1935]" 184

  cs8 e8 g8 b8 r8 b4 r8 | c,8 ef8 f8 b8~ b4. r8 | b,8 d8 fs8 a8 r8 a4 r8 | bf,8 df8 e8 a8~ a4 g4 |
  \break
  c,4 e2 c4 | b4 d2 b4 | fs4. e8~ e2 | r1 |

  \sect "A2"

  cs'8 e8 g8 b8 r8 b4 r8 | c,8 ef8 f8 b8~ b4. r8 | b,8 d8 fs8 a8 r8 a4 r8 | bf,8 df8 e8 a8~ a4 g4 |
  \break
  c,4 e2 c4 | b4 d2 b4 | fs4. e8~ e2 | r1 |

  \sectPageBreak "B"

  af8 bf8 c8 df8 ef4 ef8 ef8~ | ef2 r2 | a,8 b8 cs8 d8 e4 e8 e8~ | e2 r2 |

  \sect "A3"

  cs8 e8 g8 b8 r8 b4 r8 | c,8 ef8 f8 b8~ b4. r8 | b,8 d8 fs8 a8 r8 a4 r8 | bf,8 df8 e8 a8~ a4 g4 |
  \break
  c,4 e2 c4 | b4 d2 b4 \textToCoda | fs4. e8~ e2 | r1 |

  \bar "||-|."
  \textCodaBreak

  \tempo \markup { "Charleston" \rhythm { 4. 8~ 2 } }

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \partial 4 \rsq\fermata |
  \bar "|."
}

\include "../Include/refrainonly.ily"
