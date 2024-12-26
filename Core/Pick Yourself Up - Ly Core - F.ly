%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Pick Yourself Up"
  subtitle = \instrument
  poet = "Dorothy Fields"
  composer = "Jerome Kern"
  copyright = "© 1936 T.B. Harms, Inc."
}

refrainLyrics = \lyricmode {
Noth -- ing's im -- pos -- si -- ble I hav found.
For when my chin is on the ground
I pick my -- self up, dust my -- self off,
start all o -- ver a -- gain.

Don't lose your con -- fi -- dence if you slip,
be grate -- ful for a pleas -- ant trip,
and pick your -- self up, dust your -- self off,
start all o -- ver a -- gain.

Work like a soul in -- spi -- red
'til the bat -- tle of the day is won.
You may be sick and ti -- red, but you'll be a man my son!

Will you re -- mem -- ber the fa -- mous men
who had to fall to rise a -- gain?
So pick your -- self up, dust your -- self off,
start all o -- ver a -- gain.
}

refrainChords = \chordmode {
  g2:m7 c2:7 f2:maj7 bf:maj7 e2:m7.5- a2:7.9- d2:m7 g2:7
  c2:sus7 c2:7 a2:m7 d2:7 g2:m7 c2:7 f1:6
  
  a2:m7 d2:7 g2:maj7 c2:maj7 fs2:m7.5- b2:7.9- e2:m7 a2:7
  d2:sus7 d2:7 b2:m7 e2:7 a2:m7 d2:7 g1:6
  
  af1:maj7 af1:6 ef1:m7 af1:7
  c1:maj7 c1:6 a2:m7 d2:7 g2:m7 c2:7

  g2:m7 c2:7 f2:maj7 bf:maj7 e2:m7.5- a2:7.9- d2:m7 g2:7
  c2:sus7 c2:7 a2:m7 d2:7 g2:m7 c2:7 f1:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Up" 4 = 210

  \xTextMark \markup{ \bold \box "A1" }
  
  bf4 bf8 c8 bf8 a8 g4 | a4 a4 c4. a8 | g4 g4 bf4. g8 | f4 f4 a4. f8 |
  \break
  c8 c8 c4 c4 r4 | c8 c8 c4 c4 r4 | c4 c4 g'8 f8 e4 | f2. r4 |
  
  \sect "A2"
  
  c'4 c8 d8 c8 b8 a4 | b4 b4 d4. b8 | a4 a4 c4. a8 | g4 g4 b4. g8 |
  \break
  d8 d8 d4 d4 r4 | d8 d8 d4 d4 r4 | d4 d4 a'8 g8 fs4 | g2. r4 |
  
  \sect "B"
  
  af4 af8 af8 c4 ef4 | c4 af4 r4 ef8 f8 | gf8 af8 gf8 f8 ef4 ef4 | ef2. r4 |
  \break
  e4 e8 e8 g4 c4 | g4 e4 r4 e8 g8 | c4. g8 c4 e4 | c2. r4 |

  \sect "A3"

  bf4 bf8 c8 bf8 a8 g4 | a4 a4 c4. a8 | g4 g4 bf4. g8 | f4 f4 a4. f8 |
  \break
  c8 c8 c4 c4 r4 | c8 c8 c4 c4 r4 | c4 c4 g'8 f8 e4 | f2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
