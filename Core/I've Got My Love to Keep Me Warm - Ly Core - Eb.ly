%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I've Got My Love to Keep Me Warm"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = \markup \small { \now " " "© 1936 Irving Berlin" }
}

refrainLyrics = \lyricmode {
The snow is snow -- ing, the wind is blow -- ing
But I can weath -- er the storm
What do I care how much it may storm?
I've got my love to keep me warm

I can't re -- mem -- ber a worse De -- cem -- ber
Just watch those ic -- i -- cles form
What do I care if i -- ci -- cles form?
I've got my love to keep me warm

Off with my o-- ver -- coat, off with my gloves
I need no o -- ver -- coat, I'm burn -- ing with love

My heart's on fi -- re, the flame grows high -- er
So I will weath -- er the storm
What do I care how much it may storm?
I've got my love to keep me warm
}

refrainChords = \chordmode {
  s4
  
  ef1:6 gf1:dim7 f1:m7 bf1:7
  a1:m7.5- d1:7.9- a1:m7.5- d2:7.9- d2:7.9-/fs
  f1:m7 bf1:7 f1:m7 bf1:7
  g2:m7 c2:7.9- f2:m7 bf2:7 ef2:6 c2:m7 f2:m7 bf2:7

  ef1:6 gf1:dim7 f1:m7 bf1:7
  a1:m7.5- d1:7.9- a1:m7.5- d2:7.9- d2:7.9-/fs
  f1:m7 bf1:7 f1:m7 bf1:7
  g2:m7 c2:7.9- f2:m7 bf2:7 ef1:6 a2:m7.5- d2:7.9-
  
  g1:m7 a2:m7.5- d2:7.5+ g1:m7 c1:7
  f1:m7 g2:7 c2:7 f1:m7 bf1:7

  ef1:6 gf1:dim7 f1:m7 bf1:7
  a1:m7.5- d1:7.9- a1:m7.5- d2:7.9- d2:7.9-/fs
  f1:m7 bf1:7 f1:m7 bf1:7
  g2:m7 c2:7.9- f2:m7 bf2:7 ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra 1960]" 4 = 135

  \partial 4 bf,4 |

  \sectStart "A1"
  
  ef2 ef2 | d4 df2 c4 | f2 f2 | e4 ef2 d4 |
  \break
  g2 g2 | fs4 a4 c4 ef4~ | ef1~ | ef2 d8 ef8 c4 |
  \break
  bf2 bf2 | a4 bf4 g4 f4~ | f1~ | f1 |
  \break
  r8 bf4. bf4 bf4 | c4 af4 f4 d8 ef8~ | ef1~ | ef2 r4 bf4 |
  
  \sect "A2"

  ef2 ef2 | d4 df2 c4 | f2 f2 | e4 ef2 d4 |
  \break
  g2 g2 | fs4 a4 c4 ef4~ | ef1~ | ef2 d8 ef8 c4 |
  \break
  bf2 bf2 | a4 bf4 g4 f4~ | f1~ | f1 |
  \break
  r8 bf4. bf4 bf4 | c4 af4 f4 d8 ef8~ | ef1~ | ef2 r2 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBar "B"
  
  d2 g4 bf4 | d8 d4 d8~ d2 | d2 d8 d,4 e8~ | e2. r4 |
  \break
  c'2 c8 c,4. | d8 d4 e8~ e2 | r8 f4. f8 g8 f4 | bf2. bf,4 |
  
  \sect "A3"

  ef2 ef2 | d4 df2 c4 | f2 f2 | e4 ef2 d4 |
  \break
  g2 g2 | fs4 a4 c4 ef4~ | ef1~ | ef2 d8 ef8 c4 |
  \break
  bf2 bf2 | a4 bf4 g4 f4~ | f1~ | f1 |
  \break
  r8 bf4. bf4 bf4 | c4 af4 f4 d8 ef8~ | ef1~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
