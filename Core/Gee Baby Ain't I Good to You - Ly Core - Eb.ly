%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Gee Baby, Ain't I Good to You"
  subtitle = \instrument
  poet = "Don Redman & Andy Razaf"
  composer = "Don Redman"
  copyright = "© 1929 Michael H. Golden, Inc."
}

refrainLyrics = \lyricmode {
Love __ makes me treat you the way __ that I do,
Gee ba -- by, ain't I good to you.
There's noth -- in' too good for a girl __ that's so true,
Gee ba -- by, ain't I good to you.
Bought you a fur coat for Christ -- mas, a dia -- mond ring, __
A Cad -- il -- lac car, an' ev -- 'ry -- thing, __
Love __ makes me treat you the way __ that I do,
Gee ba -- by, ain't I good to you.
}

refrainChords = \chordmode {
  c2:7 af2:7 g2:7 c2:7 f2:7 bf2:7 ef2:6 g2:7
  c2:7 af2:7 g2:7 c2:7 f2:7 bf2:7 ef2:6 ef2:7
  
  af2:6 a2:dim7 ef2:6/bf ef2:7
  af2:6 a2:dim7 d2:m7.5- g2:7
  c2:7 af2:7 g2:7 c2:7
  f2:7 bf2:7 ef2:6
  \chordOpenParen{ af4:7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Blues Ballad" 4 = 80

  \mark \markup{ \box "A" }
  
  c'4~ \tuplet 3/2 { c8 g8 af8 } bf8 ef,4 f8 | g4~ \tuplet 3/2 { g8 af8 fs8 } g2 |
  \break
  gf4 \tuplet 3/2 { gf8 ef4 } \tuplet 3/2 { g8 g8 f8~ } f8 ef8 | ef2 r8 g4. |
  \break
  c4~ \tuplet 3/2 { c8 g8 af8 } bf8 ef,4 f8 | g4~ \tuplet 3/2 { g8 af8 fs8 } g2 |
  \break
  gf4 \tuplet 3/2 { gf8 ef4 } \tuplet 3/2 { g8 g8 f8~ } f8 ef8 | ef2. r4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r8 f8 \tuplet 3/2 { f8 e8 f8 } \tuplet 3/2 { f8 ef8 gf8~ } gf8 f8 |
  r8 fs8 \tuplet 3/2 { g8 c8 bf8~ } bf2 |
  \break
  r8 c8 \tuplet 3/2 { gf8 gf8 gf8 } gf2 | r8 f8 \tuplet 3/2 { f8 ef8 d8~ } d2 |
  \break
  c'4~ \tuplet 3/2 { c8 g8 af8 } bf8 ef,4 f8 | g4~ \tuplet 3/2 { g8 af8 fs8 } g2 |
  \break
  gf4 \tuplet 3/2 { gf8 ef4 } \tuplet 3/2 { gf8 gf8 f8~ } f8 ef8 | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
