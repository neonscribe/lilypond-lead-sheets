%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Mood Indigo"
  subtitle = \instrument
  poet = ""
  composer = "Duke Ellington, Irving Mills, and Albany Bigard"
  copyright = \markup \small { \now " " "© 1930 Gotham Music Service, Inc." }
}

refrainLyrics = \lyricmode {
You ain't been blue, No, no, no.
You ain't been blue
till you've had that mood in -- di -- go.
That feel -- in' goes __ steal -- in' down to my shoes,
While I sit and sigh: ''Go 'long blues.''

Al -- ways get that mood in -- di -- go __
since my ba -- by said good -- bye,
In the eve -- ning when lights are low, __
I'm so lone -- some I could cry.

'Cause there's no -- bod -- y who cares a -- bout me, __
I'm just a soul who's blu -- er than blue __ can be.
When I get that mood in -- di -- go, __
I could lay me down and die.
}

refrainChords = \chordmode {
  af1:maj7 bf1:7 bf2:m7 ef2:7.5+ af1:maj7
  af1:maj7 bf1:7 e2:7 b4:m7 e4:7 ef1:7
  
  af1:7 ef2:m7 af2:7 df1:6 gf2.:7 ef4:7.5+
  af1:maj7 bf1:7 bf2:m7 ef2:7.5+ af1:maj7
  
  af2:maj7 f2:7 bf1:7 bf2:m7 ef2:7 af2:maj7 bf4:m7 ef4:7
  af2:maj7 f2:7 bf1:7 e1:7 ef1:7
  
  af1:7 af1:7 df1:7 e2.:7 ef4:7
  af2:maj7 f2:7 bf1:7 bf2:m7 ef2:7 af2:6

  \chordOpenParen{ bf4:m7 }
  \chordCloseParen{ ef4:7 }
}

refrainKey = af

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
  \tempo "Ballad [Boswell Sisters 1933]" 4 = 77

  \xTextMark \markup{ \bold \box "A" }
  
  c2 b8 c4 c8~ | c1 | ef2 b2 | c1 |
  \break
  c2 b8 c4 c8~ | c1 | b8 b4 a8~ a4 af4 | g2 f8 gf8 g4 |
  
  \sect "B"
  
  r4 af4 af4 g4 | r4 ef'4~ ef8 f8 ef4 | df2 df4 df4 | bf2. b4 |
  \break
  c2 b8 c4 c8~ | c1 | ef2 b2 | \textFine c1 |
  
  \sect "C"
  
  r4 ef,8 e8 f4. ef8 | d8 c'8 b8 bf8~ bf2 | c8 bf8 af8 f8 g4 bf4 | ef,2. r4 |
  \break
  r4 ef8 e8 f4. ef8 | d8 c'8 b8 bf8~ bf2 | c8 b8 c8 b8 c8 b4. | bf1 |
  
  \sect "D"
  
  r8 af8 bf8 ef,8 af8 bf4 ef,8 | af8 bf8 ef,8 af8~ af2 | r8 af8 bf8 af8 b4. af8 | b8 af8 bf8 af8~ af8 e4 ef8 |
  \break
  r4 ef8 e8 f4. ef8 | d8 c'8 b8 bf8~ bf2 | c8 bf8 af8 f8 g4 bf4 | af2 r2\daCapoNoCoda |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column {
    \vspace #1
    \line { \large { \bold "Solo on ABCD" } }
    \line { \large { \bold "After solos, D.C. al fine" } } } }
