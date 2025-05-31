%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Flying Home"
  subtitle = \instrument
  poet = ""
  composer = "Benny Goodman/Lionel Hampton"
  copyright = \markup \small "© 1940 Regent Music Corporation"
}

refrainChords = \chordmode {
  ef2 ef2/df c2:m7 b4:7 bf4:7 ef2 ef2/df c2:m7 b4:7 bf4:7
  ef2 ef2/df c2:m7 b4:7 bf4:7 ef1:6 bf1:7

  ef2 ef2/df c2:m7 b4:7 bf4:7 ef2 ef2/df c2:m7 b4:7 bf4:7
  ef2 ef2/df c2:m7 b4:7 bf4:7 ef1:6 ef1:6
  
  ef1:7 ef1:7 af1:7 af1:7 f1:7 f1:7 bf1:7 bf1:7

  ef2 ef2/df c2:m7 b4:7 bf4:7 ef2 ef2/df c2:m7 b4:7 bf4:7
  ef2 ef2/df c2:m7 b4:7 bf4:7 ef1:6
  \chordInsideParens{ bf1:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Benny Goodman 1939]" 4 = 165

  \sectStart "A1"
  
  g8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  g'8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  \break
  g'8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  g8 bf8 c8 ef8 r8 df4. | r1 |
  
  \sect "A2"

  g8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  g'8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  \break
  g'8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  g8 bf8 c8 ef8 r8 df4. | r1 |
  
  \sect "B"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  
  \sect "A3"

  g8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  g'8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  \break
  g'8 bf4 f8~ f2 | g8 bf8 g8 bf8 \tuplet 3/2 { gf8 f8 ef8 } c8 bf8 |
  g8 bf8 c8 ef8 r8 df4. | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
