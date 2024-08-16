%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Whisper Not"
  subtitle = \instrument
  poet = "Leonard Feather"
  composer = "Benny Golson"
  copyright = "© 1956 Ibbob Music, Inc."
}

refrainLyricsOne = \lyricmode {
Sing low, __ sing clear __ sweet words __ in my ear,
not a whis -- per of des -- pair, __ but love's __ own prayer.

Sing on,

_ _ _ _ _

Our har -- mo -- ny was lost __ but you for -- gave, __ I for -- got,
whis -- per not of quar -- rels past, you know we've had our last.

So now __ we'll be __ on key __ con -- stant -- ly,
love will whis -- per not e -- ter -- nal -- ly. __
}

refrainLyricsTwo = \lyricmode {
_ _ un -- til __ you bring __ back the thrill
of a sen -- ti -- men -- tal tune __

_ _ _ _ _ _ _

that died too soon.
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  s4

  c2:m7 c2:m7/bf a2:m7.5- d2:7.9- g2:m7 g2:m7/f e2:m7.5- a2:7.9-
  d1:m7
  
  e2:m7.5- a2:7.5+ d2:m7 e2:m7 f2:m7 g2:7.9-

  e2:m7.5- a2:7.5+ d2:m7 e2:m7 f2:m7 bf2:7
  
  a1:m7.5- d1:7 g1:m7 c1:7
  e1:m7.5- a1:7.9- d1:m7.5- g1:7.9-

  c2:m7 c2:m7/bf a2:m7.5- d2:7.9- g2:m7 g2:m7/f e2:m7.5- a2:7.9-
  d1:m7 e2:m7.5- a2:7.5+ d1:m7
  \chordOpenParen{ af2:7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 110

  \partial 4 c8 g'8~ |

  \xTextMark \markup{ \bold \box "A1,A2" }
  \bar ".|:"
  \repeat volta 2 {
  g2. c,8 g'8~ | g2. a8 bf8~ | bf2. a8 g8 | bf2. \tuplet 3/2 { a16( bf16 a16) } g8 |
  \break
  a4 d8 g,8~ g16 af16( g16 f16) g4~ |
  \alternative { \volta 1 {
  g2. f8 d8~ | d2 e2 | f2. c8 g'8\laissezVibrer |
  \break
  } \volta 2 {
  g2.\repeatTie e8 f8~ | f2 g2 | af1 |
  } } }
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 r8 g8 c8-. g8 \tuplet 3/2 { f8 ef8 fs8~ } | fs2 g4-. a8 bf8 |
  bf2~ \tuplet 3/2 { bf4 c4 a4 } | bf2~ \tuplet 3/2 { bf4 c4 a4 } |
  \break
  bf2 r8 d,8 g8 bf8 | bf2. a4 | af2 r8 c,8 f8 af8 | af2. c,8 g'8~ |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  g2. c,8 g'8~ | g2. a8 bf8~ | bf2. a8 g8 | bf2. \tuplet 3/2 { a16( bf16 a16) } g8 |
  \break
  a4 d8 g,8~ g16 af16( g16 f16) g4~ | g2. f8 d8~ | d1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
