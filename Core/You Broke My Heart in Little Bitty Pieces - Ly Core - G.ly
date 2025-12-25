%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "You Broke My Heart (In Little Bitty Pieces)"
  subtitle = \instrument
  poet = ""
  composer = "Hank Thompson"
  copyright = "© 1947 Metro Music, Inc."
}

introKey = g

introChords = \chordmode {
  d1 d1:7 g1 g1
}

introMelody = \relative f'' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempo "Western Swing [Hank Thomson 1949]" 4 = 155
  
  \mark \markup { "Intro" }

  fs2-"(accordion)" e4 d4 | c4 d4 b4 a4 | g2 fs'2(-"(steel guitar)" | g1) |
  \bar "||"
}

refrainLyrics = \lyricmode {
\set stanza = "1. "
You broke my heart in lit -- tle bit -- ty pie -- ces and spread them all o -- ver the ground.
You come back to me and say your love in -- crea -- ses but each time you al -- ways let me down.
You lied last night when you kissed me. I cried last night 'cause that's hist' -- ry to -- day.

You broke my heart in lit -- tle bit -- ty pie -- ces and I'll just for -- ev -- er let them lay.

All those shat -- tered dreams and tears that flood my heart that you broke in lit -- tle bit -- ty pie -- ces.
}

refrainLyricsTwo =
{ \override Lyrics.LyricText.font-shape = #'italic
  \lyricmode {
    \set stanza = "2. "
    (solo)
} }

refrainLyricsThree = \lyricmode {
\set stanza = "3. "
There is -- n't any use to think about mend -- ing. It's bro -- ken too bad -- ly for re -- pair.
Why take a -- buse _ and go on _ pre -- tend -- ing, hop -- ing that _ some -- day you might care.
I guess I'll just go on weep -- in', hopin' that some -- day you'll come sweep -- in' a -- way.
}

refrainChords = \chordmode {
  g1 g1 a1 a1:7 d1 d1:7 g1 g1
  g1 g1 a1 a1:7 d1 d1:7 g1 g1:7
  c1 c1 g1 g1 a1 a1:7 d1 d1:7
  g1 g1 a1 a1:7 d1 d1:7 g1 g1
  g1 g1 a1 a1:7 d1 d1:7 g1 g4 d4:7 g2
}

refrainKey = g

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
  \key g \major
  \clef treble
  
  \repeat volta 3 {
  \sectStart "Verse"

  d2 g4 b,8 d8~ | d2. g4 | a8 a2 fs8 e8 fs8~ | fs8 e8~ e2 d4 |
  fs2 e8 d4. | c4 fs2 e4 | b1 | r1 |
  
  \bar "||"

  d4 d4 g4 b,8 d8~ | d2. g4 | a4 a4 fs4 e4 | fs4 e2 r8 d8 |
  fs2 e4. d8 | c4 d4 b8 a4. | g1 | r1 |

  \bar "||"
  
  \break

  g2 c4 e4 | g2 fs4 e4 | g4 b,2. | r1 |
  a2 cs4 e4 | a2 fs4 a4 | fs4 d2 e8 fs8~ | fs1 |

  \bar "||"

  \alternative { \volta 1,2 {
  d2 g4 b,8 d8~ | d2. g4 | a8 a4.~  a8 fs8 e8 fs8~ | fs8 e8~ e2 d4 |
  fs2 e4. b8 | c8 d4. b4 a4 | g1 | r1 |
  } \volta 3 {
  d'4 d4 g8 b,4. | d2. g4 | a2 fs4 e4 | fs4 e2 d4 |
  fs2 e4 d4 | fs8 fs4. g8 a4. | a4 g2. | r4 r4 r2 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

\include "../Include/refrain.ily"
