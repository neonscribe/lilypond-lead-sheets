%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Love Is Just Around the Corner"
  subtitle = \instrument
  poet = "Leo Robin"
  composer = "Lewis E. Gensler"
  copyright = \markup \small { \now " " "© 1934 Famous Music Corporation" }
}

refrainLyrics = \lyricmode {
Love is just a -- round the cor -- ner, an -- y coz -- y lit -- tle cor -- ner,
love is just a -- round the cor -- ner when I'm a -- round you.

I'm a sen -- ti -- men -- tal mourn -- er, and I could -- n't be for -- lorn -- er,
when you keep me on a cor -- ner just wait -- ing for you.

Ve -- nus de Mi -- lo was not -- ed for her charms.
But strict -- ly be -- tween us, you're cut -- er than Ve -- nus and what's more you've got arms.

So let's go cud -- dle in a cor -- ner, an -- y coz -- y lit -- tle cor -- ner,
love is just a -- round the cor -- ner and I'm a -- round you.
}

refrainChords = \chordmode {
  g2:7 c2:7 f4:maj7 \chordSlash 1 d4:7 \chordSlash 1 g2:7 c2:7 f4:maj7 \chordSlash 1 d4:7 \chordSlash 1 
  g2:7 c2:7 a4:m7 \chordSlash 1 d4:7 \chordSlash 1 g2:7 c2:7 f2:6 d2:7

  g2:7 c2:7 f4:maj7 \chordSlash 1 d4:7 \chordSlash 1 g2:7 c2:7 f4:maj7 \chordSlash 1 d4:7 \chordSlash 1
  g2:7 c2:7 a4:m7 \chordSlash 1 d4:7 \chordSlash 1 g2:7 c2:7 f1:6

  e2:m7 a2:7 d1:m7 e2:m7 a2:7 d1:m7
  g2:7 g2:dim7 g2:7 g2:dim7  g1:7 c1:7

  g2:7 c2:7 f4:maj7 \chordSlash 1 d4:7 \chordSlash 1 g2:7 c2:7 f4:maj7 \chordSlash 1 d4:7 \chordSlash 1
  g2:7 c2:7 a4:m7 \chordSlash 1 d4:7 \chordSlash 1 g2:7 c2:7 f2:6
  \chordInsideParens{ d2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra 1962]" 4 = 132

  \xTextMark \markup{ \bold \box "A1" }
  
  g4 g4 g8 fs8 g8 a8 | f4 c'2. | r4 g8 fs8 g8 fs8 g8 a8 | f4 c2. |
  \break
  g'4 g4 g8 fs8 g8 a8 | f4 c'2 d4 | a2 r8 f8 g4 | f2 r2 |
  
  \sect "A2"
  
  g4 g4 g8 fs8 g8 a8 | f4 c'2. | r4 g8 fs8 g8 fs8 g8 a8 | f4 c2. |
  \break
  g'4 g4 g8 fs8 g8 a8 | f4 c'2 d4 | a2 r8 f8 g4 | f2 r2 |
  
  \sect "B"
  
  a2 a4. g8 | f4 d2 a'4 | fs4-. a4 g4-. a4 | d,2. r8 fs8 |
  \break
  g8 g4 g8 g8 g4 g8 | g8 g4 g8 g8 g4 g8 | g4 gs4 a4 b4 | c2. c,4 |
  
  \sect "A3"

  g'4 g4 g8 fs8 g8 a8 | f4 c'2. | r4 g8 fs8 g8 fs8 g8 a8 | f4 c2. |
  \break
  g'4 g4 g8 fs8 g8 a8 | f4 c'2 d4 | a2 r8 f8 g4 | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
