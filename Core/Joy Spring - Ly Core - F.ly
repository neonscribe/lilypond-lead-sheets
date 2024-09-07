%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Joy Spring"
  subtitle = \instrument
  poet = ""
  composer = "Clifford Brown"
  copyright = "© 1956 Second Floor Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4.
  
  f1:maj7 g2:m7 c2:7 f1:maj7 bf2:m7 ef8*5:7
  f4./a af4.:6 g8*5:m7 c2:7 f1:6 af2:m7 df2:7
  
  gf1:maj7 af2:m7 df2:7 gf1:maj7 b2:m7 e8*5:7
  bf4.:m7 a4.:7 af8*5:m7 df2:7 gf1:6 a2:m7 d2:7
  
  g2.:maj7 g2.:m7 c2:7 f2.:maj7 f2.:m7 bf2:7
  ef1:maj7 af2:m7 df2:7 gf1:maj7 g2:m7 c2:7

  f1:maj7 g2:m7 c2:7 f1:maj7 bf2:m7 ef8*5:7
  f4./a af4.:6 g8*5:m7 c2:7 f1:6

  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }

  f1:maj7 g2:m7 c2:7 f1:maj7 bf2:m7 ef2:7
  f2/a af2:6 g2:m7 c2:7 f1:6 af2:m7 df2:7
  
  gf1:maj7 af2:m7 df2:7 gf1:maj7 b2:m7 e2:7
  bf2:m7 a2:7 af2:m7 df2:7 gf1:6 a2:m7 d2:7
  
  g1:maj7 g2:m7 c2:7 f1:maj7 f2:m7 bf2:7
  ef1:maj7 af2:m7 df2:7 gf1:maj7 g2:m7 c2:7

  f1:maj7 g2:m7 c2:7 f1:maj7 bf2:m7 ef2:7
  f2/a af2:6 g2:m7 c2:7 f1:6 g2:m7 c2:7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 160

  \partial 4. c8 f8 c'8~ |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c2~ c8 a8 \tuplet 3/2 { g16 a16 g16 } f8 | g4. a8 r2 |
  r8 c,8 f8 d'8 c8 a8 \tuplet 3/2 { g16 a16 g16 } f8 |
  af8 f16 df16 bf8 g'8~ g4 \tuplet 3/2 { f8 g8 f8 } |
  \break
  c'8 f,4. f4. f8~ | f8 c8 f8 bf8 \tuplet 3/2 { a16 bf16 a16 } f8 d8 c8 |
  f8 c8 g'8 f8 r2 | r8 bf8 af8 gf8 f8 df8 gf8 df'8~ |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  df2~ df8 bf8 \tuplet 3/2 { af16 bf16 af16 } gf8 | af4. bf8 r2 |
  r8 df,8 gf8 ef'8 df8 bf8 \tuplet 3/2 { af16 bf16 af16 } gf8 | 
  a8 fs16 d16 b8 gs'8~ gs4 \tuplet 3/2 { fs8 gs8 fs8 } |
  \break
  df'8 gf,4. gf4. gf8~ | gf8 df8 gf8 cf8 bf8 gf8 \tuplet 3/2 { ef16 f16 ef16 } df8 |
  gf8 df8 af'8 gf8 r2 | r8 b8 a8 e8 g8 f8 \tuplet 3/2 { fs8 a8 ef'8 } |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d4. b8 \tuplet 3/2 { a16 b16 a16 } g8 bf4~ |
  bf8 f8 \tuplet 3/2 { e16 f16 e16 } d8 e8 df'8 \tuplet 3/2 { c16 df16 c16 } bf8 |
  c4. a8 \tuplet 3/2 { g16 a16 g16 } f8 af4~ |
  af8 ef8 \tuplet 3/2 { d16 ef16 d16 } c8 d8 df'8 \tuplet 3/2 { cf16 df16 cf16 } a8 |
  \break
  bf4 \tuplet 3/2 { g8 f8 ef8 } f4 g8 af8 | r8 bf8 cf8 df8 bf8 af8 g8 af8 |
  df4 \tuplet 3/2 { bf8 af8 gf8 } af4 bf4-. | r8 a8 g8 f8 e8 c8 f8 c'8~ |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  c2~ c8 a8 \tuplet 3/2 { g16 a16 g16 } f8 | g4. a8 r2 |
  r8 c,8 f8 d'8 c8 a8 \tuplet 3/2 { g16 a16 g16 } f8 |
  af8 f16 df16 bf8 g'8~ g4 \tuplet 3/2 { f8 g8 f8 } |
  \break
  c'8 f,4. f4. f8~ | f8 c8 f8 bf8 \tuplet 3/2 { a16 bf16 a16 } f8 d8 c8 |
  f8 c8 g'8 f8 r2 | r1 |

  \bar "|."
  \pageBreak
  
  \xTextMark \markup{ \bold \box "Solos" }

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "||"
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "||"
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "||"
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "||"

  \bar "|."  
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
