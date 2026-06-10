%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:47.441804Z"

\include "../Include/lead-sheets.ily"

headerTitle = "One for Daddy-O"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Nat Adderley"
headerCopyright = "© 1958 Upam Music Co."

refrainChords = \chordmode {
  s2. bf1:m7 c2:m7.5- f2:7 bf1:m7 bf1:7.9+ ef1:7 ef1:7
  bf2:m7 f2:7 bf1:m7 c1:7.9+ f1:7 bf1:m7 c2:7.9+ f2:7
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium Swing [Cannonball Adderley 1958]" 104

  \partial 2. bf4 df8 f8 g4 |

  \bar ".|:"
  \repeat volta 2 {

  bf4
  \magnifyMusic 0.63 { bf,4 df8 f8 g4 } |
  \magnifyMusic 0.63 { bf4 } bf,4 df8 f8 g4 |

  \break

  bf4 af4 f8 ef8 r8 df8 |

  r4 bf4 df8 f8 g4 |

  \break

  bf4
  \magnifyMusic 0.63 { bf,4 df8 f8 g4 } |

  \magnifyMusic 0.63 { bf4 } bf,4 df8 f8 g4 |

  \break

  bf4 af4 f8 ef8 r8 df8 |

  r4 bf4 df8 f8 g4 |

  \break

  af8 f8 af8 f8~ f4 af8 f8 \textToCodaLastTime | af8 f4. af8 f8 a8 bf8 |

  \break

  r1 | r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  bf,4 df8 f8
  \endParenthesis \parenthesize
  g4
  }
}

codaChords = \chordmode {
  f1:7 bf1:m11
}

codaKey = bf

codaMelody = \relative f' {
  \time 4/4
  \key \codaKey \minor
  \clef \whatClef

  \textCoda

  af8 f4. af8 f8 af8 c8~ | c1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"

\include "../Include/coda.ily"

\markup "Head is played twice before and twice after solos."
