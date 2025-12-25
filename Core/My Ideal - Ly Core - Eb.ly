%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "My Ideal"
  subtitle = \instrument
  poet = "Leo Robin"
  composer = "Richard A. Whiting and Newell Chase"
  copyright = \markup \small { \now " " "© 1930 Famous Music Corporation" }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Will I ev -- er find the girl in my mind, the one who is my i -- deal?
May -- be she's a dream and yet she might be just a -- round the cor -- ner wait -- ing for me.
Will I rec -- og -- nize a light in her eyes that no oth -- er eyes re -- veal,
or will I pass her by and nev -- er e -- ven know that she is my i -- deal?
}

refrainObjectGenderMaleLyrics = \lyricmode {
Will I ev -- er find the boy in my mind, the one who is my i -- deal?
May -- be he's a dream and yet he might be just a -- round the cor -- ner wait -- ing for me.
Will I rec -- og -- nize a light in his eyes that no oth -- er eyes re -- veal,
or will I pass him by and nev -- er e -- ven know that he is my i -- deal?
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  ef2:maj7 c2:7 f1:m7 df2:7 c2:7 f1:7
  bf2:7 f2:m7 bf2:7 g2:7 c2:m7 f2:7 b2:7 bf2:7
  ef2:maj7 c2:7 f1:m7 df2:7 c2:7 f1:7
  f2:m7 af4:m7 df4:7 ef4:maj7 d4:7 df4:7 c4:m7 f2:m7 bf2:7 ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Kenny Dorham 1960]" 4 = 70

  \xTextMark \markup{ \bold \box "A1" }
  
  c'8 bf8 g8 ef8 d'4. c8 | bf8 af8 bf8 af8~ af4. c,8 |
  \break
  af'8 g8 af8 g8~ g4 c,4 | g'1 |
  
  \sect "B"
  
  g8 f8 d8 bf8 af'4. g8 | bf8 g8 bf8 g8~ g2 |
  \break
  ef8 f8 g8 bf8 c8 c4. | b8 fs8 gs8 bf8~ bf2 |
  
  \sect "A2"
  
  c8 bf8 g8 ef8 d'4. c8 | bf8 af8 bf8 af8~ af4. c,8 |
  \break
  af'8 g8 af8 g8~ g4 c,4 | c'2. c,4 |

  \sect "C"
  
  g'8 f8 ef8 c8 bf'4. af8 | g8 bf8 d8 c8 bf8 ef8 ef,8 c8 |
  \break
  f2 g2 | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
