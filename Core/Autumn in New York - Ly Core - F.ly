%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 16))

\header {
  title = "Autumn in New York"
  subtitle = \instrument
  poet = ""
  composer = "Vernon Duke"
  copyright = "© 1934 Kay Duke Music"
}

refrainLyricsOne = \lyricmode {
Au -- tumn in New York, __ why does it seem so in -- vit -- ing?
Au -- tumn in New York, __ it spells the thrill of first night -- ing.
Glit -- ter -- ing crowds and shim -- mer -- ing clouds
in can -- yons of steel, __ they're mak -- ing me feel __ I'm home. __
It's Au -- tumn in New York, __
that brings the pro -- mise of new love;
Au -- tumn in New York is of -- ten min -- gled with pain. __
Dream -- ers with emp -- ty hands may sigh for ex -- ot -- ic lands;
It's Autumn in New York, __ it's good to live it a -- gain.
}

refrainLyricsTwo = \lyricmode {
Au -- tumn in New York, __ the gleam -- ing roof -- tops at sun -- down.
Au -- tumn in New York, __ it lifts you up when you're run -- down.
Ja -- ded rou -- és and gay di -- vor -- cees who lunch at the Ritz __
will tell you that “it's __ di -- vine!”
This Au -- tumn in New York, __ trans -- forms the slums in -- to May -- fair;
Au -- tumn in New York, __ you'll need no cas -- tles in Spain. __
Lov -- ers that bless the dark on bench -- es in Cen -- tral Park greet
}

refrainChords = \chordmode {
  g2:m7 a2:m7 g2:m7 c2:7 f2:maj7 g2:m7 a2:m7 d2:7.9-
  g2:m7 a2:m7 g2:m7 c2:7 a1:m7.5- d1:7
  
  g1:m7 bf2:m7 ef2:7 af2:maj7 df2:7 c2:m7 g2:7.9-
  c2:m7 ef2:7 af2:maj7 g2:7.9- c1:maj7 c2:maj7 a4:m7 d4:7.5-

  g2:m7 a2:m7 g2:m7 c2:7 f2:maj7 g2:m7 a2:m7 d4:7 df4:7
  c2:m7 d2:m7 ef2:m7 f2:7 bf2:m6 af2:m7 gf1:7
  
  f2:m7 c2:7.5+ f4:m7 e4:m7 ef4:m7 af4:7 df2:maj7 c2:7.5+ f2:m7 af2:m7
  g2:m7 a2:m7 bf2:m6 c2:7.9- f1:m f1:m
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 110

  \mark \markup{ \box "A1" }
  
  a8 g8 f8 d8 c2~ | c8 d8 f8 bf8 d8 d4 c8 | d2 a2 | r1 |
  \break
  a8 g8 f8 d8 c2~ | c8 d8 f8 bf8 d8 d4 c8 | d2 a2 | r1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  c8 c4 a8 g4. f8 | af8 af4 f8 ef4. df8 | ef8 b4 c8 ef2~ | ef2 f2 |
  \break
  g8 d4 ef8 g2~ | g2 b2 | g1~ | g2. gs4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  a8 g8 f8 d8 c2~ | c8 d8 f8 bf8 d8 d4 c8 | d2 a2 | r1 |
  \break
  d8 c8 bf8 g8 f2~ | f8 gf8 bf8 c8 df8 ef4 c8 | df1~ | df2. r4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "C" }
  
  c8 af4 c8 e4 e4 | c2. bf4 | af8 f4 af8 c4 c4 | af2. af4 |
  \break
  a8 g8 f8 d8 c2~ | c8 bf8 df8 f8 af8 bf4 g8 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
