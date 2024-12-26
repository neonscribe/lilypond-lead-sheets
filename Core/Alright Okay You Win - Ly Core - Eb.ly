%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Alright, Okay, You Win"
  subtitle = \instrument
  poet = ""
  composer = "Sid Wyche and Mayme Watts"
  copyright = "© 1955 Cherio Corp."
}

refrainLyrics = \lyricmode {
  Well, al -- right, __ o -- kay, __ you win, __
  I'm in love with you. __
  Well, al -- right, __ o -- kay, __ you win, __
  Ba -- by, what can I do? __
  I'll __ do an -- y -- thing you say, __
  it's just got -- ta be that way. __

  Well, al -- right, __ o -- kay, __ you win, __
  I'm in love with you. __
  Well, al -- right, __ o -- kay, __ you win, __
  Ba -- by, what can I do? __
  I'll __ do an -- y -- thing you say, __
  as long as it's me and you. __

  All that __ I am ask -- in',
  All I want from you, __
  Just love me like I love __ you
  an' it won't be hard to do! __

  Well, al -- right, __ o -- kay, __ you win, __
  I'm in love with you. __
  Well, al -- right, __ o -- kay, __ you win, __
  Ba -- by, what can I do? __
  I'll __ do an -- y -- thing you say, __
  sweet ba -- by take me by the hand. __
  
  _ Well, al -- right, __ o -- kay, __ you win, __
}

refrainChords = \chordmode {
  s4.
  
  ef1:7 ef1:7 ef1:7 ef1:7
  af1:7 af1:7 ef1:7 ef2:7 c2:7
  f1:m7 bf1:7 ef2:7 af2:7
  
  ef2:7 bf2:7

  ef1:7 ef1:7 ef1:7 ef1:7
  af1:7 af1:7 ef1:7 ef2:7 c2:7
  f1:m7 bf1:7 ef2:7 af2:7
  
  ef1:7 ef1:7 ef1:7 ef1:7
  af1:7 af1:7 ef4:7 r2. bf1:7 bf1:7

  ef1:7 ef1:7 ef1:7 ef1:7
  af1:7 af1:7 ef1:7 ef2:7 c2:7
  f1:m7 bf1:7 ef2:7 af2:7
  
  ef2:7 bf2:7

  ef1:7 ef1:7 ef1:7 ef1:7
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 140
  
  \partial 4. bf8 c8 ef8~ |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }

  ef4 r4 r4 gf8 ef8~ | ef4 r4 r4 fs8 g8~ | g4 r4 r8 bf,8 c4 |
  ef4 f8 gf8~ gf8 b,8 c8 ef8~ |
  \break
  ef4 r4 r4 f8 ef8~ | ef4 r4 r4 c'8 bf8~ | bf4 r4 r8 g4 fs8 | g8 ef8 c8 bf8~ bf4 r8 af'8~ |
  \break
  af8 g8 \tuplet 3/2 { af8 g8 af8~ } af4 a8 bf8~ |
  bf4 r4 r4 r8 ef,8 | bf'4 af8 bf8 gf4 ef8 ef8~ |    
  ef4 r4 r8 bf8 c8 ef8~ |

  \sect "A2"

  ef4 r4 r4 gf8 ef8~ | ef4 r4 r4 fs8 g8~ | g4 r4 r8 bf,8 c4 |
  \bar "|"
  ef4 f8 gf8~ gf8 b,8 c8 ef8~ |
  \break
  ef4 r4 r4 f8 ef8~ | ef4 r4 r4 c'8 bf8~ | bf4 r4 r8 g4 fs8 | g8 ef8 c8 bf8~ bf4 r8 af'8~ |
  \break
  af8 g8 \tuplet 3/2 { af8 g8 af8~ } af4 a8 bf8~ |
  bf4 r4 r4 r8 ef,8 | bf'4 af8 bf8 gf4 ef8 ef8~ |    
  ef4 r4 r2 |

  \bar "||"

  \xPageBreak
  
  
  \sectNoBar "B"
  
  r8 c'4 bf8~ bf8 g8 c,8 ef8~ | ef8 gf8 r4 r2 | r8 c8 bf8 gf8~ gf4 ef8 ef8~ | ef4 r4 r2 |
  \break
  r8 c'4 bf8~ bf8 gf8 ef4 | r8 c'4 bf8~ bf8 ef,8 ef8 ef8 |
  gf4 ef4 ef4 ef8 f8~ | f4 r4 r8 bf,8 c8 ef8~ | 

  \sect "A3"

  ef4 r4 r4 gf8 ef8~ | ef4 r4 r4 fs8 g8~ | g4 r4 r8 bf,8 c4 |
  \bar "|"
  ef4 f8 gf8~ gf8 b,8 c8 ef8~ |
  \break
  ef4 r4 r4 f8 ef8~ | ef4 r4 r4 c'8 bf8~ | bf4 r4 r8 g4 fs8 | g8 ef8 c8 bf8~ bf4 r8 af'8~ |
  \break
  af8 g8 \tuplet 3/2 { af8 g8 af8~ } af4 a8 bf8~ |
  bf4 r4 r8 ef4 ef8~ | ef8 c8 bf8 gf8 f4 ef8 ef8~ \textToCodaLastTime | 
  ef4 r4 r2 |

  \bar "||-|."

  \textCodaBreak

  ef4\repeatTie r4 r8 ef'8 ef8 ef8~ | ef4 r4 r4 ef8 ef8~ | ef4 r4 r4 ef8 ef8~ | ef1 |

  \bar "|."
}


\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
