%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "The Lady Is a Tramp"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1937 Chappell & Co., Inc."
}

refrainLyrics = \lyricmode {
I get too hun -- gry for din -- ner at eight, __
I like the  thea -- tre but nev -- er come late. __
I nev -- er both -- er with peo -- ple I hate. __
That's why the la -- dy is a tramp.
_
I like the free fresh wind in my hair, __
Life with -- out care. __ I'm broke, __ it's oke. __

Hate Cal -- i for -- nia, it's cold and it's damp, __
That's why the la -- dy is a tramp.
}

refrainLyricsTwo = \lyricmode {
I don't like crap games with Ba -- rons and Earls, __
Won't go to Har -- lem in er -- mine and pearls. __
Won't dish the dirt with the rest of the girls, __
That's why the la -- dy is a _ tramp.
}

refrainChords = \chordmode {
  c1:6 ef1:9 d1:m7 g1:7.9-
  c1:6 ef1:9 d1:m7 g1:7.9-
  c1:sus7 c1:7 f1:maj7 bf1:9
  c2:maj7 a2:7.9- d2:m7 g2:7.9-
  
  c1:6 d2:m7 g2:7
  
  c1:6 c1:7
  
  f1:maj7 g1:7 e1:m7 a1:m7
  d1:m7 g1:7 e2:m7 a2:7 d2:m7 g2:7.9-
  
  c1:6 ef1:9 d2:m7 d2:m7/c b2:m7.5- e2:7.9-
  a1:m7 d2:m7 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra 1957]" 4 = 128

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r4 c'4 b4 c4 | bf4 bf2 bf4 | a4 f4 a4 b4~ | b1 |
  \break
  r4 c4 b4 c4 | bf4 bf2 bf4 | a4 f4 a4 b4~ | b1 |
  \break
  r4 c4 g4 e4 d4 d2 d4 | c4 d4 e4 f4~ |
  \break
  f1 | r4 e4 e4 e4 | d4 d4 d4 d4 |
  \break
  \alternative { \volta 1 {
  c1 | r1 |
  } \volta 2 {
  c1 | r4 c4 e4 g4 |
  } } }
  \sect "B"
  
  a1 | b1 | b4 g4 e4 a4~ | a1 |
  \break
  a4 f4 d4 g4~ | g1 | r8 g4 a8~ a2 | r8 a4 b8~ b2 |
  
  \sect "A3"
  
  r4 c4 b4 c4 | bf4 bf2 bf4 | a4 f4 a4 b4~ | b1 |
  \break
  r4 c4 c4 c4 | d4 d4 d4 d4 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
