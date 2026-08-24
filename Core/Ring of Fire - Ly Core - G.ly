%% -*- Mode: LilyPond -*-

songID = "2026-08-19T05:36:10.277854Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Ring of Fire"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "June Carter, Merle Kilgore"
headerCopyright = "© 1962 Painted Desert Music Corporation"

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _

Love is a burn -- ing thing,
and it makes a fi -- er -- y ring.

Bound by wild de -- sire, __
I fell in -- to a ring of __ fire.

I fell in -- to a burn -- ing ring of fire. __
I went down, down, down, and the flames went high -- er.
And it burns, burns, burns, the ring of fire,
the ring of fire.
The
And it burns, burns, burns, the ring of fire,
the ring of fire.
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _

taste _ of love is sweet _ when hearts _ like _ ours meet.
I_fell_for you like a child. Oh, _ _ _ but_the fire went wild.
}

refrainChords = \chordmode {
  s2.

  g1 c2 g1 g1
  g1 d2:7 g1 g1

  g1 g2 c2 g1 c2
  g1 g1 g1 g2 d2:7
  g1 d2:7 g1 g1
  g1 g2 c2 g1 c2
  g1 g1 g1
  d2:7 g1 g1

  d1:7 d1:7 c1 g1
  d1:7 d1:7 c1 g1
  g1 g1 g2 d2:7 g1
  g2 d2:7 g1 g1
  
  g1 
  c2 g1 g1 g1
  d2:7 g1 g1

  g1
  
  g2 d2:7 g1 g2 d2:7 g1
}

refrainKey = g

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium" 120

  \sectNoBar "Intro"
  
  \ambitusOff
  \partial 2. <g b>4 <a c>4 <bf df>4 |
  
  <b d>4 <b d>8 <b d>8 r8 <b d>8 <b d>4 |
  \time 2/4
  <c e>4 <a c>4 |
  \numericTimeSignature
  \time 4/4
  <b d>1~ | <b d>1 |
  
  <g b>4 <g b>8 <g b>8 r8 <g b>8 <g b>4 |
  \time 2/4
  <a c>4 <fs a>4 |
  \numericTimeSignature
  \time 4/4
  <g b>1~ | <g b>1 |
  \ambitusOn
  
  \sectSegnoSegno "Verse"
  
  d2 r2 | r4 d8 d8 e4 c4 | d2 r2 |
  \time 2/4
  r2 |
  \numericTimeSignature
  \time 4/4
  r1 | r2 r4 b8 b8 | b2 r2 | r4 b8 c8~ c8 a8 a4 |
  b2 r2 |
  \time 2/4
  r2 |
  \numericTimeSignature
  \time 4/4
  r1 | r1 |

  d2 r2 | r4 d8 e8~ e4 c8 d8~ | d2 r2 |
  \time 2/4
  r2 |
  \numericTimeSignature
  \time 4/4
  r1 | r1 | b4 b8 b8~ b8 b8 g4 |
  \time 2/4
  a8 fs8~ fs4 |
  \numericTimeSignature
  \time 4/4
  g2 r2 | r1 |

  \sectSegno "Chorus"
  
  d'2 fs2 | a2 a8 a4. | g8 g4. g8 g4. | e8( d4.) r8 d8 d4 |
  d2 fs2 | a2 r8 fs8 fs4 | g2 g2 | e8 d4. r8 b8 a4 |
  g2 b2 | d2 r2 | r4 b8 c8~ c4 a4 | b4( d4) r2 |
  r4 g4 a4 fs4 | g1 \textToCoda | r1 |

  \sectNoBar "Interlude"
  
  \bar ".|:-||"
  \repeat volta 2 {
  r1 |
  \time 2/4
  r2 |
  \numericTimeSignature
  \xTextMark \markup{ Same as Intro }
  \time 4/4
  r1 | r1 | r1 |
  \time 2/4
  r2 |
  \numericTimeSignature
  \time 4/4
  r1 | r1 \dalSegnoISecondTime |
  }
  \bar ":|."

  \textCodaI

  r2 r4 c4 \dalSegnoSegnoII |
  \bar "||-||"

  \textCodaII

  r2 r8 b8 a4 | g2 b2 | d2 r2 |
  r4 b8 c8~ c4 a4 | b4( d4) r2 |
  \bar ".|:"
  \repeat volta 2 {
  r4 g,4 a4 fs4 | g1 |
  }
  \bar ":|."
}

afterText =
\markup {
  \column
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Interlude } }
   \vspace #1
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column
  {
   \vspace #4
   \line { \large { Love is a burning thing } }
   \line { \large { And it makes a fiery ring } }
   \line { \large { Bound by wild desire } }
   \line { \large { I fell into a ring of fire } }
   \vspace #1
   \line { \large { I fell into a burning ring of fire } }
   \line { \large { I went down, down, down and the flames went higher } }
   \line { \large { And it burns, burns, burns } }
   \line { \large { The ring of fire, the ring of fire } }
   \vspace #3
   \line { \large { I fell into a burning ring of fire } }
   \line { \large { I went down, down, down and the flames went higher } }
   \line { \large { And it burns, burns, burns } }
   \line { \large { The ring of fire, the ring of fire } }
   \vspace #1
   \line { \large { The taste of love is sweet } }
   \line { \large { When hearts like ours meet } }
   \line { \large { I fell for you like a child } }
   \line { \large { Oh, but the fire went wild } }
   \vspace #1
   \line { \large { I fell into a burning ring of fire } }
   \line { \large { I went down, down, down and the flames went higher } }
   \line { \large { And it burns, burns, burns } }
   \line { \large { The ring of fire, the ring of fire } }
   \vspace #1
   \line { \large { I fell into a burning ring of fire } }
   \line { \large { I went down, down, down and the flames went higher } }
   \line { \large { And it burns, burns, burns } }
   \line { \large { The ring of fire, the ring of fire } }
   \vspace #1
   \line { \large { And it burns, burns, burns } }
   \line { \large { The ring of fire, the ring of fire } }
   \line { \large { The ring of fire, the ring of fire } }
 }
}

\include "../Include/refrainonly.ily"
