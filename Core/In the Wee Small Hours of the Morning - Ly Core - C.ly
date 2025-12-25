%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "In the Wee Small Hours of the Morning"
  subtitle = \instrument
  poet = "Bob Hilliard"
  composer = "David Mann"
  copyright = \markup \small { \now " " "© 1955 Bourne Corp. and Redd Evans Music Corp." }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
In the wee small hours of the morn -- ing
while the whole wide world is fast a -- sleep.
You lie a -- wake and think a -- bout the girl,
and nev -- er ev -- er think of count -- ing sheep.

When your lone -- ly heart has learned its les -- son,
you'd be hers if on -- ly she would call.
In the wee small hours of the morn -- ing
that's the time you miss her most of all.

(In the)

time you miss her most of all.
}

refrainObjectGenderMaleLyrics = \lyricmode {
In the wee small hours of the morn -- ing
while the whole wide world is fast a -- sleep.
You lie a -- wake and think a -- bout the boy,
and nev -- er ev -- er think of count -- ing sheep.

When your lone -- ly heart has learned its les -- son,
you'd be his if on -- ly he would call.
In the wee small hours of the morn -- ing
that's the time you miss him most of all.

(In the)

time you miss him most of all.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  s4

  c2:maj7 c2:7 c2:6 c2:aug c2:maj7 c2:aug d2:m7 g2:7
  d2:m7 g2:7 e2:m7.5- a2:7 fs2:m7.5- b2:7 e2:m7 g2:7

  c2:maj7 c2:7 c2:6 c2:aug c2:maj7 e2:m7.5- a1:7
  d2:m7 ds2:dim7 e2:m7 a2:7 d2:m7 g2:7 c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }

  d1:m7 af2:7.5- g2:7 c1:6 c1:6
}

refrainKey = c

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
  \tempo "Ballad [Frank Sinatra 1955]" 4 = 58

  \partial 4 c8 d8 |

  \sectNoBreak "A"

  e4 e4 c8( d8) e8 f8 | e8 c4.~ c4 c8 d8 |
  \break
  e4 e4 c8 d8 e8 f8 | d2. r8 d8 |
  \break
  a'4 a4 a4. a8 | g8 f8 e8 f8 g4. g8 |
  \break
  fs8 e8 ds8 e8 fs8 b,8 b'8 a8 | g2. c,8 d8 |

  \sect "B"

  e4 e4 c8 d8 e8 f8 | e8 c4.~ c4 c8 d8 |
  \break
  g4. g8 d'8 g,8 g8 g8 | a2. a8 b8 |
  \break
  c4 c4 a8( b8) c8 d8 | c8 g4.~ g4 f8 e8 \textToCodaLastTime |
  \break
  f8 c'8 a8 f8 d4 e4 | c2 r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  c8 
  \endParenthesis \parenthesize
  d8 |
  \bar "||-|."

  \textCodaBreak

   f4 c'4 a4 f4 | d2 e2 | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
