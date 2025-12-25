%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Moonlight in Vermont"
  subtitle = \instrument
  poet = "John Blackburn"
  composer = "Karl Suessdorf"
  copyright = \markup \small { \now " " "© 1944 Michael H. Golden, Inc." }
}

refrainLyrics = \lyricmode {
Pen -- nies in a stream, fall -- ing leaves, a sy -- ca -- more,
Moon -- light in Ver -- mont.
I -- cy fin -- ger waves, Ski trails on a moun -- tain -- side,
Snow -- light in Ver -- mont.
Tel -- e -- graph ca -- bles, they sing down the high -- way
and trav -- el each bend in the road,
Peo -- ple who meet in this ro -- man -- tic set -- ting
are so hyp -- no -- tized by the love -- ly
Eve -- ning sum -- mer breeze, war -- bling of a mead -- ow -- lark,
Moon -- light in Ver -- mont.
Moon -- light in Ver -- mont. You and I and moon -- light in Ver -- mont.
}

refrainChords = \chordmode {
  ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 c2:m7 df1:7
  f2:m7 bf2:sus7 ef2:6 bf2:sus7

  ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 c2:m7 df1:7
  f2:m7 bf2:sus7 ef1:6
  
  a2:m7 d2:7 g2:maj7 e2:7.9- a2:m7 d2:7 g1:maj7
  bf2:m7 ef2:7 af2:maj7 f2:7.9- bf2:m7 e2:7 af2:maj7 bf2:7.9-
  
  ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 c2:m7 df1:7
  f2:m7 bf2:sus7 ef2:6 \chordInsideParens{ bf2:sus7 }
  
  f2:m7 bf2:sus7 ef2:6 c2:7.9+ f2:7 e2:7 ef1:maj7
}

refrainKey = ef

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Johnny Smith 1952]" 4 = 72

  \xTextMark \markup{ \bold \box "A1" }
  
  c'4 bf4 g4 f4 | g1 | c4 bf4 g4. ef8 | f8 g8 cf,2. | g'4 f4 ef4 c4 | ef1 |
  
  \sect "A2"
  
  c'4 bf4 g4 f4 | g1 | c4 bf4 g4. ef8 | f8 g8 cf,2. | g'4 f4 ef4 c4 | ef1 |

  \sect "B"
  
  d8 d8 d8 d8~ d8 d4 d8 | d8 d4 d8 d8 d4 d8 | d8 d8 d8 d'8~ d4 c8 d8 | b1 |
  \break
  ef,8 ef8 ef8 ef8~ ef8 ef4 ef8 | ef8 ef4 ef8 ef8 ef4 ef8 |
  ef8 ef8 ef8 ef'8~ ef4 df8 ef8 | c2 cf2 |
  
  \sect "A3"

  c4 bf4 g4 f4 | g1 | c4 bf4 g4. ef8 | f8 g8 cf,2. \textToCodaLastTime | g'4 f4 ef4 c4 | ef1 |

  \bar "||-|."
  
  \textCodaBreak
  
  g4 f4 ef4 c4 | ef1 | b8^\markup{\italic ritard.} c8 ef8 g8 c8 d8 b8 cs8 | bf1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
