%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Young at Heart"
  subtitle = \instrument
  poet = "Carolyn Leigh"
  composer = "Johnny Richards"
  copyright = \markup \small "© 1954 Sunbeam Music Corporation"
}

refrainLyrics = \lyricmode {
Fair -- y tales __ can come true,
it can hap -- pen to you
if you're young at heart. __
For it's hard, __ you will find, __
to be nar -- row of mind if you're young at heart. __
You can go __ to ex -- tremes with im -- pos -- si -- ble schemes,
you can laugh __ when your dreams __ fall a -- part at the seams
and life gets more ex -- cit -- ing with each pass -- ing day, __
and love is eith -- er in your heart or on the way. __
Don't you
}

refrainLyricsTwo = \lyricmode {
_ _ know __ that it's worth __ ev -- 'ry trea -- sure on earth
to be young at heart. __
For, as rich __ as you are, __ it's much bet -- ter by far
to be young at heart. __
And if you __ should sur -- vive to a hun -- dred and five
look at all __ you de -- rive __ out of
_ _ _ _ _  _ _ _ _ _ _ _ _  _ _ _ _  _ _ _ _ _ _ _ _  _ _ _ _ _
be -- ing a -- live,
and here is the best part, __ you have a head start __
if you are a -- mong the ver -- y young at heart. __
}

refrainChords = \chordmode {
  s4
  
  bf1:maj7 bf2.:maj7 df4:dim7 c1:m7 c1:m7
  f2:7 c2:m7 f2.:7 f4:7.5+ bf1:maj7 bf1:maj7
  d2:m7.5- g2:7 d2:m7.5- g2:7 g2:m7 c2:7

  g2:m7 c2:7 f1:7 c2:m7 f2:7
  bf1:6 c2:m7 f2:7
  
  ef2:maj7 c2:m7.5- bf2:maj7 g2:m7 c2:m7 f2:7
  bf4 bf4/d ef4:6 e4:dim7 c4:m7/f f4:7 bf4:6

  \chordInsideParens{ f4:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 84

  \partial 4 \tuplet 3/2 { r8 e8 f8 } |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  d'4~ \tuplet 3/2 { d8 e,8 f8 } c'4~ \tuplet 3/2 { c8 e,8 f8 } |
  \tuplet 3/2 { bf8 e,8 f8 } a2 \tuplet 3/2 { r8 g8 fs8 } |
  \break
  g4 bf8 g8~ g2~ | g2. \tuplet 3/2 { r8 d8 ef8 } |
  c'4~ \tuplet 3/2 { c8 d,8 ef8 } bf'4~ \tuplet 3/2 { bf8 d,8 ef8 } |
  \break
  \tuplet 3/2 { a8 d,8 ef8 } g2 \tuplet 3/2 { r8 f8 e8 } |
  f4 a8 f8~ f2~ | f2. \tuplet 3/2 { r8 cs8 d8 } |
  \break
  af'4~ \tuplet 3/2 { af8 cs,8 d8 } g4~ \tuplet 3/2 { g8 c,8 d8 } |
  \tuplet 3/2 { af'8 cs,8 d8 } g2 \tuplet 3/2 { r8 fs8 g8 } |
  d'4~ \tuplet 3/2 { d8 fs,8 g8 } c4~ \tuplet 3/2 { c8 fs,8 g8 } |
  \break
  
  \alternative { \volta 1 {

  \tuplet 3/2 { d'8 fs,8 g8 } c2 bf4 | a8 a8 gs8 gs8 a8 a8 gs8 gs8 |
  a4 c8 g8~ g4. fs8 |
  \break
  g8 g8 fs8 fs8 g8 g8 fs8 fs8 |
  g4 bf8 f8~ f4  \tuplet 3/2 { r8 e8 f8 } |
  } \volta 2 {
  \break

  \tuplet 3/2 { d'8 b8 c8 } ef2 r8 cs8 | \tuplet 3/2 { d8 f,8 d'8 } c8 bf8~ bf2 |
  \tuplet 3/2 { c8 e,8 c'8 } bf8 a8~ a2 |
  \break
  bf8 bf8 g8 g8 bf8 bf8 g8 g8 | bf4 g8 bf8~ bf4 r4 |
  } } }
  
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
