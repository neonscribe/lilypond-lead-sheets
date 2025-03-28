%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "On a Slow Boat to China"
  subtitle = \instrument
  poet = ""
  composer = "Frank Loesser"
  copyright = \markup \small "© 19x48 Frank Music Corp."
}

refrainLyricsOne = \lyricmode {
I'd love to get you __ on a slow boat to Chi -- na, __
all to my -- self, __ a -- lone. __

Get you and keep you __ in my arms ev -- er -- more, __
leave all your lov -- ers __ weep -- ing on the far -- a -- way shore. __

I'd love to get you __ on a slow boat to Chin -- a, __
all to my -- self, a -- lone. __
}

refrainLyricsTwo = \lyricmode {
Out on the brin -- y __ with a moon big and shin -- y, __
melt -- ing your heart __ of stone,

}

refrainChords = \chordmode {
  bf1:maj7 b1:dim7 c1:m7 cs1:dim7
  bf1:maj7 d1:7 ef1:maj7 d2:m7.5- g2:7
  
  c1:m7 e2:m7 a2:7 bf2:maj7 af2:7.5- g1:7
  c1:7 c1:7 c2.:m7 gf4:7 f1:7
  
  c2:m7 c2:m7/bf af1:7.5- bf2:maj7 af2:7 g1:7
  c1:7 c2:m7 f2:7 bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 143

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  d2 f4 a4 | g8 d4.~ d8 g4 d8 | ef2 g4 bf4 | a8 e4.~ e2 |
  \break
  f2 bf4 d4 | a2~ a8 c4. | g1~ | g2 r2 |
  \sect "B"
  
  \alternative { \volta 1 {
  ef2 g4 bf4 | a8 e4.~ e8 a4 ef8 | f2 d'8 d4 d8~ | d1 |
  \break
  c2 c4 c4 | a8 a4.~ a2 | g8 f8 g8 f8 g8 f8 af8 g8~ | g1 |
  } \volta 2 {
  \break

  \xTextMark \markup{ \bold \box "C" }

  c2 d4 c4 | d8 c4.~ c4 bf8 c8 | d2 ef4 f4 | ef8 d4.~ d2 |
  \break
  c2 fs,4 g4 | d'2 d2 | bf1~ | bf2 r2 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
