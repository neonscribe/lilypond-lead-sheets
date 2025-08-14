%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Dinah"
  subtitle = \instrument
  poet = "Sam M. Lewis and Joe Young"
  composer = "Harry Akst"
  copyright = \markup \small "© 1925 B & G Akst Publishing Co."
}

refrainLyrics = \lyricmode {
Din -- ah is there an -- y -- one fin -- er __
in the state of Car -- o -- lin -- a? __
If there is and you know 'er, __ show 'er to me. __

Din -- ah with her Dix -- ie eyes blaz -- in' __
how I love to sit and gaze in __ to the eyes of Din -- ah Lee.

Ev' -- ry night, __ why do I, __ shake with fright, __
be -- cause my Din -- ah might __ change her mind __ a -- bout me.

Din -- ah, if she wan -- dered to Chi -- na, __
I would hop an o -- cean lin -- er, __
just to be with Din -- ah Lee!
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  g2:maj7 e2:m7 a2:m7 d2:7 g2:maj7 c2:maj7 g2/b e2:m7
  a1:m7 d1:7 g2:6 bf2:dim7 a2:m7 d2:7

  g2:maj7 e2:m7 a2:m7 d2:7 g2:maj7 c2:maj7 g2/b e2:m7
  a1:m7 d1:7 g1:6 fs2:m7.5- b2:7.9-
  
  e1:m e1:m/ds e1:m/d a1:7/cs
  e1:m7 a1:7 a1:m7 d1:7

  g2:maj7 e2:m7 a2:m7 d2:7 g2:maj7 c2:maj7 g2/b e2:m7
  a1:m7 d1:7 g1:6
  
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
  \set chordChanges = ##f
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bright Swing [Fats Waller 1936]" 4 = 224

  \xTextMark \markup{ \bold \box "A1" }
  
  d2 d2 | r4 d8 e8 g8 a8 b4 | d8 b4.~ b2 | r4 g8 a8 b8 g8 a8 b8 |
  \break
  d8 b4.~ b2 | r4 a8 b8 d8 b8 a4 | g8 e4.~ e2 | e8 d8 d8 d8~ d4 r4 |
  
  \sect "A2"
  
  d2 d2 | r4 d8 e8 g8 a8 b4 | d8 b4.~ b2 | r4 g8 a8 b8 g8 a8 b8 |
  \break
  d8 b4.~ b2 | r4 a8 b8 d8 b8 a8 b8 | g1 | r1 |
  
  \sect "B"
  
  b8 g4 b8~ b2 | b8 g4 b8~ b2 | b8 g4 b8~ b2 | r4 b4 d4 c4 |
  \break
  b8 g4 b8~ b2 | b8 g4 g8~ g8 a8 b4 | a1 | r1 |
  
  \sect "A3"

  d,2 d2 | r4 d8 e8 g8 a8 b4 | d8 b4.~ b2 | r4 g8 a8 b8 g8 a8 b8 |
  \break
  d8 b4.~ b2 | r4 a8 b8 d8 b8 a8 b8 | g1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
