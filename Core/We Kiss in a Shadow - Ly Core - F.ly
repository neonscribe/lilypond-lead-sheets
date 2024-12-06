%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "We Kiss in a Shadow"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Richard Rodgers"
  copyright = "© 1951 Richard Rodgers and Oscar Hammerstein II"
}

refrainLyricsOne = \lyricmode {
We kiss in a sha -- dow, we hide from the moon.
Our meet -- ings are few and o -- ver too

soon. __
""

A -- lone in our sec -- ret, to -- geth -- er we sigh for one smil -- ing day to be free __

to kiss in the sun -- light and say to the sky, __
“Be -- hold and be -- lieve what you see! __
be -- hold how my lov -- er loves me!” __
}

refrainLyricsTwo = \lyricmode {
We speak in a whis -- per, a -- fraid to be heard.
When peo -- ple are near, we speak not a
_
word.
}

refrainChords = \chordmode {
  f1:maj7 f2:maj7 d2:7.9- g1:m7 c1:7
  g1:m7 c1:7
  
  f2:6 d2:m7 g2:m7 c2:7
  
  f1:6 b2:m7.5- e2:7
  
  a2:m7 a2:m7/g fs2:m7.5- b2:9 e2:m7 e2:m7/d c2:maj9 c2:6
  f1 b2:m7.5- e2:7 a2:m7 d2:7.9- g2:m7 c2:7

  f1:maj7 f2:maj7 d2:7.9- g1:m7 c1:7
  c1:7 c1:7 f1:7 f1:7.5+
  bf2:maj7 bf2:maj7/a g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow  Ballad" 4 = 56

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r4 c'4 c4 bf8 a8 | g4 g2. | r4 bf4 bf4 a8 g8 |
  \break
  c,1 | r4 bf'4 bf4 a8 g8 | c,4 c4 c4 d8 e8 |
  \break
  \alternative { \volta 1 {
  f1~ | f2 r2 |
  } \volta 2 {
  f1~ | f2 r2 |
  } } }
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 a4 a4 b8 a8 | fs4 fs2. | r4 g4 g4 a8 g8 | e2. e4 |
  \break
  f2 g4 a4 | b2 c4 d4 | c1~ | c2. r4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  r4 c4 c4 bf8 a8 | g4 g2. | r4 bf4 bf4 a8 g8 | c,1~ |
  \break
  c8 r8 c'4 c4 e,8 f8 | g4 c2 bf4 | a1~ | a2. a4 |
  \break
  a2 f4. g8 | a4 c2 e,4 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
