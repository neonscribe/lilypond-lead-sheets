%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I'll Be Home for Christmas"
  subtitle = \instrument
  poet = "Kim Gannon"
  composer = "Walter Kent"
  copyright = "© 1943 Gannon & Kent Music Co., Inc."
}

refrainLyrics = \lyricmode {
I'll be home for Christ -- mas, __ you can count on me. __
Please have snow and mis -- tle -- toe and pres -- ents on the tree. __
Christ -- mas Eve will find me __ where the love -- light gleams. __
I'll be home for Christ -- mas, if on -- ly in my dreams. __
dreams, __ if on -- ly in my dreams. __
}

refrainChords = \chordmode {
  c1:6 ef1:dim7 d1:m7 g1:7
  e1:m7.5- a1:7.9- d1:m7 g1:7

  d1:m7 f2:m9 bf2:9 c2:maj7 c2:maj7/b a1:m7
  d1:sus7 d1:7 d1:m7/g g1:7
  
  c1:6 ef1:dim7 d1:m7 g1:7
  e1:m7.5- a1:7.9- d1:m7 d1:7
  
  f1:6 bf1:9 c2:maj7 b4:9.5+ bf4:9 a1:7
  d1:7 d2:m7 g2:7.9- c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
  
  c1:6 a1:7 d1:7 d2:m7 g2:7.9- c1:6 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 80

  \xTextMark \markup{ \bold \box "A1" }
  
  c'2. b4 | d2. c4 | g2 g2~ | g1 |
  \break
  a2. g4 | bf2. a4 | d,1~ | d2. r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d2. e4 | g2. f4 | e2. g4 | c2. b4 |
  \break
  d2 d2 | b2. b4 | a1~ | a2. r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c2. b4 | d2. c4 | g2 g2~ | g1 |
  \break
  a2. g4 | bf2. a4 | f1~ | f2 r2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  d'2. c4 | d2. c4 | g1 | a2. a4 | 
  \break
  d2 e2 | c2 d2 \textToCodaLastTime | c1~ | c2 r2 |

  \bar "||-|."

  \textCodaBreak
  
  e1~ | e2. a,4 | d2 e2 | c2 d2 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
