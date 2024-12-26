%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Gone With the Wind"
  subtitle = \instrument
  poet = "Herb Magidson"
  composer = "Allie Wrubel"
  copyright = "© 1937 Bourne Co."
}

refrainLyrics = \lyricmode {
Gone with the wind, just like a leaf that has blown a -- way.
Gone with the wind, my ro -- mance has flown a -- way.

Yes -- ter -- day's kiss -- es are still on my lips. __
I had a life -- time of Hea -- ven at my fin -- ger -- tips.

But now all is gone, gone is the rap -- ture that thrilled my heart.
Gone with the wind, the glad -- ness that filled my heart.

Just like a flame, love burned bright -- ly then be -- came
an emp --ty smoke dream that has gone, gone with the wind.
}

refrainChords = \chordmode {
  f2:m7 bf2:7 ef2:maj7 c2:7.9- f2:m7 bf2:7 ef1:maj7
  a2:m7 d2:7 g2:6 bf2:dim7 a2:m7 d2:7 g1:maj7
  
  g1:m7 fs1:dim7 f1:m7 bf1:7
  ef2:maj7 af2:7 g2:m7.5- c2:7.9- f1:m7 bf1:7

  f2:m7 bf2:7 ef2:maj7 c2:7.9- f2:m7 bf2:7 ef1:maj7
  a2:m7 d2:7 g2:6 bf2:dim7 a2:m7 d2:7 g1:maj7
  
  f1:m7 c1:m7 f2:m7 bf2:7 g2:m7 c2:7
  f1:m7 bf1:7 ef1:maj7
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \xTextMark \markup{ \bold \box "A1" }
  
  c'2 bf4. bf8 | g1 | c4 c8 c8 bf8 bf4 bf8 | bf4. bf8 g2 |
  \break
  g2 fs4. a8 | e1 | r4 g4 \tuplet 3/2 { fs4 g4 a4 } | d4. d8 d2 |
  
  \sect "B"
  
  r2 \tuplet 3/2 { d4 d4 d4 } | d4 ef2 c4 | \tuplet 3/2 { ef4 c4 ef4 } d2~ | d1 |
  \break
  r4 bf4 bf4 bf4 | bf4 c8 df8 c4 bf4 | r4 af4 \tuplet 3/2 { ef'4 c4 af4 } | f2. bf4 |

  \sect "A2"
  
  c2 bf4. bf8 | g1 | c4 c8 c8 bf8 bf4 bf8 | bf4. bf8 g2 |
  \break
  g2 fs4. a8 | e1 | r4 g4 \tuplet 3/2 { fs4 g4 a4 } | d4. d8 d2 |
  
  \sect "C"
  
  f2 c4. c8 | ef1 | d4 c4 bf8 af8 g8 f8 | c'2. g4 |
  \break
  bf4 af4 ef'8 c8 af8 c8 | g2 \tuplet 3/2 { bf4 bf4 bf4 } | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
