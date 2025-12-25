\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "On Green Dolphin Street"
  subtitle = \instrument
  poet = "Ned Washington"
  composer = "Bronislau Kaper"
  copyright = \markup \small { \now " " "© 1947 Metro-Goldwyn Mayer Inc." }
}

refrainLyrics = \lyricmode {
  Lov -- er, one love -- ly day.
  Love came, plan -- ning to stay.
  Green Dol -- phin Street sup -- plied the set -- ting.
  The set -- ting for nights be -- yond for -- get -- ting.
  And through these mo -- ments a -- part
  mem -- 'ries live in my heart.
  When I re -- call the love I found on,
  I could kiss the ground on Green Dol -- phin Street.
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 ef1:m7/c ef1:m7/c
  d1:maj7/c df1:maj7/c c1:maj7 c2:maj7 a2:7.9-

  d1:m7 g1:7 c1:maj7 c2:maj7 c2:7.9-
  f1:m7 bf1:7 ef1:maj7 ef2:maj7 g2:7

  c1:maj7 c1:maj7 ef1:m7/c ef1:m7/c
  d1:maj7/c df1:maj7/c c1:maj7 c2:maj7 a2:7.9-
  
  d2:m7 d2:m7/c b2:m7.5- e2:7.9- a2:m7 a2:m7/g fs2:m7.5- b2:7.9-
  e2:m7 a2:7 d2:m7 g2:7 c1:maj7

  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative c'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \tempo "Latin [Miles Davis 1958]" 4 = 160
  \sectStart "A1"

  c2 c2~ | c2 \tuplet 3/2 { b4 g4 e4 } | bf'1~ | bf1 |
  \break

  a2 a2~ | a2 \tuplet 3/2 { af4 f4 df4 } | g1~ | g2 r2

  \tempo "Swing"
  \sect "B"

  g2 d4 e4 | f4 g4 af4 bf4 | g2 g2~ | g2. g4 |
  \break
  bf4 f2 g4 | af4 bf4 cf4 df4 | bf2 bf2~ | bf2 b2

  \tempo "Latin"
  \sect "A2"

  c2 c2~ | c2 \tuplet 3/2 { b4 g4 e4 } | bf'1~ | bf1 |
  \break
  a2 a2~ | a2 \tuplet 3/2 { af4 f4 df4 } | g1~ | g2 r2

  \tempo "Swing"
  \sect "C"

  g2 d4 e4 | f4 g4 gs4 e'4 | d2 c2 | c,4 d4 ds4 b'4 |
  \break
  a2 g2 | r4 g4 g4 g4 | g1~ | g1

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
