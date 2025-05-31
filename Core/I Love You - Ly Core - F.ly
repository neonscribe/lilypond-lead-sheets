%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Love You"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small "© 1943 Chappell & Co."
}

refrainLyrics = \lyricmode {
“I love you” __ hums the A -- pril breeze. __
“I love you” __ ech -- o the hills. __
“I love you” __ the gol -- den dawn a -- grees. __
As once more she sees daf -- fo -- dils. __
It's spring a -- gain __ and birds on the wing a -- gain __
start to sing a -- gain __ the old mel -- o dy __
“I love you” __ that's the song of songs, __
And it all be -- longs to you and me. (I)
}

refrainChords = \chordmode {
  s4
  
  g1:m7.5- c1:7.9- f1:maj7 a2:m7 d2:7.9-
  g1:m7 c1:7 f1:6 a2:m7 d2:7.9-

  g1:m7.5- c1:7.9- f1:maj7 b2:m7 e2:7
  a2:maj7 fs2:m7 b2:m7 e2:7 a1:maj7 a2:maj7 d2:7
  
  g1:m7 c1:7 f1:maj7 f1:maj7
  a1:m7.5- d1:7.9- g1:7 c1:7

  g1:m7.5- c1:7.9- f2:maj7 ef2:7.11+ d1:7.9-
  g1:7 g2:m7 c2:7 f1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7.9- }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Anita O'Day 1959]" 4 = 160

  \partial 4 c'4 |

  \xTextMark \markup{ \bold \box "A1" }
  
  \bar ".|:"
  \repeat volta 2 {
  c2 df,2~ | df2 bf'4. a8 | gs4. a8 a2~ | a2 r4 a4 |
  \break
  a2 bf,2~ | bf2 \tuplet 3/2 { g'4 f4 e4 } | d1~ | d2 r4 c'4 |

  \sect "A2"
  
  c2 df,2~ | df4. bf'8 bf4. a8 | gs4. a8 a2~ | a2 a4 a4 |
  \break
  b4. cs8 cs2 | d2. e4 | e1~ | e2 r4 e4 |
  
  \sect "B"
  
  f4. f8 f2~ | f4 e4 \tuplet 3/2 { e4 d4 c4 } | e4. e8 e2~ | e4 r4 c4 d4 |
  \break
  ef4. ef8 ef2~ | ef4. d8 c4 bf8 a8 | g1~ | g2 r4 c4 |
  
  \sect "A3"

  c2 df,2~ | df2 bf'4. a8 | gs4. a8 a2~ | a2 bf4 c4 |
  \break
  cs4. d8 d4 d,4 | a'2 a2 | f1 | r2 r4
  \override Parentheses.font-size = #5
  \parenthesize
  c'4 
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
