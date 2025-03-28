%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "It Never Entered My Mind"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1940 Chappell & Co."
}

refrainLyricsOne = \lyricmode {
Once I laughed when I heard you say -- ing
that I'd be play -- ing sol -- i -- taire, __
un -- eas -- y in my eas -- y chair. __
It nev -- er en -- tered my mind.
_ _ _ _ _ _ _
You have what __ I lack my -- self, __
and now I e -- ven have to scratch my back my -- self. __
Once you warned me that if you scorned me,
I'd sing a maid -- en's pray'r a -- gain __
and wish that you were there a -- gain __
to get in -- to my hair a -- gain, __
It nev -- er en -- tered my mind. __
}

refrainLyricsTwo = \lyricmode {
Once you told me I was mis -- tak -- en,
that I'd a -- wak -- en with the sun, __
and or -- der or -- ange juice for one.
_ _ _ _ _ _ _
It nev -- er en -- tered my mind. __ ""
}

refrainChords = \chordmode {
  f2:maj7 f2:maj7.5+ f2:6 f2:maj7.5+ f2 a4:m7 af4:7 g2:m7 c2:7
  f2:maj7 bf2:maj7 f2/a d2:7
  
  g2:sus7 g2:7 g2:m7 c2:7
  
  g2:sus7 g2:7 g2:m7 c2:7
  
  f2:maj7 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  f2:maj7 g2:m7 a2:m7 af2:dim7 g1:m7 c1:7
  
  f2:maj7 f2:maj7.5+ f2:6 f2:maj7.5+ f2 a4:m7 af4:7 g2:m7 c2:7
  f2:maj7 bf2:maj7 a2:m7.5- d2:7.9- g2:m7 c2:7 a2:m7 d2:7
  g2:m7 c2:sus7 f2:6
  \chordInsideParens{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 116

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  a4 a4 a4 a4 | r8 a8 g8 f8 e4 e4 | r8 f8 e8 d8 c4 c4 | f4 e8 c8~ c2 |
  \break
  r8 f8 e8 d8 c4 c4 | f4 e8 c8~ c2 |
  \break
  \alternative { \volta 1 {
  r8 d8 f8 g8 a8 f8 a8 g8~ | g2 r2 |
  } \volta 2 {
  r8 d8 f8 g8 a8 f8 a8 c8~ | c2 r2 |
  } } }
  \sect "B"
  
  d2 f,4 f4~ | f2 r4 e4 | g2 f4 f4~ | f2 r4 e4 |
  \break
  a4 a4 bf4 bf4 | c4 c4 d4 d4 | e2 c4 c4~ | c2 r2 |
  
  \sect "A3"
  
  a4 a4 a4 a4 | r8 a8 g8 f8 e4 e4 | r8 f8 e8 d8 c4 c4 | f4 e8 c8~ c2 |
  \break
  r8 f8 e8 d8 c4 c4 | c'4 bf8 a8~ a2 | r8 bf8 a8 g8 f4 e4 | a4 e8 e8~ e2 |
  \break
  r8 d8 f8 g8 a8 f8 g8 f8~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
