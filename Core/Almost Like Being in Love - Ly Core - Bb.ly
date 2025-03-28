%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Almost Like Being in Love"
  subtitle = \instrument
  poet = "Alan Jay Lerner"
  composer = "Frederick Lowe"
  copyright = \markup \small "© 1947 Lerner & Lowe"
}

refrainLyrics = \lyricmode {
What a day this has been!
What a rare mood I'm in!
Why, it's al -- most like be -- ing in love. __
There's a smile on my face
for the whole hu -- man race.
Why, it's al -- most like be -- ing in love. __

All the mu -- sic of life seems to be, __
like a bell that is ring -- ing for me. __

And from the way that I feel
when that bell starts to peal,
I could swear I was fall -- ing, 
I could swear I was fall -- ing, 
it's al -- most like be -- ing in love.
}

refrainLyricsTwo = \lyricmode {
_ _ smile on my face
for the whole hu -- man race.
Why, it's al -- most like be -- ing in love. __
All the
}

refrainNewRealChords = \chordmode {
  bf2:7

  ef1:maj7 f1:7 d1:m7 g1:7
  c1:m7 f2:sus9 f2:7.9- bf1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }

  ef1:maj7 f1:7 d1:m7 g1:7
  c1:m7 f2:sus9 f2:7.9- bf1:6 bf1:6

  a1:m7 d1:7 g1:maj7 g1:6
  g1:m7 c1:7 a1:m7 d1:7

  ef1:maj7 f1:7 d1:m7 g1:7
  c1:m7 cs1:dim7 bf1:6/d cs1:dim7
  c1:m7 c2:m9 f2:7.9- bf1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainHLChords = \chordmode {
  s2
  
  ef1:maj7 f1:7 d1:m7 g1:m7
  c1:m7 f2:sus9 f2:7.9- bf1:6 bf2:6 bf2:7.5+

  ef1:maj7 f1:7 d1:m7 g1:m7
  c1:m7 f2:sus9 f2:7.9- bf1:6 bf1:6

  a1:m7 d1:7 g1:maj7 g1:6
  g1:m7 c1:7 a1:m7 d1:7

  ef1:maj7 f1:7/ef d1:m7 g1:m7
  c1:m7 cs1:dim7 bf1:6/d cs1:dim7
  c1:m7 f2:sus9 f2:8.9- bf1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainChords = \refrainHLChords

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Nat King Cole 1953]" 4 = 180
  
  \partial 2 bf4 c4 |
  \bar "||"

  \sectStart "A1"
  
  d2 bf4 g4 | a2 a4 bf4 | c2 a4 f4 | g2 g4 a4 |
  \break
  r4 bf4 g4 a4 | bf4 g2 a4 | bf1~ | bf4 r4 bf4 c4 |

  \sect "A2"
  
  d2 bf4 g4 | a2 a4 bf4 | c2 a4 f4 | g2 g4 a4 |
  \break
  r4 bf4 g4 a4 | bf4 g2 a4 | bf1~ | bf4 r4 bf4 c4 |

  \sect "B"

  d2 a4 b4 | c2 e4 d4 | b1~ | b4 r4 g4 a4 |
  \break
  bf2 a4 bf4 | c4 g2 c4 | d1~ | d4 d4 d4 d4 |
  
  \sect "A3"

  d2 bf4 g4 | a2 a4 bf4 | c2 a4 f4 | g2 g4 a4 |
  \break
  bf2 g4 a4 | bf4 g2 g8 a8 | bf2 g4 a4 | bf4 g2 bf4 |
  \break
  d2 bf4 c4 | d4 d4 c2 | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
