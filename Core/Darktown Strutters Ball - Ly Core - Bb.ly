%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Darktown Strutters Ball"
  subtitle = \instrument
  poet = ""
  composer = "Shelton Brooks"
  copyright = \markup \small { \now " " "© 1917 Leo Feist Inc." }
}

refrainLyrics = \lyricmode {
  I'll be down to get you in a tax -- i Hon -- ey,
  You bet -- ter be read -- y a -- bout half- past eight.
  Now Dear -- ie, don't be late, I want to be there when the band starts play -- ing,
  Re -- mem -- ber when we get there, Hon -- ey, The two- steps I'm goin' to have 'em all.
  Goin' to dance out both my shoes, When they play the Jel -- ly Roll Blues,
  To -- mor -- row night at the Dark -- town Strut -- ters Ball.
}

refrainFHChords = \chordmode {
  s4
  
  bf1 bf2 g2:7 c1:7 c1:7
  f1:7 f1:7 bf2 bf2:dim7 c2:m7 f2:7
  bf1 bf2 g2:7 c1:7 c1:7
  ef1 e1:dim7 bf2 a4:7 af4:7 g1:7
  c1:7 f1:7 bf2 bf2:dim7 c2:m7 f2:7
}

refrainiRealChords = \chordmode {
  s4
  
  bf1:6 bf1:6 c1:7 c1:7
  f1:7 f1:7 bf1:6 f1:7
  bf1:6 bf1:6 c1:7 c1:7
  ef1:6 e1:dim7 bf1:6 g1:7
  c1:7 f1:7 bf1:6 bf1:6
}

refrainChords = \refrainiRealChords

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast Swing [Orignal Dixieland Jazz Band 1917]" 4 = 202
  
  \partial 4 d8 c8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A" }
  
  bf4 d4 f8 f8 g8 f8 | bf4 g4 f8 d4 d8 | 
  \break
  c8 c8 e8 g8~ g8 fs8 g8 a8 | bf8 a4 g8~ g4 r4 |
  \break
  r4 f4 g4 a4 | bf8 a4 g8~ g8 f8 g8 a8 | bf4 g4 bf4 g4 | bf4 a4 g8 f4 d8 |
  
  \sect "B"
  
  bf4 d4 f4 g4 | bf4 g4 f8 d4 d8 | c4 e4 g4 a8 a8 | bf8 a4 g8~ g4 bf8 b8 |
  \break
  c4 bf4 c8 bf4 a8~ | a4 r4 r4 g8 a8 | bf4 a8 bf8~ bf8 fs8 a4 | g4 r4 r4 f4 |
  \break
  g4 a8 bf8~ bf8 d4 bf8 | c4 a4 g8 f4 bf8~ | bf1~ | bf4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
