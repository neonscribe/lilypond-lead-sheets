%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
     (set-global-staff-size 18))

\header {
  title = "Someone to Watch Over Me"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = "© 1926 New World Music Corporation"
}

refrainLyrics = \lyricmode {
There's a some -- bod -- y I'm long -- ing to see.
I hope that he turns out to be some -- one who'll watch o -- ver me. __

I'm a lit -- tle lamb who's lost in the wood.
I know I could al -- ways be good to one who'll watch o -- ver me. __

Al -- though he may not be the man some girls think of as hand -- some,
to my ehart he car -- ries the key. __

Won't you tell him please to put on some speed, fol -- low my lead,
oh, how I need some -- one to watch o -- ver me. __
}

refrainChords = \chordmode {
  ef2.:6 \chordInsideParens{ ef4:7 } af2:6 af2:dim7 ef2/g fs2:dim7 bf2:7/f e2:dim7
  f2:m7 g4:dim7 af4:6 a2:m7.5- bf2:sus7 g2:7.5+ c2:9 f2:m7 bf2:7

  ef2.:6 \chordInsideParens{ ef4:7 } af2:6 af2:dim7 ef2/g fs2:dim7 bf2:7/f e2:dim7
  f2:m7 g4:dim7 af4:6 a2:m7.5- bf2:sus7 ef1:6 \chordInsideParens{ ef1:7 }
  
  af1:6 af1:6 af2.:m6 af4:dim7 ef1/g a2:m7.5- d2:7 g1:7.9- c1:7 f2:m9 bf2:7

  ef2.:6 \chordInsideParens{ ef4:7 } af2:6 af2:dim7 ef2/g fs2:dim7 bf2:7/f e2:dim7
  f2:m7 g4:dim7 af4:6 a2:m7.5- bf2:sus7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 100

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 ef8 f8 g8 bf8 c8 ef8 | f8 f4 ef8 d2 | ef8 ef4 d8 c2 | g8 g4 c8 bf2 |
  \break
  r4 c4 bf4 af4 | ef'2 ef,8 f4. | g1~( | g2 f2) |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  r4 ef8 f8 g8 bf8 c8 ef8 | f8 f4 ef8 d2 | ef8 ef4 d8 c2 | g8 g4 c8 bf2 |
  \break
  r4 c4 bf4 af4 | ef'2 ef,8 f4. | ef1~ | ef4 f4 g4 bf4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d4 ef4 d4 ef4 | f4 ef2 d4 | f4 ef2 d4 | f4 ef2 c4 |
  \break
  ef4 d2 c4 | ef4 d2 b4 | g1~( | g2 f2) |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  r4 ef8 f8 g8 bf8 c8 ef8 | f8 f4 ef8 d2 | ef8 ef4 d8 c2 | g8 g4 c8 bf2 |
  \break
  r4 c4 bf4 af4 | ef'2 ef,8 f4. | ef1~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
