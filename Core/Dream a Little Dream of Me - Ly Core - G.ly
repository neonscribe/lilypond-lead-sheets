%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Dream a Little Dream of Me"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "W. Schwandt and F. Andree"
  copyright = "© 1931 Davis, Coots & Engel, Inc."
}

refrainLyricsOne = \lyricmode {
Stars shin -- ing bright a -- bove you.
Night breez -- es seem to whis -- per “I love you.”
Birds sing -- in' in the syc -- a -- more trees,
“Dream a lit -- tle dream of me.”

_ _ _ _ _ _ _

Stars fad -- ing, but I lin -- ger on, dear,
still crav -- ing your kiss.
I'm long -- ing to lin -- ger 'til dawn, dear,
just say -- ing this.

Sweet dreams 'til sun -- beams find you.
Sweet dreams that leave all wor -- ries be -- hind you.
But in your dreams, what -- ev -- er they be,
dream a lit -- tle dream of me.
}

refrainLyricsTwo = \lyricmode {
Say “Night -- ie night” and kiss me
Just hold me tight and tell me you'll miss me
While I'm a -- lone and blue as can be

_ _ _ _ _ _ _


dream a lit -- tle dream of me.
}

refrainChords = \chordmode {
  g1:6 ef2:7 d2:7 g1:6 e2:7 b4:m7.5- e4:7
  a2:m a2:m7 a2:m7.5- f2:9
  
  g2:maj7 e2:m7 a2:m7 d2:7
  
  g2:maj7 ef4:7 d4:7 g2:6 f4:m7 bf4:7
  
  ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 c2:m7 f2:m7 bf2:7
  ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 c2:m7 a2:m7 d2:7

  g1:6 ef2:7 d2:7 g1:6 e2:7 b4:m7.5- e4:7
  a2:m a2:m7 a2:m7.5- f2:9 g2:maj7 ef4:7 d4:7 g2:6
  \chordOpenParen{ ef4:7 }
  \chordCloseParen{ d4:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 133

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g2 fs8 g8 fs8 e8 | g2 fs2 | g2 fs8 g8 fs8 e8 | \tuplet 3/2 { gs4 b4 gs4 } f4 e4 |
  a2 g8 a8 g8 e8 | \tuplet 3/2 { a4 g4 ef4 } g2 |
  \break
  \alternative { \volta 1 {
  d8 e8 g8 a8 b4 e4 | d1 |
  } \volta 2 {
  d,8 e8 g8 a8 bf4 a4 | g2. r4 |
  } } }
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  ef'2 \tuplet 3/2 { c4 ef4 c4 } | \tuplet 3/2 { bf4 g4 bf4 } c,4 d4 |
  ef'2 \tuplet 3/2 { c4 ef4 c4 } | bf1 |
  \break
  ef2 \tuplet 3/2 { c4 ef4 c4 } | \tuplet 3/2 { bf4 g4 bf4 } c,4 d4 |
  ef'2 bf4 c4 | d1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  g,2 fs8 g8 fs8 e8 | g2 fs2 | g2 fs8 g8 fs8 e8 | \tuplet 3/2 { gs4 b4 gs4 } f4 e4 |
  a2 g8 a8 g8 e8 | \tuplet 3/2 { a4 g4 ef4 } g2 |
  d8 e8 g8 a8 bf4 a4 | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
