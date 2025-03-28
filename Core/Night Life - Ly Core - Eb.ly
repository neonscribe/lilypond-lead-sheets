%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Night Life"
  subtitle = \instrument
  poet = ""
  composer = "Willie Nelson"
  copyright = \markup \small "© 1960"
}

refrainLyrics = \lyricmode {
When the eve -- ning sun __ goes down, you will find me __ hang -- in' 'round.
The night life __ ain't a good life, __ but it's my life. __
Man -- y peo -- ple __ just like me dream -- in' of __ old used to be's.
The night life __ ain't a good life, __ but it's my life. __
Lis -- ten to the blues they're play -- in', __
Lis -- ten to what the blues __ are say -- in'. __
My, it's just an -- oth -- er scene from the world of bro -- ken dreams.
The night life __ ain't a good life, __ but it's my life. __
}

refrainChords = \chordmode {
  ef2 gf2:7 cf2:maj7 ff2:7
  ef2 gf2:7 cf2:maj7 ff2:7

  ef1 ef1:7 af1 df1:7
  ef2 c2:7.9+ f2:7 bf2:7
  ef2 gf2:7 cf2:maj7 ff2:7
  
  ef1 ef1:7 af1 df1:7
  ef2 c2:7.9+ f2:7 bf2:7
  ef2 af2:7 ef2:7 ef2
  
  ef1:7 ef1:7 ef1:7 ef1:7
  af1:7 ef1:7 c2:7 f2:m7 bf2:7 ef2
  

  ef1 ef1:7 af1 df1:7
  ef2 c2:7.9+ f2:7 bf2:7
  ef2 
  \chordOpenParen{ af2:7 }
  ef2
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow Blues" 4 = 84

  \xTextMark \markup{ \bold \box "Intro" }
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq bf8 c8 |

  \sect "A1"
  
  bf8 g4 ef8~ ef4 ef'4 | df2. c8 c8 | bf8 af8~ af2  ef8 c8 | cf2. r8 bf8 |
  \break
  g'8 g8~ g2 af8 g8 | f8 bf,4.~ bf4~ bf8 bf'16 g16 | bf8 g8~ g2. | r2 r4 bf8 c8 |
  
  \sect "A2"
  
  bf8 g8~ g2 ef8 ef'8 | df2. c8 c8 | bf2~ bf8 af8 ef8 c8 | cf2. r8 bf8 |
  \break
  g'8 g8~ g2 af8 g8 | f8 bf,4.~ bf4~ bf8 d16 f16 | f8 ef8~ ef2. | r1 |
  
  \sect "B"
  
  ef'8 bf8 c8 bf8 df4. bf8 | a8 bf8~ bf2. | r1 | r1 |
  \break
  \tuplet 3/2 { bf8 bf8 bf8 } \tuplet 3/2 { af8 bf8 af8~ } af4. af8 | g8 bf,8~ bf2. | r1 | r2 r4 bf8 c8 |
  
  \sect "A3"
  
  bf'2~ bf8 g8 ef8 ef'8 | df2. c8 c8 | bf2~ bf8 af8 ef8 c8 | cf2. r8 bf8 |
  \break
  g'8 g8~ g2 af8 g8 | f8 bf,4.~ bf4~ bf8 d16 f16 | f8 ef8~ ef2.~ | ef2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
