%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Tumbling Tumbleweeds"
  subtitle = \subtitle
  poet = ""
  composer = "Bob Nolan"
  copyright = \markup \small { \now " " "© 1934 Music of the West" }
}

refrainLyrics = \lyricmode {
See __ them tum -- bl -- ing down, pledg -- ing their love to the ground,
lone -- ly but free I'll be found, __
drift -- ing a -- long with the tum -- bl -- ing

tum -- ble -- weeds.

tum -- ble -- weeds.

I know __ when night has gone that a new __ world's born at dawn. __

I'll __ keep roll -- ing a -- long, deep __ in my heart is a song,
here __ on the range I be -- long,
drift -- ing a -- long with the tum -- bl -- ing tum -- bl -- weeds.

drift -- ing a -- long with the tum -- bl -- ing tum -- bl -- weeds. __
}

refrainLyricsTwo = \lyricmode {
Cares __ of_the past are be -- hind, no -- where to go, but I'll find
just __ where the tra -- il will wind. __ ""
}

refrainLyricsThreePlain = \lyricmode { "3. Instrumental" }

refrainLyricsThree =
{
    \override Lyrics.LyricText.font-shape = #'italic
    \refrainLyricsThreePlain
}

refrainChords = \chordmode {
  d2 b2:m e4:m \chordSlash 1 a4 af4

  g1 g1 fs1 fs1
  g1 d2 b2:m a1:7

  a4:7 d2 d4:7.5+

  a4:7 d2 d4:7.5+

  a1:7 d1 e1 a1:7

  g1 g1 fs1 fs1
  g1 d2 b2:m a1:7 a4:7 d2.

  a1:7 a2:7 d1 d1
}

refrainKey = d

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Slow [Sons of the Pioneers 1934]" 80

  \sectNoBarNoBreak "Intro"

  r1 | r1 |

  \sectNoBarNoBreakSegno "Verse"

  \repeat volta 2 {

  d'2~ d8 d8 \tuplet 3/2 { d8 cs8 c8 } | b2. r4 |
  cs2~ \tuplet 3/2 { cs8 cs8 cs8 } \tuplet 3/2 { cs8 c8 b8 } | as2. r4 |
  b2~ \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 a8 g8 } | fs2( a2) |
  a4~ \tuplet 3/2 { a8 a8 a8 } \tuplet 3/2 { a8 gs8 g8 } \tuplet 3/2 { fs8 f8 e8 } |
  \alternative { \volta 1 {
  fs8 e8 d2 r4 |
  } \volta 2 {
  fs8 e8 d2 fs4 |
  } } }

  \sect "Bridge"

  e2~ e8 fs8 g8 fs8 | a2. a8 a8 | gs2~ gs8 a8 b8 bs8 | cs2( e2) |

  \sect "Verse"

  d2~ d8 d8 \tuplet 3/2 { d8 cs8 c8 } | b2. r4 |
  cs2~ \tuplet 3/2 { cs8 cs8 cs8 } \tuplet 3/2 { cs8 c8 b8 } | as2. r4 |
  b2~ \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 a8 g8 } | fs2( a2) \textToCodaLastTime |
  a4~ \tuplet 3/2 { a8 a8 a8 } \tuplet 3/2 { a8 gs8 g8 } \tuplet 3/2 { fs8 f8 e8 } |
  fs8 e8 d2 r4 \dalSegnoSecondEnding |
  \bar "||-|."

  \textCodaBreak

  a'4~ \tuplet 3/2 { a8 a8 a8 } \tuplet 3/2 { a8 gs8 g8 } \tuplet 3/2 { fs8 f8 e8 } \caesura |
  \time 2/4
  \tempo "Freely"
  a4 b4
  \numericTimeSignature
  \time 4/4
  d1~ | d2 r2\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
