%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Always (3/4)"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = \markup \small { \now " " "© 1925 Irving Berlin" }
}

refrainLyrics = \lyricmode {
I'll be lov -- ing you, al -- ways __
with a love that's true, al -- ways. __
When the things you've planned need __ a help -- ing hand,
I will un -- der -- stand, al -- ways, al -- way.
Days may not be fair, al -- ways. __
That's when I'll be there, al -- ways, __
not for just an hour, not for just a day,
not for just a year, but al -- ways. __
}

refrainChords = \chordmode {
  f2.:maj7 g2:m7 c4:7 f2.:maj7 f2.:maj7
  g2.:m7 c2.:7 f2.:maj7 g2:m7 c4:7
  f2.:maj7 b2:m7.5- e4:7 a2.:maj7 fs2.:7
  b2.:m7 e2.:7 a4:7 d2:7 g4:7 c2:7

  f2.:maj7 g2:m7 c4:7 f2.:maj7 f4:maj7 e4:7 ef4:7
  d2.:7 d2.:7 g2.:m7 c2:m7 f4:7
  bf2.:maj7 bf2:m7 ef4:7 f2.:maj7 g2.:7
  g2.:m7 c2.:7 f2.:maj7
  \chordOpenParen{ g2:m7 }
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
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Waltz [Irving Kaufman 1926]" 4 = 115

  \xTextMark \markup{ \bold \box "A1" }
  
  c4. d8 f8 g8 | a2. | c4 a2~ | a2 r4 |
  \break
  c,4. d8 e8 f8 | g2. | a4 f2~ | f2 r4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c4. d8 f8 g8 | a2 r4 | e4. fs8 a8 b8 | cs2. |
  \break
  e,4. fs8 gs8 b8 | d2. | cs4 a2 | a4 g2 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c,4. d8 f8 g8 | a2. | c4 a2~ | a2 r4 |
  \break
  d,4. e8 fs8 a8 | d2. | ef4 d2~ | d2 r4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  bf4. a8 g8 a8 | bf2. | a4. g8 f8 g8 | a2. |
  \break
  g4. f8 e8 f8 | g2 c,4 | a'4 f2~ | f2 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #2.
}

\include "../Include/refrain.ily"
