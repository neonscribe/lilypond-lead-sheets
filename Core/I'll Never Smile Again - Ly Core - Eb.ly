%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I'll Never Smile Again"
  subtitle = \instrument
  poet = ""
  composer = "Ruth Lowe"
  copyright = \markup \small "© 1939 Sun Music Co., Inc."
}

refrainLyrics = \lyricmode {
I'll nev -- er smile a -- gain un -- til I smile at you.
I'll nev -- er laugh a -- gain. What good would it do?
For tears would fill my eyes. My heart would re -- a -- lize that our ro -- mance is through.
I'll nev -- er love a -- gain. I'm so in love with you.
I'll nev -- er thrill a -- gain to some -- bod -- y new.
With -- in my heart I know I will nev -- er start to smile a -- gain un -- til I smile at you.
(I'll nev -- er)
}

refrainChords = \chordmode {
  s2.
  
  f2:m7 b2:9.11+ bf2:sus7 bf2:7.9- ef1:maj7 g2:m7 gf2:dim7
  f2:m7 b2:9.11+ bf1:7.9- ef2:6 af2:9 g2:m7 gf2:7.5-
  
  f2:m7 b2:9.11+ ef1:6 f2:m7 bf2:7.5+ ef4:maj7 \chordSlash 2 d4:9
  g2:maj7 d2:7/a g2/b gf2:dim7 f1:m7 bf4:7 \chordSlash 1 g4:m7 gf4:dim7
  
  f2:m7 b2:9.11+ bf2:sus7 bf2:7.9- ef1:maj7 g2:m7 gf2:dim7
  f2:m7 b2:9.11+ bf1:7.9- ef2:maj7 ef2:6 bf2:m6 a2:7.5-
  
  af1:maj7 df1:7 ef1:maj7 c1:9
  f1:m7 f2:m7 bf2:7.9- ef1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ gf2:dim7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Tommy Dorsey with Frank Sinatra 1939]" 4 = 68
  
  \partial 2. bf4 d4 c4 |
  \bar "||"

  \sectStart "A1"
  
  ef4. f,8 f2 | r8 f8 f8 g8 f4 ef4 | g1~ | g4 bf4 d4 c4 |
  \break
  ef4. f,8 f2~ | f4 g4 \tuplet 3/2 { f4 ef4 d4 } | c1~ | c2. c4 |
  
  \sect "B"
  
  g'4 g4 g4 f4 | ef2. g4 | bf4 bf4 bf4 bf4 | g2. b4 |
  \break
  d4 d4 d2~ | d2 d2 | bf1~ | bf4 bf4 d4 c4 |
  
  \sect "A2"

  ef4. f,8 f2 | r8 f8 f8 g8 f4 ef4 | g1~ | g4 bf4 d4 bf4 |
  \break
  ef4. f,8 f2~ | f4 g4 \tuplet 3/2 { f4 ef4 d4 } | g1~ | g2 r4 ef4 |

  \sect "C"

  g2. f4 | af2. g4 | \tuplet 3/2 { d4 ef4 g4 } bf4 c4 | d2. c4 |
  \break
  ef4. f,8 f2 | r8 c8 d8 ef8 g4 g4 | ef1~ | ef4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  bf'4 d4
  \endParenthesis \parenthesize c4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
