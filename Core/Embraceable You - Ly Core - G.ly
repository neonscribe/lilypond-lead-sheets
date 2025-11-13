%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Embraceable You"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small { \now " " "© 1930 New World Music Corporation" }
}

refrainLyrics = \lyricmode {
Em -- brace me, My sweet em -- brace -- a -- ble you. __
Em -- brace me, You ir -- re -- place -- a -- ble you. __
Just one look at you, my heart grew tip -- sy in me. __
You and you a -- lone bring out the gyp -- sy in me. __
I love all the man -- y charms a -- bout you. __
A -- bove all I want my arms a -- bout you. __
Don't be a naught -- y ba -- by, Come to pa -- pa,
Come to pa -- pa, do!
My sweet em -- brace -- a -- ble you.
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  g1:6 bf1:dim7 a1:m7 d2:7 b4:m7.5- e4:7.9-
  a1:m7 c2:m6 f2:9 g2:maj7 a4:m7 bf4:dim7 g2:6 c4:7 b4:7
  
  e2:m e2:m7+ e2:m7 e2:m6 b2:m7 b2:m7/a gs2:m7.5- g2:m6
  fs2:m7 b2:7.5+ e2:m7 a4:9 ef4:7 d1:sus7 d2:7 af2:9.11+

  g1:6 bf1:dim7 a1:m7 d2:7 b4:m7.5- e4:7.9-
  a1:m7 c2:m6 f2:9 g1:maj7 d2:m7 g2:7.5+
  
  c1:maj7 fs2:m7.5- b2:7 e2:m e2:m/d cs2:m7.5- c2:m6
  b2:m7 e2:7.9- a2:m7.5- d2:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
  \set chordChanges = ##f
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Nat King Cole 1944]" 4 = 72

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 e4 fs4 g4 | r4 e4 fs4 g4 | a8 r8 r8 d,8 d4 d4~ | d1 |
  r4 a'4 b4 c4 | r4 a4 b4 c4 | d8 r8 r8 g,8 g4 g4~ | g1 |
  
  \sect "B"
  
  b4 g4 a4 g4 | b4 g4 a4 g4 | b8 r8 r8 fs8 fs4 fs4~ | fs1 |
  a4 fs4 g4 fs4 | g4 a4 b4 cs4 | d8 r8 r8 d,8 d4 d4~ | d1 |
  
  \sect "A2"
  
  r4 e4 fs4 g4 | r4 e4 fs4 g4 | a8 r8 r8 d,8 d4 d4~ | d1 |
  r4 a'4 b4 c4 | r4 a4 b4 c4 | d8 r8 r8 g,8 g4 g4~ | g1 |
  
  \sect "C"
  
  r4 d'4 c4 b4 | c4 b4 a4 b4 | r4 g8 g8 g8 g8 g8 g8 | g8 g8 b2. |
  r4 b4 c4 d4 | ef8 r8 r8 g,8 fs2 | g1~ | g4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
