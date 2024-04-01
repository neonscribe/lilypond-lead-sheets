%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Almost Like Being in Love"
  subtitle = \instrument
  poet = "Alan Jay Lerner"
  composer = "Frederick Lowe"
  copyright = "© 1947 Lerner & Lowe"
}

refrainLyricsOne = \lyricmode {
What a day this has been!
What a rare mood I'm in!
Why, it's al -- most like be -- ing in love. __
There's a

mu -- sic of life seems to be, __
like a bell that is ring -- ing for me. __
And from the way that I feel
when the bell starts to peal,
why, it's al -- most like be -- ing in love. __ What a

al -- most like be -- ing,
I could swear I was fall -- ing, 
it's al -- most like be -- ing in love.
it's al -- most like be -- ing in love.
}

refrainLyricsTwo = \lyricmode {
_ _ smile on my face
for the whole hu -- man race.
Why, it's al -- most like be -- ing in love. __
All the
}

refrainChords = \chordmode {
  bf2:7

  ef1:maj7 f1:7 bf1:maj9 d2:m7 g2:7
  c1:m7 f2:sus9 f2:7.9- bf1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }

  a1:m7 d1:7 g1:maj7 g1:maj7
  g1:m7 c1:7 a1:m7 d1:7

  ef1:maj7 f1:7 bf1:maj9 d2:m7 g2:7
  c1:m7 f2:sus9 f2:7.9- bf1:6
  f2:m7
  bf2:7

  c1:m7 cs1:dim7 bf1:6/d cs1:dim7
  c1:m9 c2:m9 f2:7.9- d1:7 d2:7 cs2:dim7
  c1:m9 c2:m9 f2:7.9- bf1:6 bf1:6
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo 4 = 200
  
  \partial 2 bf4 c4 |

  \bar ".|:"
  \repeat volta 2 {

  \mark \markup{ \box "A1, A2" }
  
  d2 bf4 g4 | a2 a4 bf4 | c2 a4 f4 | g2 g4 a4 |
  \break
  r4 bf4 g4 a4 | bf4 g2 a4 | bf1~ | bf4 r4 bf4 c4 |
  }
  \break

  \mark \markup{ \box "B" }

  d2 a4 b4 | c2 e4 d4 | b1~ | b4 r4 g4 a4 |
  \break
  bf2 a4 bf4 | c4 g2 c4 | d1~ | d4 d4 d4 d4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d2 bf4 g4 | a2 a4 bf4 | c2 a4 f4 | g2 g4 \textToCodaLastTime a4 |
  \break
  r4 bf4 g4 a4 | bf4 g2 a4 | bf1~ | bf4 r4 bf4 c4 |

  \bar "|."

  \textCoda
  bf2 g4 a4 | bf4 g2 g8 a8 | bf2 g4 a4 | bf4 g2 bf4 |
  \break
  d2 bf4 c4 | d4 d4 c2 | d1~ | d2 r4  bf4 |
  \break
  d2 bf4 c4 | d4 d4 c2 | bf1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { First chorus: vocal } }
    \line { \huge { Clarinet solo A1 A2 } }
    \line { \huge { Guitar solo B A3 } }
    \line { \huge { Last chorus: vocal with coda } }
  }
}

\include "../Include/notes.ily"
