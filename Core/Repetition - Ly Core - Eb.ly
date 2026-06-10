%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:48.558152Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Repetition"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Neal Hefti"
headerCopyright = "© 1947 Encino Music"

refrainChords = \chordmode {
  a1:m7 b2:m7 e2:7.9- a1:m7 b2:m7 e2:7.9-

  a1:m7 a2:m7 d2:7.9-.5+ g1:m7 g2:m7 c2:7.9-.5+
  f1:m7 f2:m7 bf2:7.9-.5+ ef1:maj9 ef1:6

  f1:m7 bf1:7 ef1:maj9 ef1:6
  a1:m7.5- d1:7.9-.5+ g1:maj9 g4:maj9 g4 af2

  a1:m7 a2:m7 d2:7.9-.5+ g1:m7 g2:m7 c2:7.9-.5+
  f1:m7 f2:m7 bf2:7.9-.5+ ef1:maj9 ef1:6

  f1:m7 bf1:7 g1:m7.5- c2.:7.9-.5+ c4:7.9-
  f1:m7.5- bf2.:7.9-.5+ bf4:7.9- ef1:maj9 af1:9

  ef1:maj9 ef1:maj9

  ef1:maj9 af1:9 ef1:maj9
}

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Fast Latin [Charlie Parker 1947]" 166

  \xTextMark \markup{ \bold \box "Intro" }

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar ".|-||"
  \break

  \xTextMark \markup{ \bold \box "A1" }
  \set Score.currentBarNumber = #1

  b1~ | b2 bf2 | a1~ | a2 gs2 |
  \break
  g1~ | g2 fs2 | f1 | \tuplet 3/2 { r4 c4 d4 } \tuplet 3/2 { ef4 f4 g4 } |

  \sect "B"

  af1 | \tuplet 3/2 { r4 d,4 ef4 } \tuplet 3/2 { f4 g4 af4 } |
  bf1 | r8 d,8 ef8 f8 g8 af8 bf8 c8 |
  \break
  d2. c4 | bf2. fs4 | a1 | r4 d,4 \tuplet 3/2 { ef4 bf'4 af4 } |

  \sectPageBreak "A2"

  b1~ | b2 bf2 | a1~ | a2 gs2 |
  \break
  g1~ | g2 fs2 | f1 | \tuplet 3/2 { r4 c4 d4 } \tuplet 3/2 { ef4 f4 g4 } |

  \sect "C"

  af1 | r4 d,8 ef8 f8 g8 af8 bf8 | c2. bf4 | af2. g4 |
  \break
  bf2 af2 | fs2. d4 | f2. d8 ef8 | f2. d8 ef8 \textToCodaLastTime |
  f1 | r8
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  bf,8 c8 d8 ef8 f8 \tuplet 3/2 { g8 af8 bf8 }
  \endParenthesis \parenthesize
  |

  \bar "||-|."

  \textCodaBreak

  f2. d8 ef8 | f2. d8 ef8 | f1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
