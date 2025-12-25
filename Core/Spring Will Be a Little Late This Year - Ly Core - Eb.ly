%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Spring Will Be a Little Late This Year"
  subtitle = \instrument
  poet = ""
  composer = "Frank Loesser"
  copyright = \markup \small { \now " " "© 1943 Frank Music Corp." }
}

refrainLyrics = \lyricmode {
Spring will be __ a lit -- tle late this year. __
A lit -- tle late ar -- riv -- ing in my lone -- ly world o -- ver here.
For you have left me and where is our Ap -- ril of old?
You have left me and win -- ter con -- tin -- ues cold.

As if to say spring will be __ a lit -- tle slow to start. __
A lit -- tle slow re -- viv -- ing that mu -- sic it made in my heart.
Yes, time heals all things so I need -- n't cling to this fear.
It's mere -- ly that spring will be __ a lit -- tle late this year. __
}

refrainChords = \chordmode {
  ef2:maj7 bf2:7.5+ ef2:6 e2:dim7 f1:m7 bf1:7
  f1:m7 bf1:7 ef1:maj7 bf2:m7 ef2:7
  
  af2:7.11+ a2:dim7 ef2:maj7 c2:m7 af2:maj7 ef2/g f1:m7
  af2:7.11+ a2:dim7 ef2:maj7 c2:m7 f1:m7 bf1:7.9-

  ef2:maj7 bf2:7.5+ ef2:6 e2:dim7 f1:m7 bf1:7
  f1:m7 bf1:7 ef1:maj7 bf2:m7 ef2:7
  
  af2:7.11+ a2:dim7 ef1:maj7 f2:m7 ef2/g af2:m6 bf2:7.9-
  ef2:maj7 bf2:7.5+ ef2:6 e2:dim7 f2:m7 bf2:7.9- ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

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
  \tempo "Medium Ballad [Sarah Vaughan 1953]" 4 = 89

  \sectStart "A1"
  
  bf2. bf,4 | c2~ c8 bf8 c8 bf8 | c'2. bf4 | d,2~ d8 bf8 d8 bf8 |
  \break
  c'2. bf4 | d,4 ef2 f4 | \tuplet 3/2 { g4 af4 fs4 } \tuplet 3/2 { g4 af4 fs4 } | g2. ef4 |
  
  \sect "B"
  
  d'2. c4 | bf4 ef,2 ef4 | \tuplet 3/2 { ef4 ef4 ef4 } \tuplet 3/2 { ef4 ef4 ef4 } | ef1 |
  \break
  d'2. c4 | bf4 ef,2 ef4 | \tuplet 3/2 { f4 f4 f4 } f4 af4 | cf,4. ef8 f8 af8 cf4 |
  
  \sect "A2"

  bf2. bf,4 | c2~ c8 bf8 c8 bf8 | c'2. bf4 | d,2~ d8 bf8 d8 bf8 |
  \break
  c'2. bf4 | d,4 ef2 f4 | \tuplet 3/2 { g4 af4 fs4 } \tuplet 3/2 { g4 af4 fs4 } | g2. ef4 |
  
  \sect "C"
  
  d'2. c4 | bf4 ef,2 ef4 | \tuplet 3/2 { ef4 ef4 ef4 } \tuplet 3/2 { ef4 ef4 ef4 } | cf'4. d,8 f8 af8 cf4 |
  \break
  bf2. bf,4 | c2~ c8 bf8 c8 bf8 | c'2. d,4 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
