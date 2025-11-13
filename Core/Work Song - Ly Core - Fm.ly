%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Work Song"
  subtitle = \instrument
  poet = "Oscar Brown, Jr."
  composer = "Nat Adderley"
  copyright = \markup \small { \now " " "© 1960 Upam Music Co." }
}

refrainChords = \chordmode {
  f1:m7 f1:m7 f1:m7 f1:m7 
  f1:m7 f1:m7 c1:m7 c1:7
  f1:m7 f1:m7 f1:m7 f1:m7
  f1:7.9+ bf1:7 g2:7 c2:7 f1:m7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Cannonball Adderley 1960]" 4 = 168
  
  r4 f8 f8 af8 bf4 c8~ | c4 c8 bf8 c4 ef4 | r4 f,8 f8 af8 bf4 f8~ | f4 f8 ef8 f4 r4 |
  \break
  r4 f8 f8 af8 bf4 c8~ | c4 c8 bf8 c4 ef4 | r4 c8 c8 ef8 c4 e8~ | e4 c8 bf8 c4 r4 |
  \break
  r4 f8 ef8 \tuplet 3/2 { bf16 cf16 bf16 } af8 bf8 af8~ | af4 af8 f8 af4 bf4 |
  r4 f8 f8 af8 bf4 f8~ | f4 f8 ef8 f8 ef8 f4 |
  \break
  b8-- c8-^ r4 r4 f,4 | bf8-- cf8-^ r4 r8 f,8 af8 b8 |
  r8 bf8 r8 af8 \tuplet 3/2 { bf16 cf16 bf16 } af16 f16 ef8 f8~ | f1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
