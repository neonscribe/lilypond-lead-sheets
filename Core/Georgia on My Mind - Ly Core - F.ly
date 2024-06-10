%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Georgia on My Mind"
  subtitle = \instrument
  poet = "Stuart Gorrell"
  composer = "Hoagy Carmichael"
  copyright = "© 1930 Southern Music Publishing Co., Inc."
}

refrainLyrics = \lyricmode {
Geor -- gia, __ Geor -- gia, __ the whole day through,
Just an old sweet song keeps Geor -- gia on my mind.
(Geor -- gia on my mind.)
Geor -- gia, __ Geor -- gia, __ a song of you
Comes as sweet and clear as moon -- light through the pines. __
Oth -- er arms reach out to me; __
oth -- er eyes __ smile ten -- der -- ly; __
Still in peace -- ful dreams I see __
the road leads back to you, __
Geor -- gia, __ Geor -- gia, __ no peace I find,
Just an old sweet song keeps Geor -- gia on my mind. __
}

refrainChords = \chordmode {
  \set chordChanges = ##t
  f1:maj7 e2:m7.5- a2:7 d2:m d2:m/c g2/b bf2:m6
  f2:maj7 d2:7 g2:m7 c2:7 a2:m7 d2:7.9- g2:m7 c2:7.5+

  f1:maj7 e2:m7.5- a2:7 d2:m d2:m/c g2/b bf2:m6
  f2:maj7 d2:7 g2:m7 c2:7 f2:6 ef2:9 f2:6 e4:m7.5- a4:7.9-
  
  d2:m g2:m6 d2:m7 bf2:7 d2:m g2:m6 d2:m7 g2:7
  d2:m d2:m/cs d2:m/c b4:m7.5- e4:7.9- a2:m7 d2:7.9- g2:m7 c2:7

  f1:maj7 e2:m7.5- a2:7 d2:m d2:m/c g2/b bf2:m6
  f2:maj7 d2:7 g2:m7 c2:7 f2:6 ef2:9 f2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
  \set chordChanges = ##f
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 90

  \xTextMark \markup{ \bold \box "A1" }
  
  a8 c4.~ c2 | a8 g4.~ g2 | r4 a4 d4 a4 | g2. f8 g8 |
  \break
  a4 c4 e4 d4 | bf8 d4. a4 g4 | c1 | d8 d8 d8 d8 gs,2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  a8 c4.~ c2 | a8 g4.~ g2 | r4 a4 d4 a4 | g2. f8 g8 |
  \break
  a4 c4 e4 d4 | bf4 d,4 a'4 a4 | f1~ | f2 r2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d8 f4 g8~ g4 a4 | f4 d8 f8~ f2 | d8 f4 g8~ g4 a4 | c8 a4 b8~ b2 |
  \break
  d,8 f4 g8~ g4 a4 | c8 d4 e8~ e4. d8 | c4 a4 c4 c4 | a2( g2) |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  a8 c4.~ c2 | a8 g4.~ g2 | r4 a4 d4 a4 | g2. f8 g8 |
  \break
  a4 c4 e4 d4 | bf4 d,4 a'4 a4 | f1~ | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
