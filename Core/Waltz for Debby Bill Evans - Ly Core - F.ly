%% -*- Mode: LilyPond -*-

songID = "2026-07-12T15:01:51.683982Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Waltz for Debby (Bill Evans)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Bill Evans"
headerCopyright = "© 1964 Acorn Music Corp."

refrainHLChords = \chordmode {
  f2.:maj7/a d2.:m7 g2.:m7 c2.:7 a2.:7/g d2.:7/fs g2.:7/f c2.:7/e
  f2.:7/ef bf2.:6/d g2.:m7.5-/df c2:7 c4:7/bf a2.:m7 d2.:m7 g2.:7 c2.:7

  f2.:maj7/a d2.:m7 g2.:m7 c2.:7 a2.:7/cs d2.:7/c g2.:7/b c2.:7/bf
  a2.:7 d2.:m7 b2.:7 e2.:7 a2.:maj7/cs b2.:m7 a2.:maj7 a2.:maj7/gs
  
  g2.:m7 c2.:7 a2.:m7 d2.:7 g2.:m7 a2.:7 d2.:m7 f2.:7
  bf2.:maj7 a2.:7 d2.:m7 g2.:7 af2.:maj7 df2.:maj7 g2.:m7 c2.:7

  f2.:maj7/a d2.:m7 g2.:m7 c2.:7 a2.:7/g d2.:7/fs g2.:7/f c2.:7/e
  f2.:7/ef bf2.:6/d g2.:m7.5-/df c2:7 c4:7/bf a2.:m7 d2.:m7 b2.:m7 e2.:7

  a2.:m7 f2.:7 bf2.:maj7 a2.:7.9+ d2.:m7 d2.:m7 g2.:7 gs2.:dim7
  a2.:m7/c af2.:m7/c g2.:m7/c c2.:7 f2.:6 d2.:m7 g2.:m7 c2.:7
  
  a2.:m7/c af2.:dim7/c g2.:m7/c c2.:7
  a2.:m7/c af2.:dim7/c g2.:m7/c c2.:7
  gf2.:maj7 a4:maj7 g4:maj7 c4:7.9+ f2.:maj7
}

refrainChords = \refrainHLChords

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoTwoDot "Rubato waltz, then two feel [Bill Evans 1961]" 84

  \sectNoBar "A1"

  \bar ".|:"
  \repeat volta 2 {

  c'2. | f,2. | bf2. | e,2. | a2.~ | a2. | r4 g4 f4 | e4 f4 g4 |
  a2 g4 | f4 g4 a4 | bf2 a4 | g4 a4 bf4 | c2. | a,4 bf4 c4 | d4 e4 f4 | g4 a4 bf4 |
  
  \sect "A2"

  c2. | f,2. | bf2. | e,2. | a2.~ | a2.~ | a4 g4 f4 | e4 f4 g4 |
  a2 g4 | f4 g4 a4 | b2 a4 | gs4 a4 b4 | cs2.~ | cs2. | R2.*1 | R2.*1 |

  \sect "B"
  
  d2.~ | d2 c4 | d2.~ d2 c4 | d4 c4 bf4 | a2. | g2 f4 | d'4 c4 bf4 |
  a2 bf4 | g2 e4 | f4 a4 c4 | e4 f4 d4 | c2. | af,4 bf4 c4 | d4 e4 f4 | g4 a4 bf4 |
  
  \sect "A3"

  c2. | f,2. | bf2. | e,2. | a2.~ | a2. | r4 g4 f4 | e4 f4 g4 |
  a2 g4 | f4 g4 a4 | bf4 a4 g4 | a4 bf4 c4 | d2.~ | d2. | r4 e4 d4 | e4 d4 e4 |
  
  \sect "C"

  c2.~ | c2. | r4 c4 bf4 | c4 bf4 c4 | a2.~ | a2.~ | a2. | r4 g4 f4 |
  g4 f4 g4 | f4 g4 f4 | d'2. | e,2. \textToCodaLastTime | f2.~ |f2. | R2.*1 | R2.*1 |
  }
  \bar "||-:|."
  
  \textCodaBreak
  
  g4 f4 g4 | f4 g4 f4 | d'2. | e,2. | g4 f4 g4 |
  f4 g4 f4 | d'2. | e,2. |
  \override TextSpanner.bound-details.left.text = "rall."
  f2 _\startTextSpan f4 | cs4 fs4 ef4 | c2.\stopTextSpan\fermata |
  
  \bar "|."
}

\include "../Include/refrainonly.ily"
