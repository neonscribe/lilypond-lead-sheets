%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Moon River"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Henry Mancini"
  copyright = \markup \small { \now " " "© 1961 Famous Music Corporation" }
}

refrainLyrics = \lyricmode {
Moon Riv -- er, wid -- er than a mile,
I'm cross -- in' you in style some day. __
Old dream -- mak -- er, you heart -- break -- er,
wher -- ev -- er you're go -- in', __ I'm go -- in your way.

af -- ter the same rain -- bow's end, __
wait -- in' 'round the bend, __ my huck -- le -- ber -- ry friend,
Moon Riv -- er __ and me. __
}

refrainLyricsTwo = \lyricmode {
Two drift -- ers, off to see the world.
There's such a lot of world to see. __
We're
}

refrainChords = \chordmode {
  c2.:maj7 a2.:m7 f2.:7.11+ c2.:maj7
  f2.:7.11+ c2.:maj7 b2.:m7.5- e2.:7
  
  a2.:m7 c2.:7/g f2.:maj7 bf2.:7
  a2:m7 a4:m7/g fs4:m7.5- b2:7 e4:m7 a2:7 d2:m7 g4:7
  
  a2.:m7 a2.:m7/g fs2.:m7.5- f2.:7
  c2.:maj7 f2.:maj7 c2.:maj7 f2.:maj7
  e2.:m7 a2.:m7 d2.:m7 g2.:7
  c2.:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g4:7 }
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

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad Waltz [Henry Mancini 1960]" 4 = 93

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g2. | d'4 c2 | b4. a8 g8 f8 | g2 c,4 |
  \break
  b'4. a8 g8 f8 | g2 c,4 | d2.~ | d2 e4 |

  \alternative { \volta 1 {

  \sectNoBar "B"
  
  c2. | g'4 e4. d8 | c2. | g'4 e4. d8 |
  \break
  c4 e4 g4 | c8 b8~ b4. a8 | b8 a8~ a4. g8 | a2. |

  \bar "||-:|."

  } \volta 2 {

  \sectNoBar "C"

  c,2. | e2 g4 | c2. | d2 c4 |
  \break
  g2.~ | g4 b8 a8 g8 f8 | g2.~ | g8 c,8 b'8 a8 g8 f8 |
  \break
  g2. | c,2. | f4 d2~ | d2 e4 |
  \break
  c2.~ | c2 r4 |

  } } }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
