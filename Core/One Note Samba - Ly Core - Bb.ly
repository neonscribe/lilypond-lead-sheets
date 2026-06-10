%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:47.396097Z"

\include "../Include/lead-sheets.ily"

headerTitle = "One Note Samba (Samba de uma Nota Só)"
headerSubtitle = \subtitle
headerPoet = "Newton Mendonça, Jon Hendricks"
headerComposer = "Antônio Carlos Jobim"
headerCopyright = "© 1960 Jobim Music"

bossaRhythm = ##t
leadingEighth = ##t

refrainChords = \chordmode {
  s4.

  d1:m7 df1:7 c1:m7 b1:7.5-
  d1:m7 df1:7 c1:m7 b1:7.5-

  f1:m7 bf1:7 ef1:maj7 af1:7
  d1:m7 df1:7 c2:m7 b2:7.5- bf1:6

  ef1:m7 af1:7 df1:maj7 df1:maj7
  df1:m7 gf1:7 b1:maj7 c2:m7.5- b2:7.5-

  d1:m7 df1:7 c1:m7 b1:7.5-
  d1:m7 df1:7 c1:m7 b1:7.5-

  f1:m7 bf1:7 ef1:maj7 af1:7
  df1:6 c1:7 b1:maj7 bf2:6
  \chordInsideParens{ f2:7.5+ }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Samba [João Gilberto 1960]" 164

  \partial 4. f4 f8 |

  \sectNoBreak "A1"

  f4 f8 f8~ f8 f4 f8~ | f4. f8 r8 f4 f8 | f4 f8 f8~ f8 f4 f8~ | f2 r8 f4 f8 |
  \break
  f4 f8 f8~ f8 f4 f8~ | f4. f8 r8 f4 f8 | f4 f8 f8~ f8 f4 f8~ | f2 r8 bf4 bf8 |

  \sect "B1"

  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf8 bf8 bf4~ bf8 bf4 bf8 |
  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf4. r8 r8 f4 f8 |
  \break
  f4 f8 f8~ f8 f4 f8~ | f8 f4 f8~ f8 f8 f4 | f4 f8 f8~ f8 f4 bf8 | r1 |

  \sectPageBreak "C"

  bf8 c8 df8 ef8 df8 c8 bf8 af8 | gf8 f8 ef8 df8 c8 df8 ef8 f8 |
  c4. bf8 r8 c8 df8 f8 | c4. bf8 r2 |
  \break
  af'8 bf8 cf8 df8 cf8 bf8 af8 gf8 | ff8 ef8 df8 cf8 bf8 cf8 df8 ef8 |
  bf4. af8 r8 bf8 cf8 ef8 | gf4. f8 r8 f4 f8 |

  \sect "A2"

  f4 f8 f8~ f8 f4 f8~ | f4. f8 r8 f4 f8 | f4 f8 f8~ f8 f4 f8~ | f2 r8 f4 f8 |
  \break
  f4 f8 f8~ f8 f4 f8~ | f4. f8 r8 f4 f8 | f4 f8 f8~ f8 f4 f8~ | f2 r8 bf4 bf8 |

  \sect "B2"

  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf4. bf8 r8 bf4 bf8 |
  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf2 r8 bf4 bf8 |
  \break
  bf4 bf8 bf8~ bf8 bf4 bf8~ | bf8 bf4 bf8 bf4 bf4~ |
  bf4 bf8 bf8~ bf8 bf4 bf8 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
