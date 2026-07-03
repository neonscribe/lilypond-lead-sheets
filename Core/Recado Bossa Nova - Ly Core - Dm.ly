%% -*- Mode: LilyPond -*-

songID = "2026-07-01T15:43:46.29601Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Recado Bossa Nova"
headerSubtitle = \subtitle
headerPoet = "Luís Antônio"
headerComposer = "Djalma Ferreira"
headerCopyright = "© 1959 Editions Drink Ltda."

leadingEighth = ##t

refrainEnglishLyrics = \lyricmode {
No strings have pearls in a velvet glove
The thing I long for is the gift of love
No ring of gold but a dream to unfold

When all the stars have flown and we′re alone

The gift of love is a precious thing
A touch of magic on a day in spring
The golden dream every dreamer pursues
Remember darling, never refuse the gift of love

For love can be a melody that lingers
Or slip like April wine right through your fingers
So kiss me sweet till our secret star
Illuminates the way to Shangri-La
Whatever fate may befall all I know
Is that the gift of love is the greatest gift of all
}

refrainPortugueseLyrics = \lyricmode {
Você, errou quando olhou, pra mim,
Uma esperança, fez nascer, em mim,
Depois levou, pra tão longe de nós,
Seu olhar no meu, a sua voz,
Você deixou, sem querer deixar,
Uma saudade, enorme em seu lugar,
Depois nós dois, cada qual a mercê do seu destino,
Você sem mim, eu sem você!
Saudade, meu moleque de recado,
Não diga que eu me encontro nesse estado!
Você deixou, sem querer deixar,
Uma saudade, enorme em seu lugar,
Depois nós dois, cada qual a mercê do seu destino,
Você sem mim, eu sem você!...
}

refrainChords = \chordmode {
  s4.
  
  d1:m7 d1:m7 a1:7 a1:7
  d1:7 d1:7 g1:m7 g2:m7 g2:m7/f
  e1:m7.5- a1:7.9- d1:m7 d2:m7 d2:m7/c
  b1:m7.5- e1:7.9- e1:m7.5- a1:7.9-

  d1:m7 d1:m7 a1:7 a1:7
  d1:7 d1:7 g1:m7 g2:m7 g2:m7/f
  e1:m7.5- a1:7.9- d1:m7 d1:m7
  c1:m7 a1:7.9- d1:m7 d1:m7
  
  d1:7.9- d1:7.9- g1:m7 g1:m7
  e1:7.9- e1:7.9- a1:m7 a1:7.9-

  d1:m7 d1:m7 a1:7 a1:7
  d1:7 d1:7 g1:m7 g1:m7
  e1:m7.5- a1:7.9- d1:m7 d2:m7 d2:m7/c
  c1:m7 a1:7.9- d1:m7
  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7.9- }
}

refrainKey = d

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium" 120

  \partial 4. d4 d8~ |

  \sectNoBreak "A1"
  
  d2~ d8 bf'4 a8~ | a2 f8 d4 cs8~ | cs2. bf'4 | a1 |
  r4 c,4 d8 fs4 a8~ | a4 fs4 d8 c4 bf8~ | bf2~ bf8 a'4 g8~ | g1 |
  r4 g4 a8 bf4 c8~ | c2 bf8 a4 g8~ | g2 f8 e4 d8~ | d2 f8 f4 e8~ |
  e4 b4 e2~ | e2 r8 e4 e8~ | e4 bf4 e2~ | e2 r8 d4 d8~ |
  
  \sect "A2"

  d2~ d8 bf'4 a8~ | a2 f8 d4 cs8~ | cs2. bf'4 | a1 |
  r4 c,4 d8 fs4 a8~ | a4 fs4 d8 c4 bf8~ | bf2~ bf8 a'4 g8~ | g1 |
  r4 g4 a8 bf4 c8~ | c2 bf8 a4 g8~ | g2 f8 e4 d8~ | d4 e4 f8 d4 ef8~ |
  ef4 bf'4 g8 ef4 d8 | cs2~ cs8 d8 e8 f8 | d1~ | d2 r4 d4 |
  
  \sect "B"
  
  ef4 d4 cs8 d4 g8~ | g4 fs4 es8 fs4 a8~ | a1 | g2 r4 e4 |
  f4 e4 ds8 e4 a8~ | a4 gs4 g8 gs4 b8~ | b1 | a2 r8 d,4 d8~ |
  
  \sect "A3"

  d2~ d8 bf'4 a8~ | a2 f8 d4 cs8~ | cs2. bf'4 | a1 |
  r4 c,4 d8 fs4 a8~ | a4 fs4 d8 c4 bf8~ | bf2~ bf8 a'4 g8~ | g1 |
  r4 g4 a8 bf4 c8~ | c2 bf8 a4 g8~ | g2 f8 e4 d8~ | d4 e4 f8 d4 ef8~ |
  ef4 bf'4 g8 ef4 d8 | cs2~ cs8 d8 e8 f8 | d1~ | d4 r4 r2 |
  
  \bar "|."
}

\include "../Include/refrainonly.ily"
