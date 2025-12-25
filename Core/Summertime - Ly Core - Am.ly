%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Summertime"
  subtitle = \instrument
  poet = "Du Bose Heyward"
  composer = "George Gershwin"
  copyright = \markup \small { \now " " "© 1935 Gershwin Publishing Corp." }
}

refrainLyrics = \lyricmode {
  Sum -- mer time __ and the liv -- in' is eas -- y __
  Fish are jump -- in' __ and the cot -- ton is high. __
  Oh, your dad -- dy's rich, __ and your ma is good look -- in'. __
  So hush, lit -- tle ba -- by, don't you cry. __
  One of these morn -- in's
  You're goin' to rise __ up sing -- in, __
  Then you'll spread your wings __ and you'll take __ the sky. __
  But till that morn -- in' __ there's a no -- thin' can harm you __
  With Dad -- dy and Mam -- my stand -- in' by. __
}

refrainFiveFiveSevenChords = \chordmode {
  s2

  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 a2:7
  d2:m7 g2:7 c2:7 f2:7 b1:m7.5+ e1:7.9-

  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 d2:m9 g2:7.9-
  c2:maj7 a2:m7 f2:13 e2:7.5+ a2:m7 d2:9 a2:m7 d2:9

  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 a2:7
  d2:m7 g2:7 c2:7 f2:7 b1:m7.5+ e1:7.9-

  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 d2:m9 g2:7.9-
  c2:maj7 a2:m7 f2:13 e2:7.5+ a2:m7
  \chordOpenParen{ d2:9 }
  a2:m7
  \chordCloseParen{ d2:9 }

}

refrainMJQChords = \chordmode {
  s2

  a2:m7 c2:7/g f2:7 e2:7 a2:m7 d2:7 g2:7 c2:7
  f1:7 b1:7.9+ e2:7 b2:7 e2:7.5+ bf2:7

  a2:m7 c2:7/g f2:7 e2:7 a2:m7 a2:m7/g fs2:m7.5- f2:m7 
  c2:maj7/e a2:m7 d2:7 e2:7 a2:m7 c2:7/g f2:7 e2:7

  a2:m7 c2:7/g f2:7 e2:7 a2:m7 d2:7 g2:7 c2:7
  f1:7 b1:7.9+ e2:7 b2:7 e2:7.5+ bf2:7

  a2:m7 c2:7/g f2:7 e2:7 a2:m7 a2:m7/g fs2:m7.5- f2:m7 
  c2:maj7/e a2:m7 d2:7 e2:7 a2:m7
  \chordOpenParen{ c2:7/g }
  f2:7 
  \chordCloseParen{ e2:7 }
}

refrainColoradoChords = \chordmode {
  s2
  
  a1:m a1:m a1:m a1:m
  d1:m d1:m b1:m7.5- e1:7

  a1:m a1:m a1:m d2:m7 g2:7
  c2:maj7 f2:7 b2:m7.5- e2:7 a1:m b2:m7.5- e2:7

  a1:m a1:m a1:m a1:m
  d1:m d1:m b1:m7.5- e1:7

  a1:m a1:m a1:m d2:m7 g2:7
  c2:maj7 f2:7 b2:m7.5- e2:7 a1:m
  \chordOpenParen{ b2:m7.5- }
  \chordCloseParen{ e2:7 }
}

refrainSimpleChords = \chordmode {
  s2
  
  a2:m7 a2:13 a2:m7 a2:13 a2:m7 a2:13 a2:m7 a2:13
  d2:m7 d2:sus6 d2:7 d2:sus6 e1:7 e1:7

  a2:m7 a2:13 a2:m7 a2:13 a2:m7 a2:13 a2:m7 a2:13
  c2/g a2:m7/c b2:m7.5- e2:7 a2:m7 a2:13 a2:m7 e2:7

  a2:m7 a2:13 a2:m7 a2:13 a2:m7 a2:13 a2:m7 a2:13
  d2:m7 d2:sus6 d2:7 d2:sus6 e1:7 e1:7

  a2:m7 a2:13 a2:m7 a2:13 a2:m7 a2:13 a2:m7 a2:13
  c2/g a2:m7/c b2:m7.5- e2:7 a2:m7 a2:13 a2:m7 e2:7
}

