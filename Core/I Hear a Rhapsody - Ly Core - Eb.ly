%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "I Hear a Rhapsody"
  subtitle = \instrument
  poet = ""
  composer = "George Fragos, Jack Baker and Dick Gasparre"
  copyright = "© 1940 Broadcast Music Inc."
}

refrainLyrics = \lyricmode {
And when I hear you call __
So soft -- ly to me,
I don't hear a call at all,
I hear a rhap -- so -- dy.

And when your spark -- ling eyes __
Are smi -- ling at me,
Then soft through the star -- lit skies
I hear a rhap -- so -- dy.

My days are so blue
When you're a -- way.
My heart longs for you,
So won't you stay?

My dar -- ling, hold me tight __
And whis -- per to me.
Then soft through a star -- ry night
I'll hear a rhap -- so -- dy.
}

refrainChords = \chordmode {
  s2.

  c2:m7 fs2:m7 f2:m7 bf2:7 ef2:maj7 af2:7 g2:m7 c2:7
  f2:m7 af2:m7 b2:m7 bf2:7 ef1:maj7 d2:m7.5- g2:9
  
  c2:m7 fs2:m7 f2:m7 bf2:7 ef2:maj7 af2:7 g2:m7 c2:7
  f2:m7 af2:m7 b2:m7 bf2:7 ef2:maj7 bf2:m7 a2:m7.5- d2:7.9-
  
  g1:m7 a2:m7.5- d2:7.9- g1:m7 c2:m7 f2:7
  bf1:maj7 f1:m7 d1:m7.5- g1:9

  c2:m7 fs2:m7 f2:m7 bf2:7 ef2:maj7 af2:7 g2:m7 c2:7
  f2:m7 af2:m7 b2:m7 bf2:7 ef1:maj7

  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \partial 2. g4 a4 b4 |
  \bar "$"

  \xTextMark \markup{ \bold \box "A1" }
  
  d4. c8 ef2~ | ef2 d2 | \tuplet 3/2 { bf4 g4 af4 } bf2 | r4 g4 \tuplet 3/2 { g4 af4 bf4 } |
  \break
  bf4. af8 cf2 | r4 d,4 d4 d4 | f4. ef8 ef2 | r4 g4 a4 b4 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d4. c8 ef2~ | ef2 d2 | \tuplet 3/2 { bf4 g4 af4 } bf2 | r4 g4 \tuplet 3/2 { g4 af4 bf4 } |
  \break
  bf4. af8 cf2 | r4 d,4 d4 d4 | f4. ef8 ef2 | r1 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 d4 \tuplet 3/2 { d4 d4 d4 } | ef2. c4 | ef4. d8 d2 | r1 |
  \break
  r4 f4 \tuplet 3/2 { f4 f4 f4 } | af2. f4 | c'4. b8 b2 | r4 g4 a4 b4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  d4. c8 ef2~ | ef2 d2 | \tuplet 3/2 { bf4 g4 af4 } bf2 | r4 g4 \tuplet 3/2 { g4 af4 bf4 } |
  \break
  bf4. af8 cf2 | r4 d,4 d4 d4 | f4. ef8 ef2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
