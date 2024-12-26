%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "I'll See You in My Dreams"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Isham Jones"
  copyright = "© 1924 Leo Feist Inc."
}

verseLyrics = \lyricmode {
Tho' the days are long, 
Twi -- light sings a song, 
Of the hap -- pi -- ness that used to be; 
Soon my eyes will close, 
Soon I'll find re -- pose, 
And in dreams you're al -- ways near to me.
}
 
refrainLyrics = \lyricmode {
I'll see you in my dreams, 
Hold you in my dreams, 
Some -- one took you out of my arms, 
Still I feel the thrill of your charms. 
Lips that once were mine, 
Ten -- der eyes that shine, 
They will light my way to -- night, 
I'll see you in my dreams.
}

refrainChords = \chordmode {
  s2
  
  bf1 bf1 bf1:m6 bf1:m6
  f1 e1:7 f1 f1
  
  d1:7 d1:7 d1:7 d1:7
  g1:7 g1:7 c1:7 c1:7

  bf1 bf1 bf1:m6 bf1:m6
  f1 e1:7 f1 f1
  
  d1:7 d1:7 a1:7 d2:m a2:m7
  bf1 bf2:m6 c2:13 f1
  \chordOpenParen{ bf2 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 150
  
  \partial 2 e2 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  d2 f2 | g2 a2 | g1~ | g2 r2 |
  \break
  a2 c2 | d2 e2 | d1~ | d2 r2 |
  
  \sect "B"
  
  d2 d,2 | e2 fs2 | c'4 a4 c4 a4~ | a1 |
  \break
  a2 d,2 | e2 f2 | a4 g4 a4 g4~ | g1 |
  
  \sect "A2"
  
  d2 f2 | g2 a2 | g1~ | g2 r2 |
  \break
  a2 c2 | d2 e2 | d1~ | d2 r2 |
  
  \sect "C"
  
  ef2 d2 | c2 r4 d,4 | a'2 g2 | f2 r4 e4 |
  \break
  
  d2 f2 | g2 a2 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
