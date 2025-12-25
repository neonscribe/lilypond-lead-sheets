%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "You Make Me Feel So Young"
  subtitle = \instrument
  poet = "Mack Gordon"
  composer = "Josef Myrow"
  copyright = \markup \small { \now " " "© 1946 Triangle Music Corporation" }
}

refrainLyrics = \lyricmode {
You make me feel so young, __
you make me feel so spring has sprung, __
and ev -- 'ry time I see you grin, __
I'm such __
a hap -- py in -- di -- vid -- u -- al.

_ _ _ _ _

You and I are just like a coup -- le of tots. __
Run -- ning a -- cross a mead -- ow, __
pick -- ing up lots of for -- get -- me -- nots. __

You make me feel so young, __
You make me feel there are songs to be sung,
bells to be rung,
and a won -- der -- ful fling to be flung.
And e -- ven when I'm old and gray
I'm gon -- na feel the way I do to -- day.
'Cause you make me feel so young. __
}

refrainLyricsTwo = \lyricmode {
The mo -- ment that you speak, __
I wan -- na go play hide and seek, __
I wan -- na go and bounce the moon __
just like

_ _ _ _ _ _ _ _

_ a toy __ bal -- loon.
}

refrainChords = \chordmode {
  bf2:maj7 b2:dim7 c2:m7 f2:7 bf2:maj7 b2:dim7 f2:m7 f2:7
  bf2:maj7 bf2:7.5+ ef2:maj7 c2:m7
  
  d2:m7 g4:m7 c4:7 f1:7

  d2:m7 g4:m7 c4:7 f1:7
  
  f1:m7 bf1:7 f1:m7 bf1:7 
  fs1:dim7 g1:m7 c1:m7 f1:7
  
  bf2:maj7 b2:dim7 c2:m7 f2:7 bf2:maj7 b2:dim7 f2:m7 f2:7
  bf2:maj7 bf2:7.5+ ef2:maj7 ef2:m d2:m7 g2:7 c2:m7 f2:7
  d2:m7 g2:7 c2:m7 f2:7 d2:7.5+ af2:9.11+ g1:7.9- 
  c1:m7 f2:sus9 f2:7 bf2:6
  \chordOpenParen{ g2:m7 }
  c2:m7
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

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
  \tempo "Medium [Frank Sinatra 1956]" 4 = 125

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 d8 cs8 d8 ef4 d8 ef8~ | ef1 | r8 f8 e8 f8 g4 f4 |
  \break
  af4 f8 a8~ a2 | r8 f8 e8 f8 d'4 d4 | d4 g,8 g8~ g4 c8 c8~ |
  \break
  \alternative { \volta 1 {
  c4 f,8 f8~ f8 bf4. | a4. g8 f8 ff8 ef4 |
  } \volta 2 {
  c'4\repeatTie f,8 f8~ f4 bf8 a8~ | a2. r4 |
  } } }
  \sect "B"
  
  bf2. g4 | af2 r4 c4 | bf4 bf8 bf8 bf8 g8 bf8 af8~ | af1 |
  \break
  \tuplet 3/2 { c4 c4 c4 } c4 a4 | bf8 bf4.~ bf4 r8 ef8~ |
  ef8 ef8 d8 c8~ c8 bf4 bf8 | a4 g8 f8~ f4 r4 |
  
  \sect "A3"
  
  r8 d8 cs8 d8 ef4 d8 ef8~ | ef1 |
  r8 f8 e8 f8 \tuplet 3/2 { g4 g4 f4 } | \tuplet 3/2 { af4 af4 f4 } a2 |
  \break
  \tuplet 3/2 { bf4 a4 bf4 } c4 bf8 c8 |
  \tuplet 3/2 { d4 c4 d4 } \tuplet 3/2 { ef4 d4 ef4 } |
  f1 | r8 f,8 f8 f8 f8 f8 f8 f8 |
  \break
  f1 | r8 f8 f8 f8 f8 f8 g8 f8 | d'2 d2 | d2. d4 |
  \break
  ef2 d4 c4 | bf2 a2 | bf1~ | bf2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
