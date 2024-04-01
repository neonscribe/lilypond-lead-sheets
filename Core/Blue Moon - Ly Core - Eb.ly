%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Blue Moon"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = "© 1934 Metro-Goldwyn-Mayer Corp."
}

refrainLyrics = \lyricmode {
Blue moon, you saw me stand -- ing a -- lone __
with -- out a dream in my heart, __ with -- out a love of my own. __
Blue moon, you knew just what I was there __ for. __
You heard me say -- ing a pray'r __ for __
some -- one I real -- ly could care __ for. __
And then there sud -- den -- ly ap -- peared be -- fore me __
the on -- ly one my arms could ev -- er hold.
I heard some -- bod -- y whis -- per, “Please a -- dore me,” __
and when I looked, the moon had turned to gold.
Blue moon, now I'm no long -- er a -- lone, __
with -- out a dream in my heart, __
with -- out a love of my own. __
}

refrainNewRealChords = \chordmode {
  \chordInsideParens{ bf4:7 }
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7 
  ef2:maj7 c2:m7 f2:m7 bf2:sus9 ef2:maj7 c2:m7 f2:m7 bf2:7
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7 
  ef2:maj7 c2:m7 f2:m7 bf2:sus9 ef1:6 \chordInsideParens{ c1:m7 }
  
  f2:m7 bf2:7 ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 \chordInsideParens{ a2:9.11+ }
  af2:m7 df2:7 gf2:maj7 gf2:6 bf2/f f2:7 bf2:sus7 bf2:7
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7 
  ef2:maj7 c2:m7 f2:m7 bf2:sus9 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainHLChords = \chordmode {
  s4
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7 
  ef2:maj7 c2:m7 f2:m7 f2:m7/bf ef2:6 af2/ef ef2:6 bf2:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7 
  ef2:maj7 c2:m7 f2:m7 f2:m7/bf ef2:6 af2/ef ef2:6 c2:m7

  f2:m7 bf2:7 ef1:6 f2:m7 bf2:7 ef1:6 
  af2:m7 df2:7 gf1:maj7 bf2/f f2:7 f2:m7/bf bf2:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7
  g4:sus7 df4:9.11+ c2:7.9- f2:m7 f2:m7/bf ef2:6 af2/ef ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainChords = \refrainNewRealChords

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120
  
  \partial 4 bf4 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  bf1 | r8 af8 bf8 c8 bf8 bf8 af8 bf8~ | bf1 | r8 f8 g8 af8 g8 g8 f8 g8~ |
  g1 | r8 ef8 f8 g8 ef8 ef8 ef8 ef8~ | ef1 | r2 r4 bf'4 |
  
  \bar "||"

  \mark \markup{ \box "A2" }
  
  bf1 | r8 af8 bf8 c8 bf8 bf8 af8 bf8~ | bf8 bf4.~ bf2 | r8 f8 g8 af8 g8 g8 f8 g8~ |
  g8 g4.~ g2 | r8 ef8 f8 g8 ef8 ef8 ef8 ef8~ | ef8 ef4.~ ef2 | r2 r8 ef8 ef8 ef8 |
  
  \bar "||"

  \mark \markup{ \box "B" }
  
  f8 f8 f8 f8 g4 g4 | ef8 ef4.~ ef8 ef8 ef8 ef8 | f8 f8 f8 f8 g4 g4 | ef2 r8 ef8 ef8 ef8 |
  ef8 ef8 ef8 ef8 f4 f4 | df8 df4.~ df8 df8 df8 df8 | d8 d8 d8 d8 f4 f4 | bf2. bf4 |

  \bar "||"

  \mark \markup{ \box "A3" }

  bf1 | r8 af8 bf8 c8 bf8 bf8 af8 bf8~ | bf1 | r8 f8 g8 af8 g8 g8 f8 g8~ |
  g1 | r8 ef8 f8 g8 ef8 ef8 ef8 ef8~ | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
