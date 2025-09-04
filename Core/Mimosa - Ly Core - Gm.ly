%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Mimosa"
  subtitle = \instrument
  poet = ""
  composer = "Dorado Schmitt & Hono Winterstein"
  copyright = \markup \small "© 1986 Dorado Schmitt & Hono Winterstein"
}

refrainChords = \chordmode {
  g1:m g1:m g1:m g1:m

  g4:m r4*7 a1:m7.5- d1:7
  g2:m gf2:m f2:m bf2:7 ef1 d1:7
  
  c1:7 f1:7 bf1 ef1
  a1:m7.5- a1:m7.5- d1:7 d1:7
  
  c1:7 f1:7 bf1 ef1
  a1:m7.5- d1:7 g1:m ef2:7 d2:7

  g1:m g1:m g1:m g1:m
  g4:m s2.
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Up [Biréli Lagrène 2004]" 4 = 280

  \sect "Intro"
  
  \bar ".|:"
  \repeat volta 2 {
  g,2 bf2 | e,2 bf'2 | r8 g8 r8 g8 bf4 bf4 | e,4 e4 df'2 |
  }
  \bar ":|.|:"

  \sectNoBar "A1,A2"
  
  \repeat volta 2 {
  r8 g4. a4 bf4 | d4 bf4 a4 g8 a8~ | a1 | r1 |
  \break
  r8 g4. a4 bf4 | d4 bf4 a4 g8 a8~ | a1 | r1 |
  
  \alternative { \volta 1 {

  \sect "B"
  
  r8 c4. d4 ef4 | f1 | r8 bf,4. c4 d4 | ef1 |
  \break
  r8 a,4. bf4 c4 | d4 c4 bf4 a4 | d1~ | d1 |
  } \volta 2 {
  \bar "||-:|."
  
  \sectNoBar "C"

  r8 c4. d4 ef4 | f1 | r8 bf,4. c4 d4 | ef1 |
  \break
  r8 a,4. bf4 c4 | d4 c4 bf4 fs4 | a1 | r1 |
  } } }
  \bar ".|:-|."
  \sectNoBar "Outro"
  
  \repeat volta 2 {
  g,2 bf2 | e,2 bf'2 | r8 g8 r8 g8 bf4 bf4 | e,4 e4 df'2 |
  }

  g4-. r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{"Break in bars 1 and 2 of A on head only."}
