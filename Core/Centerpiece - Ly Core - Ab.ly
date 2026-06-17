%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:28.871784Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Centerpiece"
headerSubtitle = \subtitle
headerPoet = "Jon Hendricks"
headerComposer = "Harry Edison"
headerCopyright = "© 1960 Marissa Music"

refrainLeadingEighth = ##t

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
  s8

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

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Swing [Lambert, Hendricks, & Ross 1959]" 105

  \xTextMark \markup{ \bold \box "A" }

  \partial 8 f8 |

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

\include "../Include/refrainonly.ily"
