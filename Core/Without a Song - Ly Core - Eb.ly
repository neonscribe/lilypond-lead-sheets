%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Without a Song"
  subtitle = \instrument
  poet = "William Rose and Edward Eliscu"
  composer = "Vincent Youmans"
  copyright = \markup \small "© 1929 Vincent Youmans, Inc."
}

refrainLyrics = \lyricmode {
With -- out a song, the day would nev -- er end.
With -- out a song, the road would nev -- er bend.
When things go wrong, a man ain't got a friend.
With -- out a song. __

That field of

song. __

I've got my trou -- ble and woe, but sure as I know
the Jor -- dan will roll. __
I'll get a -- long, as long as a song is strong in my soul.

I'll nev -- er know, what makes the rain to fall.
I'll nev -- er know, what makes the grass so tall.
I on -- ly know, there ain't no love at all
with -- out a song. __
}

refrainLyricsTwo = \lyricmode {
_ _ _ corn, would nev -- er see a plow.
That field of corn, would be de -- sert -- ed now.
A man is born, but he's no good no how
with -- out a
}

refrainChords = \chordmode {
  s2.
  
  ef1:maj7 bf2:m7 ef2:7 af1:maj7 df1:7
  ef1:maj7 bf2:m7 ef2:7 af1:maj7 df1:7
  g1:m7 gf1:dim7 f1:m7 bf1:7
  
  ef1:6 c1:7.9+ f1:m7 bf1:7
  
  ef1:6 af1:7 ef1:6 ef1:7
  
  af1:maj7 g2:m7 c2:7 f2:m7 bf2:7 ef1:maj7
  g1:m7 a2:m7.5- d2:7 g2:m7 c2:7 f2:m7 bf2:7
  
  ef1:maj7 bf2:m7 ef2:7 af1:maj7 df1:7
  ef1:maj7 bf2:m7 ef2:7 af1:maj7 df1:7
  g1:m7 gf1:dim7 f1:m7 bf1:7
  ef1:6
  \chordOpenParen{ c1:7.9+ }
  f1:m7
  \chordCloseParen{ bf1:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Fast" 4 = 160

  \partial 2. bf4 bf4 d4 |

  \sectStart "A1,A2"
  
  \repeat volta 2 {
  d1 | r4 bf4 bf4 g4 | g4 ef4 ef2 | r4 g4 g4 bf4 |
  \break
  bf1 | r4 g4 g4 ef4 | ef4 c4 c2 | r4 ef4 ef4 g4 |
  g1 | r4 ef4 ef4 c4 | c4 bf4 bf2 | r4 c4 c4 ef4 |
  \alternative { \volta 1 {
  \break
  ef1~ | ef1 | r1 | r4 bf'4 bf4 d4 |
  } \volta 2 {
  \break
  ef,1~ | ef1 | r1 | r4 ef4 f4 g4 |
  } } }
  \sect "B"
  
  af4 g8 f8 g4 af4 | bf4 af8 g8 af4 bf4 | c4 bf8 af8 bf2~ | bf1 |
  \break
  bf4 a8 g8 a4 bf4 | c4 bf8 a8 bf4 c4 | d4 ef8 c8 f2 | r4 bf,4 bf4 d4 |
  
  \sect "A3"

  d1 | r4 bf4 bf4 g4 | g4 ef4 ef2 | r4 g4 g4 bf4 |
  \break
  bf1 | r4 g4 g4 ef4 | ef4 c4 c2 | r4 ef4 ef4 g4 |
  g1 | r4 ef4 ef4 c4 | c4 bf4 bf2 | r4 c4 c4 ef4 |
  \break  
  ef1~ | ef1 | r1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
