%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Let's Fall in Love"
  subtitle = \instrument
  poet = "Ted Koehler"
  composer = "Harold Arlen"
  copyright = \markup \small "© 1933 Bourne Corp."
}

refrainLyrics = \lyricmode {
Let's fall in love. Why should -- n't we __ fall in love?
Our hearts are made __ of it, let's take a chance, __ why be a -- fraid __

of it?

_ _ _

We might have been meant for each oth -- er, __
to be or not to be, let our hearts dis -- cov -- er.

Let's fall in love. Why should -- n't we fall in love?
Now is the time for it, while we are young, let's fall in love.
}

refrainLyricsTwo = \lyricmode {
Let's close our eyes and make our own __ par -- a -- dise.
Lit -- tle we know __ of it, still we can try __ to make a go _ _ _ of it. __ ""
}

refrainChords = \chordmode {
  c2:6 a2:m7 d2:m7 g2:7 c2:6 a2:m7 d2:m7 g2:7
  e2:m7 a2:m7 d2:m7 g2:7
  
  e2:7 a2:7.9- d2:m7 g2:7

  b1:m7 e1:7
  
  a1:m7 a1:m7 d1:7 d2:7 ds2:dim7
  e1:m7 c1:maj7 e2:m7 a2:7.9- d2:m7 g2:7

  c2:6 a2:m7 d2:m7 g2:7 c2:6 a2:m7 d2:m7 g2:7
  e2:m7 a2:m7 d2:m7 g2:7 c2:6
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Eddy Duchin 1934]" 4 = 128

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  c'2 g4 e4 | a2 g8 b8 d8 c8~ | c2 g4 e4 |
  \break
  a2 f8 e8 d8 g8~ |
  g8 g8 g4 e8 d8 c8 f8~ | f2 d8 c8 b8 e8~ |
  \break
  \alternative { \volta 1 {
  e4. e8 e2~ | e1 |
  } \volta 2 {
  e4.\repeatTie e8 e2~ | e1 |
  } } }
  \sect "B"
  
  e'1 | \tuplet 3/2 { d4 c4 b4 } a4 e8 f8 | fs2 b2~ | b2 a2 |
  \break
  d1 | \tuplet 3/2 { c4 b4 a4 } g4 e8 f8 | g2 bf2 | a2 b2 |
  
  \sect "A3"

  c2 g4 e4 | a2 g8 b8 d8 c8~ | c2 g4 e4 | a2 f8 e8 d8 g8~ |
  \break
  g8 g8 g4 \tuplet 3/2 { e4 d4 c4 } | a'2 f8 e8 d4 | c'1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
