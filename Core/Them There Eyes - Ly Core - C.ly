%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Them There Eyes"
  subtitle = \instrument
  poet = ""
  composer = "Maceo Pinkard, William Tracy & Doris Tauber"
  copyright = \markup \small "© 1930 Bourne, Inc."
}

refrainLyrics = \lyricmode {
I fell in love with you first time I looked in -- to them there eyes.
You′ve got a cer -- tain li'l cute way of flirt -- in' with them there eyes.
They make me feel hap -- py, they make me blue.
No stall -- in′, I'm fall -- in', go -- ing in a big way for sweet lit -- tle you.
My heart is jump -- in′, and you start -- ed some -- thin' with them there eyes.
You′d bet -- ter watch them if you're wise. __
They spark -- le, they bub -- ble, they′re gon -- na get you in a whole lot of trou -- ble.
You're ov -- er -- work -- in′ 'em, there's dan -- ger lurk -- in′ in them there eyes.
}

refrainChords = \chordmode {
  c1 c1 c2 g2:9.5+ c1
  c1 c2 a2:m7 d1:9 d1:9
  
  g1:9 g1:9 c1 a1:m7
  d1:7 d1:7 g1:7 g1:7

  c1 c1 c2 g2:9.5+ c1
  g1:m7 c1:7 f2 c2:9.5+ f1

  f1 fs1:dim7 c1 d2:7 g2:7
  c2 f2 e2:m7 a2:7 d2:7 g2:7 c2
  \chordInsideParens{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Billie Holiday 1939]" 4 = 160

  \sectStart "A1"
  
  g4 e8 d8 c8 d8 e4 | g4 e8 d8 c8 d8 e4 | a2 a2 | a1 |
  \break
  g4 e8 d8 c8 d8 e4 | g4 e8 d8 c8 d8 e4 | a2 a2 | a1 |
  
  \sect "B"
  
  r4 a4 g4 f4 | r4 a4 g4 f4 | r4 a4 g4 e4 | c1 |
  \break
  r4 c'4 b4 a4 | r4 c4 b4 a4 | b8 c8 cs8 d8 d,8 d4 e8 | f4 cs8 e8 d4 r4 |
  
  \sect "A2"

  g4 e8 d8 c8 d8 e4 | g4 e8 d8 c8 d8 e4 | a2 a2 | a1 |
  \break
  r4 c4 c4 c4 | c4 a4 g4 e4 | d1~ | d2. r4 |
  
  \sect "C"
  
  r4 c'4 b4 a4 | r4 c4 b4 a4 | c4 e,8 ds8 e8 g8 a8 g8 | b4 a8 b8 a8 g4. |
  \break
  g4 e8 d8 c8 d8 e4 | g4 e8 d8 c8 d8 e4 | a2 b2 | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
