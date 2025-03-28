%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "You and the Night and the Music"
  subtitle = \instrument
  poet = "Howard Dietz"
  composer = "Arthur Schwartz"
  copyright = \markup \small "© 1934 Warner Bros. Inc."
}

refrainLyrics = \lyricmode {
You and the night and the mu -- sic fill me with flam -- ing de -- sire,
set -- ing my be -- ing com -- plete -- ly on fire.

You and the night and the mu -- sic thrill me but will we be one
af -- ter the night and the mu -- sic are done.

Un -- til the pale light of dawn -- ing and day -- light our hearts will be throb -- bing gui -- tars.
Morn -- ing may come with -- out warn -- ing and take a -- way the stars.

If we must live for the mo -- ment, love till the mo -- ment is through.
Af -- ter the night and the mu -- sic die will I have you?
}

refrainChords = \chordmode {
  c1:m g2:sus7 g2:7 c2:m c2:9 f1:m
  f1:m g1:7 c1:maj7 af2:7 g2:7

  c1:m g2:sus7 g2:7 c2:m c2:9 f1:m
  f1:m g1:7 c1:maj7 c1:6

  af1:7 af1:7 g1:7 g1:7
  af1:7 af2:7 d2:7 g2 f2:m g1:7

  c1:m g2:sus7 g2:7 c2:m c2:9 f1:m
  f1:m c1:m af2:9 g2:7 c2.:m
  \chordInsideParens{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Up [Bill Evans 1962]" 4 = 220

  \sectStart "A1"
  
  \tuplet 3/2 { g4 af4 fs4 } \tuplet 3/2 { g4 af4 fs4 } | g4 g2. |
  \tuplet 3/2 { g4 af4 fs4 } g8 c4 g8 | f1 |
  \break
  \tuplet 3/2 { f4 g4 e4 } \tuplet 3/2 { f4 g4 e4 } | f4 f2 g4 | e1 | r1 |
  
  \sect "A2"

  \tuplet 3/2 { g4 af4 fs4 } \tuplet 3/2 { g4 af4 fs4 } | g4 g2. |
  \tuplet 3/2 { g4 af4 fs4 } g8 c4 g8 | f1 |
  \break
  \tuplet 3/2 { f4 g4 e4 } \tuplet 3/2 { f4 g4 e4 } | f4 f2 g4 | e1 | r4 g4 a4 c4 |
  
  \sect "B"
  
  \tuplet 3/2 { ef4 f4 d4 } \tuplet 3/2 { ef4 f4 d4 } | ef4 ef2 c4 |
  \tuplet 3/2 { d4 ef4 cs4 } \tuplet 3/2 { d4 ef4 cs4 } | d1 |
  \break
  \tuplet 3/2 { c4 d4 b4 } \tuplet 3/2 { c4 d4 b4 } | c4 c2 d4 | b4. g8 af4. f8 | g1 |

  \sect "A3"

  \tuplet 3/2 { g4 af4 fs4 } \tuplet 3/2 { g4 af4 fs4 } | g4 g2. |
  \tuplet 3/2 { g4 af4 fs4 } g8 c4 g8 | f1 |
  \break
  \tuplet 3/2 { f4 g4 e4 } \tuplet 3/2 { f4 g4 af4 } | g4 a4 b4 c4 | ef2 d2 | c2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
