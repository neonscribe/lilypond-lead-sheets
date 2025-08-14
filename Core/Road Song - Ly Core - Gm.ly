%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Road Song"
  subtitle = \instrument
  poet = ""
  composer = "Wes Montgomery"
  copyright = \markup \small "© 1968 Taggie Music Co."
}

refrainChords = \chordmode {
  s4
  
  g1:m7 g1:m7 d1:7.9+ a2:m7 d2:7
  g2:m7 f2:m7 ef2:maj7 c2:m7 e2:m7.5- c2:m7
  
  d4:7.9+ g2.:m7

  d4:7.9+ g2.:m7
  
  c1:m7 f2:7 f2:7/ef bf2:maj7/d bf2:maj7/c b2:m7 e2:7
  bf1:m7 ef1:7 af1:maj7 d1:7.9-

  g1:m7 g1:m7 d1:7.9+ a2:m7 d2:7
  g2:m7 f2:m7 ef2:maj7 c2:m7 e2:m7.5- c2:m7 d4:7.9+ g2.:m7

  d4:7.9+ g2.:m7 g2:m7 f2:m7 ef2:maj7 c2:m7 e2:m7.5- c2:m7 d4:7.9+ g2.:m9
}

refrainAltChords = \chordmode {
  s4
  
  s1 s1 \chordInsideParens{ a1:m7 } \chordInsideParens{ d1:7 } s1 s1 s1
  
  s1
  
  s1
  
  s1 s1 s1 s1 s1 s1 s1 s1

  s1 s1 \chordInsideParens{ a1:m7 } \chordInsideParens{ d1:7 } s1 s1 s1 s1

  s1 s1 s1 s1 s1
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Wes Montgomery 1968]" 4 = 140

  \partial 4 \invisEighth d8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g8 bf8 bf8 g8 bf4 g4 | r1 | d8 f8 f8 d8 f2 | r2 r4 r8 d8 |
  \break
  g8 bf8 bf8 bf8~ bf8 c4 d8~ | d8 c4 bf8~ bf8 g4 a8 | bf4. g8~ g4. d8 |
  \alternative { \volta 1 {
  f4 g2 d4-. |
  } \volta 2 {
  f4 g2. |
  } } }
  \sect "B"
  
  r4 r8 ef8 r8 g4-. bf8 | d4. c8 a4 g8 f8~ | f1 | e4 gs8 e8 d2 |
  \break
  r4 r8 df8 r8 f4-. af8 | c4. bf8 g4 f8 ef8~ | ef1 | r2 r4 d4 |
  
  \sect "A3"
  
  g8 bf8 bf8 g8 bf4 g4 | r1 | d8 f8 f8 d8 f2 | r2 r4 r8 d8 |
  \break
  g8 bf8 bf8 bf8~ bf8 c4 d8~ | d8 c4 bf8~ bf8 g4 a8 | bf4. g8~ g4. d8 \textToCodaLastTime | f4 g4 r4 r8
  \override Parentheses.font-size = #5
  \parenthesize d8 |

  \bar "||-|."
  
  \textCodaBreak
  
  f4 g2 d4-. | g8 bf8 bf8 bf8~ bf8 c4 d8~ | d8 c4 bf8~ bf8 g4 a8 | bf4. g8~ g4. d8 | f4 g2.\fermata

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup "Use chords in parentheses on solos."
