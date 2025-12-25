%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Moonlight Saving Time"
  subtitle = \instrument
  poet = ""
  composer = "Irving Kahal and Harry Richman"
  copyright = \markup \small { \now " " "© 1931 Leo Feist, Inc." }
}

refrainLyrics = \lyricmode {
There ought to be a moon -- light sav -- ing time, __
so I could love that man of mine, __
un -- til the bird -- ies wake and chime, __ “Good

morn -- ing.”
There

_ _ _ _ _

hur -- ry up, hur -- ry up, hur -- ry up, get bus -- y to -- day.
You'd bet -- ter croon a tune, croon a tune to the man up in the moon
and here's what I'd say: __

There ought to be a moon -- light sav -- ing time, __
so I could love that man of mine, __
un -- til the bird -- ies wake and chime, __ “Good

morn -- ing.”
}

refrainLyricsTwo = \lyricmode {
_
ought to be a law in clo -- ver time, __
to keep that moon out o -- ver time, __
to keep each lov -- er's lane in rhyme __ till
_ _ _
dawn -- ing.
You'd bet -- ter
}

refrainChords = \chordmode {
  s4

  f2:maj7 af2:dim7 g2:m7 c2:7.5+ f2:6 c2:7.5+ a2:m7 af2:dim7
  g2:m7 c2:7 g2:m7 c2:7
  
  f2:6 d2:m7 g2:7 c2:7
  
  f2:6 d2:7.9- f1:6
  
  f2:7 c2:m7 f1:7 bf2:6 f2:7 bf4:6 bf4:7 a4:7 af4:7
  g2:7 d2:m7 g1:7 c1:7 g2:7 c2:7

  f2:maj7 af2:dim7 g2:m7 c2:7.5+ f2:6 c2:7.5+ a2:m7 af2:dim7
  g2:m7 fs2:dim7 c2:7/g c2:7 g2:7 c2:7 f2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
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
  \tempo "Swing [Blossom Dearie 1955]" 4 = 184

  \partial 4 \invisEighth gs8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  a8 d8 c8 a8 e4 e4 | d8 d4 e8~ e4 r8 c8 | d4 d4 e4 e4 |
  \break
  d8 d4 e8~ e4 r8 c8 | d4 d4 g4 g4 | d8 ds4 e8~ e4 c4 |
  \break
  \alternative { \volta 1 {
  d4 a'2. | r2 r4 r8 gs8 |
  } \volta 2 {
  d4 f2. | r4 f4 g4 gs4 |
  } } }

  \sect "B"
  
  a8 c8 a4 g8 c8 g4 | f8 fs8 g8 gs8 a8 c8 a4 | g1 |
  \break
  r4 g4 a4 bf4 | b8 d8 b4 a8 d8 a4 | g8 gs8 a8 as8 b8 a8 g4 |
  \break
  r4 d'8 c8~ c8 bf8 g4 | d2( e4) r8 gs8 |
  
  \sect "A3"
  
  a8 d8 c8 a8 e4 e4 | d8 d4 e8~ e4 r8 c8 | d4 d4 e4 e4 |
  \break
  d8 d4 e8~ e4 r8 c8 | d4 d4 ds4 ds4 |
  \break
  e8 e4 c'8~ c4 a4 | g1 | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