refrainGilEvansChords = \chordmode {
  s2
  
  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 
  d2:m7 g2:7 c2:9 f2:9 e2:9 b2:7.5+ e2:9 e2:7.9-
 
  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 
  c2:maj7 f2:9 b2:m7.5- e2:7.5+ a2:m7 d2:9 a2:m7 d2:9

  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 
  d2:m7 g2:7 c2:9 f2:9 e2:9 b2:7.5+ e2:9 e2:7.9-
 
  a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 a2:m7 d2:9 
  c2:maj7 f2:9 b2:m7.5- e2:7.5+ a2:m7
  \chordOpenParen{ d2:9 }
  a2:m7
  \chordCloseParen{ d2:9 }
}

refrainFreeJazzLessonsChords = \chordmode {
  s2
  
  a1:m7 b2:m7.5- e2:7.9- a1:m7 a1:7
  d1:m7 d1:m7 b1:m7.5- e1:7.9-
  a1:m7 b2:m7.5- e2:7.9- a1:m7 d2:m7 g2:7
  c1:maj7 b2:m7.5- e2:7.9- a1:m7 b2:m7.5- e2:7.9-

  a1:m7 b2:m7.5- e2:7.9- a1:m7 a1:7
  d1:m7 d1:m7 b1:m7.5- e1:7.9-
  a1:m7 b2:m7.5- e2:7.9- a1:m7 d2:m7 g2:7
  c1:maj7 b2:m7.5- e2:7.9- a1:m7
  \chordOpenParen{ b2:m7.5- }
  \chordCloseParen{ e2:7.9- }
}

refrainVanillaChords = \chordmode {
  s2
  
  a1:m e1:7 a1:m a2:m a2:7
  d1:m d1:m e1:7 e1:7
  a1:m e1:7 a1:m d2:m7 g2:7
  c1 b2:m7.5- e2:7 a1:m e1:7

  a1:m e1:7 a1:m a2:m a2:7
  d1:m d1:m e1:7 e1:7
  a1:m e1:7 a1:m d2:m7 g2:7
  c1 b2:m7.5- e2:7 a1:m
  \chordInsideParens{ e1:7 }
}

refrainChords = #(if (and (defined? 'useSimpleChords) useSimpleChords)
		  refrainSimpleChords
		  (if (and (defined? 'useGilEvansChords) useGilEvansChords)
		   refrainGilEvansChords
		   refrainFreeJazzLessonsChords))

refrainKey = a

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Miles Davis and Gil Evans 1959]" 4 = 110
  
  \partial 2 e4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  e1~ | e4 d8 c8 d8 e8 c4 | a2 e2~ | e4 r4 e'4 c4 |
  d8 d4.~ d2 | r4 c8 a8 c8 a8 c4 | b1~ | b2 r8 e4 c8 |
  
  \sect "B1"
  
  e8 e4 e8~ e2 | r4 d8 c8 d8 e8 c4 | a2 e2~ | e2 r4 e4 |
  g4 e8 g8 a4 c4 | e8( d4.) c2 | a1~ | a4 r4 \tuplet 3/2 { e'4 e4 c4 } |

  \sect "A2"
  
  e4 e2. | r8 e8 d8 c8 d8( e8) c4 | a2 e2~ | e4 r4 e'4 c4 |
  d8 d4 d8~ d2 | r4 c8 a8 c8( a8) c4 | b1~ | b2 r8 e8 e8 c8 |
  
  \sect "B2"
  
  e8 e4.~ e2 | r4 d8 c8 d8 e8 c4 | a2 e2~ | e2 r4 e4 |
  g4 e8 g8 a4 c4 | e8( d4.) c2 | a1~ | a2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
