%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Emily"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Johnny Mandel"
  copyright = \markup \small "© 1964 Metro-Goldwyn-Mayer, Inc."
}

refrainLyrics = \lyricmode {
Em -- i -- ly, Em -- i -- ly,
Em -- i -- ly __ has the mur -- mur -- ing sound of May. __
All sil -- ver bells, cor -- al shells, car -- ou -- sels __
and the laugh -- ter of chil -- dren at play.
Say Em -- i -- ly, Em -- i -- ly,
Em -- i -- ly __ and we fade to a mar -- vel -- ous view.
Two lov -- ers a -- lone and out of sight __
see -- ing im -- ag -- es __ in the fire -- light. __
As my eyes vis -- ual -- ize a fam -- i -- ly, __
they see dream -- i -- ly, Em -- i -- ly too. __
}

refrainChords = \chordmode {
  c2.:maj7 a2.:m7 d2.:m7 g2.:7
  c2. g2:m7/c c4:7.9- f2.:maj7 f2.:m6
  a2./cs fs2.:m7 b2.:m7 b2:m7/e e4:7.9-
  a2.:m7 d2.:9 d2.:m7/g g2.:7.5+.9-
  
  c2.:maj7 a2.:m7 d2.:m7 g2.:7
  c2.:maj9 c2.:7 f2.:maj7 b2:m7/e e4:7.9- 
  a2.:m b2:7.5+.9- b4:7.9- e2.:m7 a2:9 cs4:dim7
  d2.:m7 g2.:7 e2.:m7 a2.:9
  
  fs2.:m7.5- f2.:m7 e2.:m7 a2.:9
  d2.:m7 g2.:9 c2.:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Jazz Waltz [Bill Evans 1968]" 4 = 150

  \xTextMark \markup{ \bold \box "A1" }
  
  e8 b'8 g2 | e8 b'8 g2 | e8 b'8 g2~ | g4 e4. d8 |
  \break
  c4. d8 e4 | a2 g4 | c,2.~ | c2 d4 |

  \sect "B"
  
  e8 a,8 a2 | e'8 a,8 a2 | e'8 a,8 a2~ | a4 a4 b4 |
  \break
  c4 d4 e4 | d'4 c4 a4 | d,2. | ds2. |
  
  \sect "A2"
  
  e8 b'8 g2 | e8 b'8 g2 | e8 b'8 g2~ | g4 g4 f4 |
  \break
  e4. f8 g4 | e'4. d8 c4 | a2. | b2. |
  
  \sect "C"
  
  c4 b4 a4 | g2 fs4 | g8 a8 b2~ | b4 a4 g4 |
  \break
  f8 g8 a2~ | a4 g4. f8 | e8( f8) g2~ | g4 a4 b4 |
  
  \sect "D"
  
  c4 b4 a4 | g2 f4 | e8 b'8 g2~ | g4 g4 f4 |
  \break
  e8 b'8 g2 | e8 b'8 g2 | c2.~ | c2 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
