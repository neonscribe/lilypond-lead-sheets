%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "If I Should Lose You"
  subtitle = \instrument
  poet = ""
  composer = "Leo Robin and Ralph Rainger"
  copyright = \markup \small "© 1935 Famous Music Corporation"
}

refrainLyrics = \lyricmode {
If I should lose you, the stars would fall from the sky.
If I should lose you, the leaves would with -- er and die.
The birds in May -- time would sing a mourn -- ful re -- frain
and I would wan -- der a -- round hat -- ing the sound of rain.

With you be -- side me the rose would bloom in the snow.
With you be -- side me no winds of win -- ter would blow.
I gave you my love and I was liv -- ing a dream,
but liv -- ing would seem in vain
if I lost you.
}

refrainChords = \chordmode {
  s2.
  
  g1:m7 a2:m7.5- d2:7 g2:m7 gf2:7 f2:m7 bf2:7
  ef1:maj7 f2:m7 bf2:7 ef1:maj7 c1:m7

  f1:7 c2:m7 f2:7 bf1:maj7 a2:m7.5- d2:7
  g1:m7 c1:7 c1:m7 a2:m7.5- d2:7

  g1:m7 a2:m7.5- d2:7 g2:m7 gf2:7 f2:m7 bf2:7
  ef1:maj7 f2:m7 bf2:7 ef1:maj7 c1:m7
  
  f1:7 c2:m7 f2:7 bf1:maj7 d2:m7 df2:dim7 
  c1:m7 f1:7 bf1:6
  \chordOpenParen{ a2:m7.5- }
  \chordCloseParen{ d2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Hank Mobley 1960]" 4 = 180
  
  \partial 2. d4 d'4. c8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  a2 bf2 | r4 d,4 d'4. c8 | \tuplet 3/2 { a4 a4 c4 } bf2 | r4 bf,4 bf'4. af8 |
  \break
  fs2 g2 | r4 bf,4 bf'4. af8 |
  \tuplet 3/2 { fs4 fs4 af4 } g2 | r4 g4 a4 bf4 |

  \sect "B"
  
  d,2 d2 | r4 c4 d4 ef4 | e8 g4 f8 f2 | r4 f4 g4 a4 |
  \break
  a8 c4 bf8 bf2 | bf8 d4 c8 c4 bf4 | c1 | r4 d,4 d'4. c8 |
  
  \sect "A2"
  
  a2 bf2 | r4 d,4 d'4. c8 | \tuplet 3/2 { a4 a4 c4 } bf2 | r4 bf,4 bf'4. af8 |
  \break
  fs2 g2 | r4 bf,4 bf'4. af8 |
  \tuplet 3/2 { fs4 fs4 af4 } g2 | r4 g4 a4 bf4 |

  \sect "C"
  
  d,2 d2 | r4 c4 d4 ef4 | e8 g4 f8 f4 g4 | a8 c4 bf8 bf4 c4 |
  \break
  d4. bf8 f2~ | f2 g2 | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
