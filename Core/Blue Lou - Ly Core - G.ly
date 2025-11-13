%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Blue Lou"
  subtitle = \instrument
  poet = "Irving Mills"
  composer = "Edgar Sampson"
  copyright = \markup \small { \now " " "© 1935 Mills Music" }
}

refrainChords = \chordmode {
  a1:m7.5- d1:7 a1:m7.5- d1:7
  g2 g2:7/b c1:6 a1:7 d1:7

  a1:m7.5- d1:7 a1:m7.5- d1:7
  g2 g2:7/b c1:6 a2:7 d2:7 g1
  
  d1:6 ds1:dim7 e1:m7 a1:7
  d1:6 ds1:dim7 e2:m7 a2:7 d1:7

  a1:m7.5- d1:7 a1:m7.5- d1:7
  g2 g2:7/b c1:6 a2:7 d2:7 g1
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing [Fletcher Henderson 1936]" 4 = 200

  \xTextMark \markup{ \bold \box "A1" }
  
  ef1 | d4 r4 r2 | ef1 | d4 r4 r4 r8 as8 |
  \break
  b8 d8 e4-. d4 r8 ds8 | e8 g8 r4 r2 | a8 a4 a8~ a4. fs8 | e8 d8 r4 r2 |
  
  \sect "A2"
  
  ef1 | d4 r4 r2 | ef1 | d4 r4 r4 r8 as8 |
  \break
  b8 d8 e4-. d4 r8 ds8 | e8 g8 r4 r2 | a8 g4 bf8 a4 g8 g8~ | g2. r8 fs8 |
  
  \sect "B"
  
  a8 a4.~ a4 r8 fs8 | a8 a4.~ a4 r4 | r8 a4. a4 fs8 e8~ | e2. r8 fs8 |
  \break
  a8 a4.~ a4 r8 fs8 | a8 a4.~ a4 r4 | a8 a8 r4 fs4 fs8 e8~ | e8 d4.~ d4 r4 |


  \sect "A3"

  ef1 | d4 r4 r2 | ef1 | d4 r4 r4 r8 as8 |
  \break
  b8 d8 e4-. d4 r8 ds8 | e8 g8 r4 r2 | a8 g4 bf8 a4 g8 g8~ | g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
