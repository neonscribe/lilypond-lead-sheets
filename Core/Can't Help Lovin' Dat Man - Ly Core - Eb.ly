%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Can't Help Lovin' Dat Man"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Jerome Kern"
  copyright = \markup \small "© 1927 T.B. Harms Company"
}

refrainLyrics = \lyricmode {
Fish got to swim __ and birds got to fly. __
I got to love __ one man till I die. __
Can't help lov -- in' dat man __ of

mine. __ ""

When he goes a -- way, __ dat's a rain -- y day, __
and when he comes back, dat day is fine, __ the sun will shine.

He can come home __ as late as can be, __
home with -- out him __ ain't no home to me. __
Can't help lov -- in' dat man __ of mine. __
}

refrainLyricsTwo = \lyricmode {
Tell me he's la -- zy, tell me he's slow,
tell me I'm cra -- zy, may -- be I know.
Can't help lov -- in' dat man of
_
mine.
}

refrainChords = \chordmode {
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 bf4:m7 ef4:7 af2:maj7 df2:7
  g2:m7 c2:m7 cf2:7 bf4:7.5+ bf4:7
  
  ef2:6 c2:m7 f2:m7 bf2:7
  
  ef1:6 bf2:m7 ef2:7
  
  af1:6 a1:dim7 ef2/bf c2:7 f2:7 fs2:dim7 
  g2:m7 c2:7.9- f2:m7 f2:7 f1:m7/bf bf1:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 bf4:m7 ef4:7 af2:maj7 df2:7
  g2:m7 c2:m7 cf2:7 bf4:7.5+ bf4:7 ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad [Billie Holiday with Teddy Wilson 1937]" 4 = 94

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  bf8 bf8 bf8 ef8~ ef4 ef4 | ef8 bf8 bf8 bf8~ bf2 | g8 g8 g8 c8~ c4 c4 |
  \break
  c8 f,8 f8 f8~ f2 | bf2 ef,2 | cf8 ef8 ef8 gf8~ gf4 f4 |
  \break
  \alternative { \volta 1 {
  ef1~ | ef2 r2 |
  } \volta 2 {
  ef1~ | ef2 r2 |
  } } }
  \sect "B"
  
  
  f4 f4 f4 f8 gf8~ | gf1 | g4 g4 g4 g8 a8~ | a1 |
  \break
  bf4 bf4 bf4 bf4 | c4 c4 c4 c4 | f2~ f8 ef8 d8 c8 | bf1 |

  
  \sect "A3"

  bf8 bf8 bf8 ef8~ ef4 ef4 | ef8 bf8 bf8 bf8~ bf2 | g8 g8 g8 c8~ c4 c4 | c8 f,8 f8 f8~ f2 |
  \break
  bf2 ef,2 | cf8 ef8 ef8 gf8~ gf4 f4 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
