%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "It's All Your Fault"
  subtitle = \instrument
  poet = ""
  composer = "Cindy Walker"
  copyright = "© 1943"
}

refrainLyrics = \lyricmode {
  It's all your fault if I'm not sleep -- in'.
  I live on dreams in -- stead of eat -- in'.
  I'm just a wreck and it's all your fault.
  
  Oh, it's all your fault if I'm not play -- in',
  Hav -- in' fun and if I'm stay -- in'
  all by my -- self well, it's all your fault.
  
  When you said that we were through
  I tried to find some -- bo -- dy new.
  But I found out it would -- n't do,
  'Cause I'd ra -- ther be a -- lone than with some -- bo -- dy new.
  
  Oh, it's all your fault when I'm a grand -- ma
  My grand -- kids don't call you grand -- pa.
  Well, I'll just tell 'em it's all your fault.
  
}

refrainJoelChords = \chordmode {
  s4
  c1:6 c1:6 a1:7 a1:7
  d1:7 g1:7 c2:6 c2:dim7 d2:7 g2:7

  c1:6 c1:6 a1:7 a1:7
  d1:7 g1:7 c1:6 c1:7

  g2:m7 c2:7 g2:m7 c2:7 f1:maj7 f1:maj7
  d1:7 d1:7 g1:7 g1:7

  c1:6 c1:6 a1:7 a1:7
  d1:7 g1:7 c2:6 \chordOpenParen{ df2:dim7 } d2:m7 \chordCloseParen{ g2:7 }
}

refrainiRealChords = \chordmode {
  s4
  c1:6 c1:6 a1:7 a1:7
  d1:7 g1:7 c2:6 df2:dim7 d2:m7 g2:7

  c1:6 c1:6 a1:7 a1:7
  d1:7 g1:7 c1:6 c1:7

  g2:m7 c2:7 g2:m7 c2:7 f1:6 f2:6 e4:7 ef4:7
  d1:7 d1:7 g1:7 g1:7.5+

  c1:6 c1:6 a1:7 a1:7
  d1:7 g1:7 c2:6 \chordOpenParen{ df2:dim7 } d2:m7 \chordCloseParen{ g2:7 }
}

refrainChords = \refrainJoelChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Western Swing" 4 = 130
  
  \partial 4 g4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  d4 c4 d4. c8 | d4 c4 d8 e4 a,8 | b8 a4 b8~ b4. a8 | b8 a4. b8 e4. |
  \break
  r8 e8 d8 e8 c8 a8~ a4 | r4 a4 a4 g4 | c2 r2 | r2 r4 g'8 g8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d4 c4 d4. c8 | d4 c4 d8 e4. | b8 a4 b8~ b4. a8 | b8 a4. b8 e4. |
  \break
  r8 e8 d8 e8 c8 a8~ a4 | r4 a4 a4 g4 | c2 r2 | r1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d4 f4 e4. c8 | d8 f4 e8~ e4. c8 | d4 f4 e4. c8 | d8 f4 e8~ e4. e8 |
  e4 g4 fs4. fs8 | e8 g4 fs8~ fs4 d8 d8 | g8 g8 fs8 fs8 e4 d8 d8 | b8 d8 e8 d4. g8 g8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  d4 c4 d4. c8 | d4 c4 d8 e4. | b8 a4 b8~ b4. a8 | b4 a8 b4 e4. |
  \break
  r8 e8 d8 e8 c8 a8~ a4 | r4 a4 a4 g4 | c2 r2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
