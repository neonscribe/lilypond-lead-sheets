%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Ole Buttermilk Sky"
  subtitle = \instrument
  poet = ""
  composer = "Hoagy Carmichael and Jack Brooks"
  copyright = "© 1946 Morley Music Co."
}

refrainLyrics = \lyricmode {
Ole but -- ter -- milk sky, __ I'm keep -- ing my eye peeled on you. __
What's the good word to -- night? __ Are you gon -- na be mel -- low to -- night? __
Ole but -- ter -- milk sky, __ can't you see my lit -- tle don -- key and me? __
We're as hap -- py as a Christ -- mas tree, head -- in' for the one I love. __
I'm gon -- na pop 'er the ques -- tion, that ques -- tion,
“Do you, dar -- lin', do you do?” __
It -- 'll be eas -- y, so eas -- y if I can on -- ly bank on you. __
Ole but -- ter -- milk sky, __ I'm tell -- ing you why, now you know. __
Keep it in mind to -- night. __ keep a -- brush -- ing those clouds from sight. __
Ole but -- ter -- milk sky, __ don't you fail me when I'm need -- ing you most. __
Hang a moon a -- bove her hitch -- ing post, hitch me to the one I love. __
You can if you try, __ don't tell me no lie. __
Will you be mel -- low and bright to -- night, __ but -- ter -- milk sky? __
}

refrainChords = \chordmode {
  s2.
  
  ef2:maj7 f2:m7 g2:m7 af2:6 ef2:maj7/g f2:m7 ef2:maj7 bf2:sus7
  ef2:6 f2:m7 ef2:6/g bf2:sus7 ef2:6 f2:m7 ef2:6/g bf2:9.5+

  ef2:maj7 f2:m7 g2:m7 af2:6 ef2:maj7/g f2:m7 ef2:maj7 c2:m7
  f1:m7 bf1:7
  
  ef2:6 af2:6 ef2:6 ef2:7
  
  af1:6 ef1:7 af2:6 bf2:7 ef2 ef2:7
  af2:6 df2:9 ef2 c2:m7 f1:7 bf2:7 bf2:sus7

  ef2:maj7 f2:m7 g2:m7 af2:6 ef2:maj7/g f2:m7 ef2:maj7 bf2:sus7
  ef2:6 f2:m7 ef2:6/g bf2:sus7 ef2:6 f2:m7 ef2:6/g bf2:9.5+

  ef2:maj7 f2:m7 g2:m7 af2:6 ef2:maj7/g f2:m7 ef2:maj7 c2:m7
  f1:m7 bf1:7
  
  ef2:6 f2:m7 ef2:6/g bf2:9.5+

  ef2:maj7 f2:m7 g2:m7 af2:6 ef2:maj7 ef2:maj7/d c1:m7 
  f1:7 bf1:sus9 ef2:6 af2:6 ef1:6
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Hollywood Cowboy Swing" 4 = 168

  \partial 2. bf,4 c8 ef8 f4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g1~ | g4 bf,4 c8 ef8 f4 | g2 ef8 c4 bf8~ | bf2 c8 ef8 f4 |
  \break
  ef4 ef4 ef2~ | ef4 bf8 bf8 c8 ef8 f4 | f8 ef8 c4 ef2~ | ef4 bf'4 c8 bf8 c4 |
  
  \sect "A2"
  
  bf1~ | bf4 ef8 c8 bf8 g8 f8 ef8 | g8 g8 g4 g2~ | g4 bf,8 c8 ef8 bf8 c8 ef8 |
  \break
  g4 f4 f2 | g8 bf8 af8 g8 ef8 f4 ef8~ | ef1~ | ef8 ef8 ef8 bf8 ef8 f8 g4 |
  
  \sect "B"
  
  af4 ef4 r8 af4. | bf4 ef,2. | c'8 c8 c8 c8 bf8 af4 bf8~ | bf2 ef,8 f8 g4 |
  \break
  af4 ef4 r8 af4. | bf4 ef,2 r8 bf8 | g'8 g8 g8 g8 f8 ef4 f8~ | f8 r8 bf,4 c8 ef8 f4 |
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "A1" }
  
  g1~ | g4 bf,4 c8 ef8 f4 | g2 ef8 c4 bf8~ | bf2 c8 ef8 f4 |
  \break
  ef4 ef4 ef2~ | ef4 bf8 bf8 c8 ef8 f4 | f8( ef8) c4 ef2~ | ef4 bf'4 c8 bf8 c4 |
  
  \sect "A2"
  
  bf1~ | bf4 ef8 c8 bf8 g8 f8 ef8 | g8 g8 g4 g2~ | g4 bf,8 c8 ef8 bf8 c8 ef8 |
  \break
  g4 f4 f2 | g8 bf8 af8 g8 ef8 f4 ef8~ | ef1~ | ef4 bf'4 c8 bf8 c4 |

  \sect "C"
  
  bf1~ | bf4 bf,4 c8 ef8 f4 | g1~ | g2 bf,8 c8 ef4 |
  \break
  f8 f8 f4 f4 c8 f8~ | f2 g8 ef8 g4 | ef1~ | ef2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
