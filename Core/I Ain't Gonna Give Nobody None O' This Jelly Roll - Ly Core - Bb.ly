%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:35.593615Z"

\include "../Include/lead-sheets.ily"

headerTitle = "I Ain't Gonna Give Nobody None O' This Jelly Roll"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Spencer Williams and Clarence Williams"
headerCopyright = "© 1919 Shapiro, Bernstein & Co. Inc."

refrainLyrics = \lyricmode {
  I ain't gon -- na give no -- bod -- y none o' my jel -- ly roll. __
  I would_n't give you a_piece of cake, not to save your soul. __
  My mama told me to -- day __ just be_fore she went a_way __ \skip 1 \skip 1
  If I was a good lit -- tle girl, She'd put my hair in curls!
  There ain't no use for you to keep on hang -- in' 'round. __
  I know_you want_it, but I got -- ta turn you down.
  My jel -- ly roll is sweet __ \skip 1
  and the taste can't be beat. __
  I know you want it, but you can't have it. I ain't gon -- na give you none. __
}

refrainChords = \chordmode {
  s4

  bf1 bf1 c1:7 c1:7
  f1:7 f1:7 bf1 bf1
  g1:7 g1:7 c1:7 c1:7
  c1:7 c1:7 f4:7 r4*6 f4:7

  bf1 bf1 c1:7 c1:7
  f1:7 f1:7 d1:7 d1:7
  ef1 e1:dim7 bf1/f g1:7
  ef2 e2:dim7 bf2/f g2:7 c2:7 f2:7 bf1
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Fast [Louis Armstrong 1959]" 162

  \partial 4 f4 |

  \sectNoBreak "A1"

  f4 g8 g8 a4 g4 | a8 g4 a8~ a8 fs8 g4 | bf8 g4 g8~ g2~ | g2. g4 |
  \break
  a4 bf4 c8 bf4. | a8 bf4 c8~ c4 cs4 | d8 bf4 bf8~ bf2~ | bf2. g4 |

  \sect "B"

  af4 g4 fs8 g4 d'8~ | d2. r4 | d4 c4 b8 c4 g8~ | g2. c4 |
  \break
  d8 d8 d4 d4. c8 | d8 d8 d4 d2 | r4 a4 c4 a4 | g8 a4 g8~ g4
  gs4 |

  \sect "A2"

  f8 g4. a4 g4 | a8 g4 a8~ a4 g4 | bf8 g4 g8~ g2~ | g2. gs4 |
  \break
  a4 bf4 c4 bf4 | a8 bf4 c8~ c4 cs4 | d1~ | d2. bf4 |

  \sect "C"

  c8 g4 g8~ g4 g4 | g2. g4 | bf8 f4 f8 f4 fs4 | g2. bf4 |
  \break
  c4 bf4 cs4 bf4 | cs8 d4 a8 bf4 a8 bf8 | c4 d8 d8 c4 a4 | bf2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
