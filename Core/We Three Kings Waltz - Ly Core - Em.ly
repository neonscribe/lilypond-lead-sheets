%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "We Three Kings of Orient Are"
  subtitle = \instrument
  poet = ""
  composer = ""
  copyright = \markup \small ""
}

refrainLyrics = \lyricmode {
  We three kings of O -- ri -- ent are
  bear -- ing gifts, we tra -- verse a -- far,
  field and foun -- tain, moor and moun -- tain,
  fol -- low -- ing yon -- der star.
  
  O -- o
  
  star of won -- der, star of night,
  star with roy -- al beau -- ty bright.
  West -- ward lead -- ing, still pro -- ceed -- ing,
  guide us to thy per -- fect light.
}

refrainLyricsTwo = \lyricmode {
  Born a King on Beth -- le -- hem plain,
  gold I bring to crown Him a -- gain:
  King for -- ev -- er, ceas -- ing nev -- er,
  o -- ver us all to reign.
}

refrainChords = \chordmode {
  e2.:m7 e2.:m7 fs2:m7.5- b4:7.9- e2.:m7
  e2.:m7 e2.:m7 fs2:m7.5- b4:7.9- e2.:m7
  e2.:m7 d2.:9 g2.:maj7 c2.:maj7
  fs2.:m7.5- b2:7.5+ b4:7 e2.:m7 d2.:7
  
  g2.:6 e2.:m7 a2:m7 d4:9 g2.:6
  g2.:6 e2.:m7 a2:m7 d4:9 g2.:6
  e2.:m7 d2.:9 a2.:m7 d2.:9
  g2.:6 e2.:m7 a2:m7 d4:9 g2.:6
}

refrainKey = e

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Jazz Waltz" 4 = 160
  
  \xTextMark \markup{ \bold \box "A" }
  
  b2 a4 | g2 e4 | fs4 g4 fs4 | e2. |
  \break
  b'2 a4 | g2 e4 | fs4 g4 fs4 | e2. |
  \break
  g2 g4 | a2 a4 | b2 b4 | d4( c4) b4 |
  \break
  a4 b4 a4 | g2 fs4 | e2. | fs2 a4 |

  \sect "B"
  
  g2 g4 | g2 d4 | g2 e4 | g2. |
  \break
  g2 g4 | g2 d4 | g2 e4 | g2. |
  \break
  g2 g4 | a2 b4 | c2 b4 | a2 b4 |
  \break
  g2 g4 | g2 d4 | g2 e4 | g2. |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
