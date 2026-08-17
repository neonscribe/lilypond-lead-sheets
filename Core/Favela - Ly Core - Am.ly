%% -*- Mode: LilyPond -*-

songID = "2026-07-29T02:06:09.71791Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Favela (O Morro Não Tem Vez)"
headerSubtitle = \subtitle
headerPoet = "Vinicius de Moraes"
headerComposer = "Antônio Carlos Jobim"
headerCopyright = "© 1962 Jobim Music"

bossaRhythm = ##t

refrainLyrics = \lyricmode {
O mor -- ro não __ tem vez __
e o que e -- le fez __ já foi __ de mais. __
Mas o -- lhem bem __ vo -- cês __
quan -- do de -- rem vez __ ao mor -- ro
to -- da a cida -- de vai __ can -- tar. __
Mor -- ro __ pe -- de pas -- sa -- gem.
Mor -- ro __ quer __ se mo -- strar.
A bram __ a -- las pro mor -- ro.
Tam -- bo -- rim __ vai fa -- lar.
É um, é dois, __ é três. __ é cem,
é mil a ba -- tu -- car. __
O mor -- ro não __ tem vez __
mas se de -- rem vez __ ao mor -- ro
to -- da a cida -- de vai __ can -- tar. __
}

refrainChords = \chordmode {
  s4
  
  a1:13 g1:13 a1:13 g1:13
  a1:13 g1:13 a1:13.9+ a1:7.5+

  d1:m7 g1:13 cs1:m7 c1:7
  f2:6 e2:7 a2:m7 e2:m7 a1:m7 a2:7.5+ a2:7 

  d1:m7 a1:m7 d1:m7 a1:m7
  d1:m7 a1:m7 f4.:7.9+ e4.:7.9+ d4*5:7.9+
  
  a1:13 g1:13 a1:13 g1:13
  a1:13 g1:13 a1:13.9+ a1:7.5+

  d1:m7 g1:13 cs1:m7 c1:7
  f2:6 e2:7 a2:m7 e2:m7

  a1:m7 a1:m9
}

refrainKey = a

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium Bossa" 144

  \partial 4 e'4 |

  \sectNoBreak "A1"
  
  a2. e4 | g2~ g8 e4 a8~ | a2 r8 e8 e8 e8 | g2~ g8 e4 a8~ |
  a2. e4 | g2~ g8 e4 c8~ | c1 | r2 r4 a4 |
  \break
  d2. c4 | e2~ e8 d4 e8~ | e2 r8 g4 a8 | c8 a4 g8~ g8 e4 d8~ |
  d8 c4 e8~ e8 d4 c8 | a8 g4 e8~ e8 g4 a8~ | a1 | r1 |
  
  \sect "B"
  
  d4. f8~ f4 d4~ | d8 c4 c8 c4 a4 | d4. f8~ f4 d4~ | d8 c4 c8 c2 |
  d4. f8~ f4 d4~ | d8 c4 c8 c4 a4 | af'4. g8~ g4 f4~ | f8 d4 d8 d4 e4 |

  \sect "A2"

  a2. e4 | g2~ g8 e4 a8~ | a2 r8 e4. | g2~ g8 e4 a8~ |
  a2. e4 | g2~ g8 e4 c8~ | c1 | r2 r4 a4 |
  \break
  d2. c4 | e2~ e8 d4 e8~ | e2 r8 g4 a8 | c8 a4 g8~ g8 e4 d8~ |
  d8 c4 e8~ e8 d4 c8 | a8 g4 e8~ e8 g4 a8~ | a1 | r1 |

  \bar "|."
}

afterText = \markup "Some instrumental versions repeat A1, using an AABA instead of an ABA form."

\include "../Include/refrainonly.ily"
