%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Perdido"
  subtitle = \instrument
  poet = "H.J Lengsfelder and Ervin Drake"
  composer = "Juan Tizol"
  copyright = "© 1942 Tempo Music, Inc."
}

refrainLyrics = \lyricmode {
Per -- di -- do, __
I look for my heart, it's per -- di -- do, __
I lost it way down in Tor -- ri -- do __
while chanc -- ing a dance __ fi -- es -- ta. __

Bo -- le -- ro, __
She glanced as she danced a Bo -- le -- ro, __
I said, tak -- ing off my som -- bre -- ro, __
“Let's meet for a sweet __ si -- es -- ta.” __

High was the sun when we first __ came close. __
Low was the moon when we said __ “A -- dios,”
Per -- di -- do, __
Since then has my heart been per -- di -- do, __
I know I must go to Tor -- ri -- do, __
That yearn -- ing to lose __ per -- di -- do. __
}

refrainChords = \chordmode {
  s8
  
  c1:m7 f1:7 bf1:6 d2:m7 df2:7
  c1:m7 f1:7 bf1:6 d2:m7 df2:7

  c1:m7 f1:7 bf1:6 d2:m7 df2:7
  c1:m7 f1:7 bf1:6 bf1:6
  
  d1:7 d1:7 g1:7 g1:7 c1:7 c1:7 f1:7 f1:7

  c1:m7 f1:7 bf1:6 d2:m7 df2:7
  c1:m7 f1:7 bf1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 138

  \partial 8 c8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  ef8 f4.~ f4 r8 c8 | ef8 f4 c8 ef8 f4 bf,8 |
  d8 f4.~ f4 r8 bf,8 | d8 f4 bf,8 d8 f4 c8 |
  \break
  ef8 f4.~ f4 r8 c8 | ef8 f8 d'8 c8~ c4. f,8 |
  g8 bf4.~ bf2 | r2 r4 r8 c,8 |

  \sect "A2"
  
  ef8 f4.~ f4 r8 c8 | ef8 f4 c8 ef8 f4 bf,8 |
  d8 f4.~ f4 r8 bf,8 | d8 f4 bf,8 d8 f4 c8 |
  \break
  ef8 f4.~ f4 r8 c8 | ef8 f8 d'8 c8~ c4. f,8 |
  g8 bf4.~ bf2~ | bf2 r2 |

  \sect "B"
  
  d1 | \tuplet 3/2 { a4 b4 c4 } d4 d8 e8~ | e1 | b8 a4.~ a2 |
  \break
  c1 | \tuplet 3/2 { g4 a4 bf4 } c4 c8 d8~ | d1 | a8 g4.~ g4 r8 c,8 |
  
  \sect "A3"

  ef8 f4.~ f4 r8 c8 | ef8 f4 c8 ef8 f4 bf,8 |
  d8 f4.~ f4 r8 bf,8 | d8 f4 bf,8 d8 f4 c8 |
  \break
  ef8 f4.~ f4 r8 c8 | ef8 f8 d'8 c8~ c4. f,8 |
  g8 bf4.~ bf2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
