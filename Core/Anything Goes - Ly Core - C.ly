%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Anything Goes"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small { \now " " "© 1934 Warner Bros Inc." }
}

refrainLyrics = \lyricmode {
In old -- en days, a glimpse of stock -- ing
was looked on as some -- thing shock -- ing.
Now, heav -- en knows, __
An -- y -- thing goes. __
Good auth -- ors, too, who once knew bet -- ter words
now on -- ly use four let -- ter words
writ -- ing prose, __
An -- y -- thing goes. __

The world __ has gone mad to -- day, __
And good's bad to -- day, __
And black's white to -- day, __
And day's night to -- day, __
When most guys to -- day, __
That wo -- men prize to -- day, __
Are just sil -- ly gi -- go -- los. __
So though I'm not a great ro -- man -- cer
I know that you're bound to ans -- wer
when I pro -- pose, __
An -- y -- thing goes. __

(In)
}

refrainChords = \chordmode {
  g4:7
  
  c1 c1 c2. a4*3:m c2:7
  d4:m7 \chordSlash 2 c4 d2:m7 d2:m7.5- c2 f2:6 c4 g2.:aug

  c1 c1 c2. a4*3:m c2:7
  d4:m7 \chordSlash 2 c4 d2:m7 d2:m7.5- c2 f2:6 c4 b2.:7
  
  e1 b4:9 b2.:7 e1:7 b1:7 
  e1:m e1:m7 cs4:dim7 c4:dim7 cs4:dim7 g4*5:7 
  
  c1 c1 c2. a4*3:m c2:7
  d4:m7 \chordSlash 2 c4 d1:m7 c4*6 
  \chordOpenParen{ ef4:dim7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra 1956]" 4 = 118

  \partial 4 g4 |

  \sectNoBreak "A1"
  
  g4 a4 e4 g4 | a4 g8 a8~ a8 g8 e4 | g8 a4 e8 g4 a8 c8~ | c8 a8 c4 d4 e4 |
  \break
  d1~ | d4 r4 c8 c8 c4 | c1~ | c4 r4 r4 g4 |
  
  \sect "A2"

  g4 a4 e4 g4 | a4 g8 a8~ a8 g8 e4 | g8 a4 e8 g4 a8 c8~ | c8 a8 c4 d4 e4 |
  \break
  d1~ | d4 r4 c8 c8 c4 | c1 | r4 b8 b8~ b8 b8 b4 |
  
  \sect "B"
  
  b4 b8 b8~ b8 b8 b4 | cs4 b8 b8~ b8 b8 b4 | d4 b8 b8~ b8 b8 b4 | ds4 b8 b8~ b8 b8 b4 |
  \break
  e4 b8 b8~ b8 as8 b8 as8 | b4 e,8 e8~ e8 ds8 e4 | e8 e8 ds4 e4 g4~ g2 r4 g4 |
  
  \sect "A3"

  g4 a4 e4 g4 | a4 g8 a8~ a8 g8 e4 | g8 a4 e8 g4 a8 c8~ | c8 a8 c4 d4 e4 |
  \break
  d1~ | d4 r4 e8 d8 c4 | c1~ | c4 r4 r4
  \override Parentheses.font-size = #5
  \parenthesize g4
  |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
