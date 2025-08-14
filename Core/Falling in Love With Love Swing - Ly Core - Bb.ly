%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Falling in Love With Love (4/4)"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1938 Chappell & Co."
}

refrainLyrics = \lyricmode {
Fall -- ing in love with love is fall -- ing for make be -- lieve. __
Fall -- ing in love with love is play -- ing the fool. __
Car -- ing too much is such a ju -- ve -- nile fan -- cy.
Learn -- ing to trust is just for chil -- dren in school. __

I fell in love with love with love ev -- er last -- ing, __ but love fell out with me. __
}

refrainLyricsTwo = \lyricmode {
I fell in love with love one night when the moon was full. __
I was un -- wise with eyes un -- a -- ble to see. __ ""
}

refrainChords = \chordmode {
  bf1:maj7 d2:m7 g2:7
  c1:m7 f1:7 c1:m7 f1:7
  bf1:maj7 c2:m7 f2:7
  

  bf1:maj7 bf1:maj7 a1:m7.5- d1:7.9+
  g1:m7 c1:7 c1:m7 f1:7

  bf1:maj7 ef1:maj7 af1:7.11+ g1:7.9-
  c2:m7 g2:7.9- c2:m7 f2:7 bf1:maj7
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Clifford Brown 1953]" 4 = 172
  
  \sectStart "A1,A2"

  \bar ".|:"
  \repeat volta 2 {
  \tuplet 3/2 { c4 d4 d4 } d4. d8 | d4. d8 \tuplet 3/2 { d4 ef4 f4 } | f4 g8 c,8~ c2~ | c2. r4 |
  \break
  \tuplet 3/2 { ef4 f4 f4 } f4. f8 | f4. f8 \tuplet 3/2 { f4 g4 a4 } | d1~ | d2. r4 |
  \break

  \sect "B"

  \alternative { \volta 1 {
  \tuplet 3/2 { c4 d4 d4 } d4. d8 |
  d4. d8 \tuplet 3/2 { d4 c4 bf4 } | d,1 | d2. r4 |
  \break
  \tuplet 3/2 { bf'4 c4 c4 } c4. c8 | c4. c8 \tuplet 3/2 { c4 bf4 a4 } | c,1~ | c4 r4 r2 |
  } \volta 2 {

  \sectNoBar "C"

  \tuplet 3/2 { c4 d4 d4 } d4. d8 |
  d'4. d8 \tuplet 3/2 { d4 c4 bf4 } | d,2 d2~ | d2 d'2 | 
  \break
  c2 d2 | ef2 f2 | f1~ | f2 r2 |
  } } }
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
