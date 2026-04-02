%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Some Other Spring"
  subtitle = \instrument
  poet = ""
  composer = "Arthur Herzog, Jr. and Irene Kitchings"
  copyright = \markup \small { \now " " "© 1939 Edward B. Marks Music Company" }
}

refrainLyrics = \lyricmode {
Some oth -- er spring, __ I'll try to love. __
Now I still cling __ to fad -- ed blos -- soms.
Fresh when worn, left crushed and torn __ like the love af -- fair I mourn. __

Some oth -- er spring, __ when tw -- light falls, __
will the night bring __ an -- oth -- er to me?
Not your kind, but let me find __ it's not true that love is blind. __

Sun shine's a -- round me, but deep in my heart it's cold as ice.__
Love, once you found me, but can that sto -- ry un -- fold twice? __

Some oth -- er spring, __ will my heaert wake? __
Stir -- ring to sing __ love's mag -- ic mu -- sic?
Then for -- get the old du -- et.
Find love in some oth -- er spring?
}

refrainChords = \chordmode {
  c2:maj7 g2:7.5+ e2:m7.5- a2:7.9- d2:m7 d2:m7.5- af2:7 g2:7
  c4:7 b4:7.5+ bf2:7 ef2:6 ef2:maj7 ef2:7.11+ d4:7 c4:dim7 bf4:6 d4:7/a g2:7.5+

  c2:maj7 g2:7.5+ e2:m7.5- a2:7.9- d2:m7 d2:m7.5- af2:7 g2:7
  c4:7 b4:7.5+ bf2:7 ef2:6 g2:m7 f2:m7 bf2:7.9- ef4:6 ef4:7 d2:7

  b2.:m7 bf4:m7 a4:m7 \chordSlash 1 d4:7 \chordSlash 1 b2:m7 bf2:dim7 a2:m7 d2:7
  e4:m7 \chordSlash 1 a4:7.5+ \chordSlash 1 d4:maj7 c4:7 b4:7 \chordSlash 1 bf4:7 a2.:7 d2:7 g2:7.5+

  c2:maj7 g2:7.5+ e2:m7.5- a2:7.9- d2:m7 d2:m7.5- af2:7 g2:7
  c4:7 b4:7.5+ bf2:7 a2:m7.5- af2:7 c2:6/g d4:7 g4:7 c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7.5+ }
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
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Ballad [Billie Holiday 1939]" 78

  \sectStart "A1"
  
  e8 f8 g8 a8~ a4. af8 | g4 a8 e8~ e2 |
  d8 f8 a8 c8~ c4. bf8 | bf4 af4 af4 g4 |
  a4 g4 g4. f8 | g8 bf4 bf8~ bf2 |
  a4 g4 gf4 ef4 | d4 d8 ds8~ ds2 |
  
  \sect "A2"
  
  e8 f8 g8 a8~ a4. af8 | g4 a8 e8~ e2 |
  d8 f8 a8 c8~ c4. bf8 | bf4 af4 af4 g4 |
  a4 g4 g4. f8 | g8 bf4 bf8~ bf2 |
  \break
  c4 c4 g4 g4 | ef4 f8 d8~ d2 |
  
  \bar "||"
  \xPageBreak

  \sectNoBar "B"

  a'4 a2 af4 | g4 g2 fs4 |
  \tuplet 3/2 { a4 af4 g4 } gf4 f4 | e8 a4 d,8~ d2 |
  b'4 b2 bf4 | a4 a2 fs4 |
  \break
  g4 a4 fs4 fs4 | d4 d8 ds8~ ds2 |

  \sect "A3"

  e8 f8 g8 a8~ a4. af8 | g4 a8 e8~ e2 |
  d8 f8 a8 c8~ c4. bf8 | bf4 af4 af4 g4 |
  a4 g4 g4. f8 | ef8 g4 c,8~ c4. d8 |
  \break
  e8 a4 a,8 e'4 e4 | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
