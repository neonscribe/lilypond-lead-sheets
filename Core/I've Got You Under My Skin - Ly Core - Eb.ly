%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I've Got You Under My Skin"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small "© 1936 Chappell & Co."
}

refrainLyrics = \lyricmode {
I've got you __ un -- der my skin. __
I've got you __ deep in the heart of me. __
So deep in my heart __ you're real -- ly a part of me. __
I've got you __ un -- der my skin. __
I tried so __ not to give in. __
I said to my -- self, “This af -- fair nev -- er will go so well.” __
But why should I try to re -- sist when, dar -- ling, I know so well __
I've got you __ un -- der my skin. __
I'd sac -- ri -- fice an -- y -- thing, come what might,
for the sake of hav -- ing you near.
In spite of a warn -- ing voice that comes in the night
and re -- peats and re -- peats in my ear:
“Don't you know, lit -- tle fool, __ you nev -- er can win. __
Use your men -- tal -- i -- ty. __ Wake up to re -- al -- i -- ty.” __
But each time I do, just the thought of you makes me stop, be -- fore I be -- gin,
'cause I've got you __ un -- der my skin.
}

refrainChords = \chordmode {
  s4
  
  f1:m7 bf1:7 ef1:maj7 c1:m7
  f1:m7 bf1:7 ef1:maj7 c1:m7
  f1:m7 bf1:7 ef1:maj7 c1:m7
  f1:m7 bf1:7 ef1:maj7 ef1:6
  
  f1:m7 bf1:7 ef1:maj7 c1:m7
  f1:m7.5- bf1:7.9- ef1:maj7 ef1:maj7
  d1:m7 g1:7 c1:maj7 c1:maj7
  f1:m7 bf1:7 ef1:maj7 ef1:6
  
  f1:m7 bf2:7 bf2:7/af g1:m7 c1:7.9-
  f1:m7 bf2:7 bf2:7/af g2:m7 gf2:7 f2:m7 bf2:7
  a1:m7.5- af1:dim7 g1:m7 c1:7
  f1:m7 bf1:7 ef1:maj7 bf2:m7 ef2:7
  
  af1:maj7 df1:9 ef1:6 g2:m7.5- c2:7
  f1:m7 bf1:7.9- ef1:6

  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 127

  \partial 4 bf4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c2 c2~ | c2 bf8 af4 g8 | g1~ | g2 r4 bf4 |
  \break
  c2 c2~ | c2 bf8 af4 g8 | f4. g8 g2~ | g2. g4 |
  \break
  af4 af8 af8 af2~ | af4 g4 g8 f4 ef8 | d4. c8 c2~ | c2 r4 d4 |
  \break
  ef2 ef2~ | ef2 d8 c4 bf8 | bf1~ | bf2 r4 bf'4 |
  
  \sect "B"
  
  c2 c2~ | c2 bf8 af4 g8 | g1~ | g2. bf4 |
  \break
  \tuplet 3/2 { cf4 cf4 cf4  } \tuplet 3/2 { cf4 cf4 cf4 } | cf2 bf8 af4 g8 |
  fs4. g8 g2~ | g2. g4 |
  \break
  \tuplet 3/2 { a4 a4 a4 } \tuplet 3/2 { a4 a4 a4 } | a4 g4 g8 f4 e8 |
  ds4. e8 e2~ | e2. e4 |
  \break
  f2 f2~ | f2 ef8 d4 c8 | bf1~ | bf2 r4 ef4 |
  
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "C" }
  
  \tuplet 3/2 { f4 f4 f4 } \tuplet 3/2 { f4 f4 f4 } |
  \tuplet 3/2 { f2 f4 } \tuplet 3/2 { f4 g4 af4 } |
  \tuplet 3/2 { bf2 bf4 } \tuplet 3/2 { bf4 bf4 bf4 } |
  \tuplet 3/2 { bf2 bf4 } \tuplet 3/2 { bf4 af4 g4 } |
  \break
  \tuplet 3/2 { f2 f4 } \tuplet 3/2 { f2 f4 } |
  \tuplet 3/2 { f4 f4 f4 } \tuplet 3/2 { f4 g4 af4 } |
  \tuplet 3/2 { bf4 bf4 bf4 } \tuplet 3/2 { bf4 bf4 bf4 } |
  bf2~ \tuplet 3/2 { bf4 c4 d4 } |
  \break
  ef4 ef8 ef8 ef2~ | ef4 d4 d8 c4 bf8 | bf1~ | bf2 d8 c4 bf8 |
  \break
  bf4. bf8 bf2~ | bf4 d4 d8 c4 bf8 | bf4. bf8 bf2~ | bf2. bf8 b8 |
  

  \sect "D"
  
  c4. c8 c4 d8 ef8 | f4. f8 f4 ef8 d8 | c4 r8 bf8 ef,8 f4 g8 | bf2. b,8 c8 |
  \break
  g'2 g2~ | g2 g8 f4 ef8 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
