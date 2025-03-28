%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Back in Your Own Backyard"
  subtitle = \instrument
  poet = ""
  composer = "Al Jolson, Billy Rose, Dave Dreyer"
  copyright = \markup \small "© 1927 Bourne Co."
}

refrainLyrics = \lyricmode {
The bird with fea -- thers of blue, __ is wait -- ing for you __
back in your own __ back -- yard. __
You'll see your cas -- tle in Spain, __ through your win -- dow pane __
back in your own __ back -- yard. __
Oh you can go to the East, go to the West,
but some -- day you'll come __ wear -- y at heart back where you start -- ed from. __
You'll find your hap -- pi -- ness lies, __ right un -- der your eyes __
back in your own __ back -- yard
}

refrainChords = \chordmode {
  s2.
  
  g1:maj7 b2:m7 bf2:m7 a1:m7 a1:m7
  d1:7 d2:7 d2:7.5+ g2:6 bf2:9.11+ a2:m7 d2:7

  g1:maj7 b2:m7 bf2:m7 a1:m7 a1:m7
  d1:7 d1:7 g1:6 g2:6 fs2:7.5-
  
  b1:m7 b1:m7 e1:7 e1:7
  a1:7 a1:7 d1:7 d2:7 af2:9.11+


  g1:maj7 b2:m7 bf2:m7 a1:m7 a1:m7
  d1:7 d1:7 g1:6  
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Ruth Etting 1928]" 4 = 118

  \partial 2. d'4 d4 d4 |
  \bar "||"

  \sectNoBarNoBreak "A1"
  
  d4 ds,4 e4 d'4~ | d2 df2 | c4 ds,4 e4 c'4~ | c1 |
  \break
  b4 cs,4 d4 a'4~ | a2 fs2 | e1~ | e4 d'4 d4 d4 |
  
  \sect "A2"

  d4 ds,4 e4 d'4~ | d2 df2 | c4 ds,4 e4 c'4~ | c1 |
  \break
  b4 cs,4 d4 a'4~ | a2 b2 | g1~ | g4 d'4 d4 d4 |
  
  \sect "B"
  
  d4 b8 cs8 d2 | d4 b8 cs8 d4 d4 | d4 cs4 b4 e,4~ | e1 |
  \break
  b'4 g8 a8 b2 | b4 g8 a8 b4 e4 | a,1~ | a4 d4 d4 d4 |
  
  \sect "A3"

  d4 ds,4 e4 d'4~ | d2 df2 | c4 ds,4 e4 c'4~ | c1 |
  \break
  b4 cs,4 d4 a'4~ | a2 b2 | g1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
