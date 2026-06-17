%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:26.044401Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Batida Diferente"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Durval Ferreira & Maurício Einhorn"
headerCopyright = "© 1963 Casa Editoras Musicais Brasileras Reunidas CEMBRA, São Paulo"

refrainLeadingEighth = ##t

unsynchronizedRefrainLyrics = \lyricmode {
  Veja como bate engraçado o meu coração assim

  Tum tum tum tum tum tum tum
  Tum tum tum tum tum tum tum tum    tum tum tum

  Bate realmente sincopado
  Vem ouvir assim
  Mas bem juntinho de mim

  Tum tum tum tum   tum tum tum tum     tum tum tum
  Se do coração   batida diferente faz você   vibrar
  Eu vou lhe mostrar que o meu coração
  Tum    tum tum tum tum pode variar

  E juntos nós iremos tentar mudar e improvisar
  O que vem do coração

  Tum tum tum tum    tum tum   tum tum   tum tum      tum

}

bossaRhythm = ##t

refrainChords = \chordmode {
  s8

  g2:maj7 g2:6 d2:m7 g2:13 c2:maj7 c2:6.9 c2:m7 f2:9
  b2:m7 bf2:13 a2:m7 af2:13 b2:m7 bf2:13 a2:m7 af2:13

  g2:maj7 g2:6 d2:m7 g2:13 c2:maj7 c2:6.9 c2:m7 f2:9
  b2:m7 bf2:13 a2:m7 af2:13 g1:6 bf2:m7 ef2:7.11+

  d2:m7 g2:13 d2:m7 g2:13 c2:maj7 f2:13 c1:6.9
  e2:m7 a2:13 e2:m7 a2:13 a1:m11 af1:13

  g2:maj7 g2:6 d2:m7 g2:13 c2:maj7 c2:6.9 c2:m7 f2:9
  b2:m7 bf2:13 a2:m11 af2:7.11+ g1:6 \chordInsideParens{ d1:7.9- }
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Fast Bossa [Sérgio Mendes 1966]" 200

  \partial 8 d8 |

  \sectNoBreak "A1"

  cs8 d8 c'8 b8 a8 g8 fs8 f8~ | f4 c8 b8~ b4 g'8 f8 | e4 b8 a8~ a2 | f'4 ef8 d8 c8 bf8 c8 d8~ |
  \break
  d8 d8 d8 d8 g4 g4 | d4 d4 f8 d8 c8 d8~ | d2 r2 | r1 |

  \sect "A2"

  cs8 d8 c'8 b8 a8 g8 fs8 f8~ | f4 c8 b8~ b4 g'8 f8 | e4 b8 a8~ a2 | f'4 ef8 d8 c8 bf8 c8 d8~ |
  \break
  d8 d8 d8 d8 g4 g4 | d4 d4 f8 d8 fs8 g8 | r1 | r1 |

  \sect "B"

  g8 f8 g8 f8 e8 d4 g8~ | g8 f8 g8 f8 e8 d4 e8~ | e4 b8 a8~ a8 b4 a8~ | a1 |
  \break
  a'8 g8 a8 g8 fs8 e4 a8~ | a8 g8 a8 g8 fs2 | d8 d8 d8 d8 d8 d4 f8~ | f8 d8 d8 c8 d4. d8 |

  \sect "A3"

  cs8 d8 c'8 b8 a8 g8 fs8 f8~ | f4 c8 b8~ b4 g'8 f8 | e4 b8 a8~ a2 | f'4 ef8 d8 c8 bf8 c8 d8~ |
  \break
  d8 d8 d8 d8 g4 g4 | d4 d4 f8 d8 fs8 g8 | r1 | r1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
