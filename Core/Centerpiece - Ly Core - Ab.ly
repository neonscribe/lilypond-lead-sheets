%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Centerpiece"
  subtitle = \instrument
  poet = "Jon Hendricks"
  composer = "Harry Edison"
  copyright = \markup \small { \now " " "© 1960 Marissa Music" }
}

refrainLyrics = \lyricmode {
The more I'm with you pret -- ty ba -- by
The more I feel my love in -- crease.
I'm buil -- ding all my dreams a -- round you.
My happ -- i -- ness will nev -- er cease.
But no -- thin's a -- ny good with -- out you,
'cause ba -- by you're my cen -- ter -- piece.
I'll buy a house and gar -- den some -- where
a -- long a coun -- try road a -- piece.
A lit -- tle cot -- tage on the out -- skirts
where we can real -- ly find re -- lease.
But no -- thin's a -- ny good with -- out you
'cause ba -- by you're my cen -- ter -- piece. The
-out you
ba -- by you're my cen -- ter -- piece}

refrainChords = \chordmode {
  s4
  
  af1:7 df1:7 af1:7 ef2:m7 af2:7.9-
  df1:7 d1:dim7 af1:7 c2:m7.5- f2:7.9-
  bf1:m7 ef1:7 af2:7 f2:7 bf2:m7 ef2:7
  
  af1:7 df1:7 af1:7 ef2:m7 af2:7.9-
  df1:7 d1:dim7 af1:7 c2:m7.5- f2:7.9-
  bf1:m7 ef1:7 af2:7 f2:7 bf2:m7 ef2:7
  
  ef4.:7 ef8:7 r2 r1 af1:7
}

fourBarMelody = {
  af8 bf8 cf8 bf8 af4 f4 | af4. bf8 r4 r8 f8 |
  af8 bf8 cf8 bf8 af8 f4 ef8~ | ef2. r8 f8 |
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
  \tempo "Medium Swing [Lambert, Hendricks, & Ross 1959]" 4 = 105

  \xTextMark \markup{ \bold \box "A" }

  \partial 4 \invisEighth f8 |
  
  \bar ".|:"
  
  \repeat volta 2 {

  \fourBarMelody
  \fourBarMelody
  \fourBarMelody

  \bar "||-||"

  \fourBarMelody
  \fourBarMelody

  af8 bf8 cf8 bf8 af4 f4 \textToCodaLastTime | af4. bf8 r4 r8 f8 |
  af8 bf8 cf8 bf8 af8 f4 ef8~ | ef2. r8 f8 |
  }

  \bar "||-:|."

  \textCodaBreak

  af4. bf8 r2 | cf8 bf8 ef,8 f8 af4 af4 | af1\fermata |

  \bar "|."

}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
