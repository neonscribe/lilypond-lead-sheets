%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Falling in Love With Love (3/4)"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1938 Chappell & Co."
}

refrainLyrics = \lyricmode {
Fall -- ing in love with love is fall -- ing for make be -- lieve. __
Fall -- ing in love with love is play -- ing the fool. __
Car -- ing too much is such a ju -- ve -- nile

fan -- cy. __
Learn -- ing to trust is just for chil -- dren in school. __

last -- ing, __ but love fell out with me. __
}

refrainLyricsTwo = \lyricmode {
I fell in love with love one night when the moon was full. __
I was un -- wise with eyes un -- a -- ble to see. __
I fell in love with love with love ev -- er
}

refrainChords = \chordmode {
  bf2.:maj7 bf2.:6 bf2.:maj7 b2.:dim7
  c2.:m7 f2.:7 c2.:m7 f2.:7
  c2.:m7 f2.:7 c2.:m7 f2.:7
  bf2.:maj7 bf2.:6 bf2.:maj7 bf2.:6
  bf2.:maj7 bf2.:6 bf2.:maj7 bf2.:6

  a2.:m7 d2.:7 a2.:m7 d2.:7
  g2.:m g2.:m7+ g2.:m7 c2.:7
  c2.:m7 c2.:m7 c2.:m7 f2.:7
  
  a2.:m7 d2.:7 af2.:7 g2.:7
  c2.:m7 g2.:7.9- c2.:m7 f2.:7
  
  bf2.:maj7 bf2.:maj7 bf2.:maj7 
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f4:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Helen Merrill 1955]" 4 = 144

  \bar ".|:"
  \repeat volta 2 {
  c4 d4 d4 | d2 d4 | d2 d4 | d4 ef4 f4 |
  f2 g4 | c,2.~ | c2.~ | c4 r4 r4 |
  \break
  ef4 f4 f4 | f2 f4 | f2 f4 | f4 g4 a4 |
  d2.~ | d2.~ | d2.~ | d4 r4 r4 |
  \break
  c4 d4 d4 | d2 d4 | d2 d4 | d4 c4 bf4 |
  \alternative { \volta 1 {
  d,2. | d2.~ | d2.~ | d4 r4 r4 |
  \break
  bf'4 c4 c4 | c2 c4 | c2 c4 | c4 bf4 a4 |
  c,2.~ | c2.~ | c2.~ | c4 r4 r4 |
  \break
  } \volta 2 {
  d2. | d2.~ | d2. | d'2. |
  c2. | d2. | ef2. | f2. |
  f2.~ | f2.~ | f2.~ | f4 r4 r4 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
