%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Over the Rainbow"
  subtitle = \instrument
  poet = "Yip Harburg"
  composer = "Harold Arlen"
  copyright = \markup \small "© 1938 Metro-Goldwyn-Mayer, Inc."
}

refrainLyrics = \lyricmode {
Some -- where o -- ver the rain -- bow, way up high,
there's a land that I heard of once in a lull -- a -- by.
_ _
day I'll wish up -- on a star
and wake up where the clouds are far be -- hind me. __
Where trou -- bles melt like lem -- on drops,
a -- way, a -- bove the chim -- ney tops that's where you'll find me.
Some -- where o -- ver the rain -- bow blue -- birds fly.
Birds fly o -- ver the rain -- bow,
why then, oh why can't I?
I?
If hap -- py lit -- tle blue -- birds fly a -- bove the rain -- bow
why, oh why, can't I? __
}

refrainLyricsTwo = \lyricmode {
Some -- where o -- ver the rain -- bow skies are blue,
and the dreams that you dare to dream real -- ly do come _ true.
Some
}

refrainChords = \chordmode {
  ef2:6 c2:m7 g2.:m ef4:7 af2 af4:maj7 af4:7 g4:m7 ef4 g4:m7 g4:dim7
  af2:6 af2:m6 ef2/bf c2:7.9- f2:7 f4:m/bf bf4:7
  
  ef2 f4:m7 bf4:7.9-
  
  ef1
  
  ef1 f2.:m/bf bf4:7/ef ef1:6 bf4 af4 ef4 bf4:7
  ef1 fs1:dim7 f2:m6 f2:7.9- f2:m7/bf bf2:9.5+

  ef2:6 c2:m7 g2.:m ef4:7 af2 af4:maj7 af4:7 g4:m7 ef4 g4:m7 g4:dim7
  af2:6 af2:m6 ef2/bf c2:7.9- f2:7 f4:m/bf bf4:7
  
  ef2.:6 bf4:7 ef1 f2.:m7 bf4 ef1:6 ef1:6
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Judy Garland 1939]" 4 = 78

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  ef2 ef'2 | d4 bf8 c8 d4 ef4 | ef,2 c'2 | bf1 |
  c,2 af'2 | g4 ef8 f8 g4 af4 | f4 d8 ef8 f4 g4 |
  \alternative { \volta 1 {
  ef2 r2 |
  } \volta 2 {
  ef2. r8 bf'8 |
  } } }
  \sect "B"
  
  g8 bf8 g8 bf8 g8 bf8 g8 bf8 | af8 bf8 af8 bf8 af8 bf8 af8 bf8 | c2 c2~ | c2. r8 bf8 |
  g8 bf8 g8 bf8 g8 bf8 g8 bf8 | a8 c8 a8 c8 a8 c8 a8 c8 | d2 d2 | f2 c2 |
  
  \sect "A3"

  ef,2 ef'2 | d4 bf8 c8 d4 ef4 | ef,2 c'2 | bf1 |
  c,2 af'2 | g4 ef8 f8 g4 af4 | f4 d8 ef8 f4 g4 \textToCodaLastTime | ef2 r2 |
  
  \bar "||-|."

  \textCodaBreak
  
  ef2. r8 bf'8 | g8 bf8 g8 bf8 g8 bf8 g8 bf8 | af8 bf8 af8 bf8 af8^"ritard" bf8 c8 d8 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
