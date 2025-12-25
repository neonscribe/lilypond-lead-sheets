%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

genderTitle = 
#(if (and (defined? 'objectGenderFemale) objectGenderFemale)
  "Crazy She Calls Me"
  "Crazy He Calls Me")

\header {
  title = \genderTitle
  subtitle = \instrument
  poet = "Bob Russell"
  composer = "Carl Sigman"
  copyright = \markup \small { \now " " "© 1949 Massey Music" }
}

refrainObjectGenderMaleLyrics = \lyricmode {
I say I'll move the moun -- tains,
and I'll move the moun -- tains,
if he wants them out of the way.
Cra -- zy, he calls me,
sure, I'm cra -- zy,
cra -- zy in love, I'd say. __
I say I'll go through fi -- re,
and I'll go through fi -- re,
as he wants it, so it shall be.
Cra -- zy, he calls me,
sure, I'm cra -- zy,
cra -- zy in love, you see. __
Like the wind that shakes the bough,
he moves me with his smile.
The dif -- fi -- cult I'll do right now,
the im -- pos -- si -- ble will take a lit -- tle while.
I say I'll care for -- ev -- er,
and I mean for -- ev -- er,
if I have to hold up the sky.
Cra -- zy he calls me,
sure, I'm cra -- zy,
cra -- zy in love am I. __
}

refrainObjectGenderFemaleLyrics = \lyricmode {
I say I'll move the moun -- tains,
and I'll move the moun -- tains,
if she wants them out of the way.
Cra -- zy, she calls me,
sure, I'm cra -- zy,
cra -- zy in love, I'd say. __
I say I'll go through fi -- re,
and I'll go through fi -- re,
as she wants it, so it shall be.
Cra -- zy, she calls me,
sure, I'm cra -- zy,
cra -- zy in love, you see. __
Like the wind that shakes the bough,
she moves me with her smile.
The dif -- fi -- cult I'll do right now,
the im -- pos -- si -- ble will take a lit -- tle while.
I say I'll care for -- ev -- er,
and I mean for -- ev -- er,
if I have to hold up the sky.
Cra -- zy she calls me,
sure, I'm cra -- zy,
cra -- zy in love am I. __
}

refrainLyrics =
#(if (and (defined? 'objectGenderFemale) objectGenderFemale)
  refrainObjectGenderFemaleLyrics
  refrainObjectGenderMaleLyrics)

refrainChords = \chordmode {
  s4

  f2:maj7 g2:m7 a2:m7 g2:m7 f2:maj9 bf2:9.11+ a2:m7 d2:9
  g2:m7 c4:9.11+ bf4:dim7 a4:m7 \chordInsideParens{ ef4:7 } d2:7 g2:m7 d2:7.9- g2:m7 c2:7.9-

  f2:maj7 g2:m7 a2:m7 g2:m7 f2:maj9 bf2:9.11+ a2:m7 d2:9
  g2:m7 c4:9.11+ bf4:dim7 a4:m7 \chordInsideParens{ ef4:7 } d2:7 g2:m7 c2:13.9- f4:6 \chordSlash 1
  \chordOpenParen{ c4:m7 }
  \chordCloseParen{ f4:7 }

  bf2:m7 ef2:7 af2:maj7 f2:m7 d2:m9 g2:7.5+ c2:6.9 a2:7.9-
  d2:m7 g2:7.9- e2:m7 a2:m7 d2:m7 g2:9 g2:m7 c2:13

  f2:maj7 g2:m7 a2:m7 g2:m7 f2:maj9 bf2:9.11+ a2:m7 d2:7
  g2:m7 c4:9.11+ bf4:dim7 a4:m7 \chordInsideParens{ ef4:7 } d2:7 g2:m7 c2:13.9- f2:6
  \chordInsideParens{ c2:sus9 }
}

refrainKey = f

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
  \tempo "Ballad [Billie Holiday 1949]" 4 = 74
  
  \partial 4 \invisEighth c8 |

  \sectNoBreak "A1"
  
  c'8 a8 bf8 g8 a8 f4. | g8 e8 f8 d8 e8 c4. | g'8 e8 f8 d8 \tuplet 3/2 { e4 e4 c4 } | e1 |
  \break
  d8 bf'4 a8 fs4 g4 | c4 cs4 d8 a4. | \tuplet 3/2 { d4 c4 bf4 } a4 bf8 g8~ | g2. r8 c,8 |
  
  \sect "A2"
  
  c'8 a8 bf8 g8 a8 f4. | g8 e8 f8 d8 e8 c4. | g'8 e8 f8 d8 \tuplet 3/2 { e4 e4 c4 } | e1 |
  \break
  d8 bf'4 a8 fs4 g4 | c4 cs4 d8 a4. | \tuplet 3/2 { d4 c4 bf4 } a4 a8 f8~ | f1 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBar "B"
  
  f8 g8 ef2 f4 | g8 af8 f2 a4 | g4 g4 g4 g4 | g2. r8 a8 |
  \break
  g8 d8 d2 b'4 | a8 e8 e2 c'8 c8 | b8 b8 f8 f8 d'8 d8 a8 a8 | c2. r8 c,8 |

  \sect "A3"

  c'8 a8 bf8 g8 a8 f4. | g8 e8 f8 d8 e8 c4. | g'8 e8 f8 d8 \tuplet 3/2 { e4 e4 c4 } | e1 |
  \break
  d8 bf'4 a8 fs4 g4 | c4 cs4 d8 a4. | \tuplet 3/2 { d4 c4 bf4 } a4 a8 f8~ | f1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
