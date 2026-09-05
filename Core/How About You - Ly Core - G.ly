%% -*- Mode: LilyPond -*-

songID = "2026-09-03T22:31:22.454763Z"

\include "../Include/lead-sheets.ily"

headerTitle = "How About You"
headerSubtitle = \subtitle
headerPoet = "Ralph Freed"
headerComposer = "Burton Lane"
headerCopyright = "© 1941 Leo Feist, Inc."

refrainLyrics = \lyricmode {
I like New York in June, how a -- bout you? __
I like a Gersh -- win tune, how a -- bout you? __
I love a fi -- re -- side when a storm is due. __
I like po -- ta -- to chips, moon -- light and mo -- tor trips, how a -- bout you? __

I'm mad a -- bout good books, can't get my fill. __
And Frank -- lin Roose -- velt's looks give me a thrill. __

Hold -- ing hands in the mo -- vie show when all the lights are low may not be new,
but I like it, how a -- bout you? __
}

refrainChords = \chordmode {
  g2:6 g2:maj7 g2/b bf2:dim7 a1:m7 d1:7
  g2:6 c2:9 g2/b fs2:7/as b1:m7.5- e1:7.9-.5+
  
  a1:7 c1:m6 g1:maj7 g1:maj7
  b2 b2:6 cs2:m7 fs2:7 b2:maj7 b2:6 a2:m7 d2:7

  g2:6 g2:maj7 g2/b bf2:dim7 a1:m7 d1:7
  g1:sus9 g1:sus9 c1:maj7 c1:m
  
  g1/b bf2:m7 ef2:7 a2:m7 a2:m7/g fs2:m7 b2:7
  e1:m7 a2:m7 d2:9 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Frank Sinatra 1956]" 120

  \sectNoBar "A1"

  g2 a4 fs4 | g4 a4 fs2 | e4 r8 e8 e4 b'4~ | b1 |
  \break
  g2 a4 fs4 | g4 a4 fs2 | f4 r8 f8 f4 c'4~ | c1 |

  \sect "B"

  b2 a4 g4 | a4 b4 g2 | a8 b8 g4 g4 g4~ | g1 |
  \break
  fs4 fs8 fs8 fs8 fs8 fs4 | fs4 fs8 fs8 fs8 fs8 fs4 | ds'4 r8 b8 b4 b4~ | b1 |

  \sect "A2"

  g2 a4 fs4 | g4 a4 fs2 | e4 r8 e8 e4 b'4~ | b1 |
  \break
  d2 e4 c4 | d4 e4 c2 | b4 r8 b8 b4 a4~ | a2 b4 c4 |

  \sect "C"
  
  d4 g,8 g8 g8 g8 g4 | ef'4 g,8 g8 g8 g8 g4 | r4 e'4 d4 c4 | b2. a4 |
  \break
  g2 a4 fs4 | g4 e'4 fs,2 | g1~ | g4 r4 r2 |

  \bar "|."
}

\include "../Include/refrainonly.ily"
