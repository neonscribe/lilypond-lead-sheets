%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "They All Laughed"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small "© 1937 George Gershwin Music"
}

refrainLyrics = \lyricmode {
  They all laughed at Chris -- to -- pher Co -- lum -- bus when he said the world was round. __
  They all laughed when Ed -- i -- son re -- cord -- ed sound. __
  
  They all laughed at Wil -- bur and his broth -- er when they said that man could fly. __
  They told Mar -- co -- ni wire -- less was a pho -- ny. It's the same old cry.
  
  They laughed at me __ want -- ing you, said I was reach -- ing for the moon;
  but oh, __ you came through, __ now they'll have to change their tune.
  
  They all said we nev -- er could be hap -- py, they laughed at us and how!
  but Ho, Ho, Ho! Who's got the last laugh now? __
}

refrainLyricsTwo = \lyricmode {
  They all laughed at Rock -- e -- fel -- ler Cen -- ter, now they're fight -- ing to get in. __
  They all laughed at Whit -- ney and his cot -- ton gin. __

  They all laughed at Ful -- ton and his steam -- boat, Her -- shey and his choc' -- late bar, __
  Ford and his Liz -- zie keep the laugh -- ers bus -- y, that's how peo -- ple are.

  They laughed at me __ want -- ing you, said it would be Hel -- lo, Good -- bye;
  but oh, __ you came through, __ now they're eat -- ing hum -- ble pie.
  
  They all said we'd nev -- er get to -- geth -- er. Dar -- ling, let's take a bow,
  for  Ho, Ho, Ho! Who's got the last laugh now? __
}

refrainSRBChords = \chordmode {
  g2:6 e2:m7 a2:m7 d2:7 a2:m7 d2:7 b4:m7 bf4:7 a4:m7 d4:7
  g2:6 e2:m7 a2:m7 d2:7 g2:6 e2:m7 a2:m7 d2:7

  g2:6 e2:m7 a2:m7 d2:7 cs2:7.9- fs2:7.9- b2:m7 e2:9
  d2:6/a b2:m7 e2:m7 a2:7 d4:7 \chordSlash 1
  \chordOpenParen{ e4:7.9-.5+ }
  \chordCloseParen{ a4:9 }
  d1:7
  
  g1:7 d2:m7 g2:9 b1:m7.5- e4:7.5+ \chordSlash 2 e4:7
  a1:7 e2:m7 a2:9 a1:m7 d1:7
  
  g2:6 e2:m7 a2:m7 d2:7 b2:7.9-.5+ e4:7.9- e4:7.9-.5+
  a4:9 \chordSlash 1 d4:sus9 d4:9 b2:m7 e2:7 a2:m7 d2:13 g2:6
  \chordOpenParen{ e2:m7 }
  a2:m7
  \chordCloseParen{ d2:7 }
}

refrainChords = \refrainSRBChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \sectStart "A1"
  
  r8 d8 e4 g4 a4 | b8 b8 a8 g8 a8 b4. | b8 b8 a8 g8 a8 b4 d,8~ | d1 |
  \break
  r8 d8 e4 g4 a4 | b8 b8 a8 g8 a8 b4 d,8~ | d1~ | d2 r2 |

  \sect "A2"

  r8 d8 e4 g4 a4 | b8 b8 a8 g8 a8 b4. | d8 d8 cs8 b8 cs8 d4 fs,8~ | fs1 |
  \break
  b4 a8 gs8 a8 b4. | b8 b8 a8 gs8 a8 b4. | a4 b4 c4 b4 | a4 d4 d4 d4 |
  \bar "||"

  \xPageBreak

  \sectNoBarNoBreak "B"
  
  d2~ d8 b4 g8 | a2~ a8 b8 c8 cs8 | d4 e4 d4 b4 | c2. b4 |
  \break
  e2~ e8 cs4 a8 | b2~ b8 a4 b8 | c4 e4 e,4 g4 | a1 |

  \sect "A3"
  
  r8 d,8 e4 g4 a4 | b8 b8 a8 g8 a8 b4. | c8 b4 a8 b4 c4 | b2. a4 |
  \break
  d4 d4 d2 | e8 e4 e8 b4 b4 | g1~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
