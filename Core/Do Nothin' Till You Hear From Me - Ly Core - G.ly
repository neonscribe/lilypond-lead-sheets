%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = " Do Nothin' Till You Hear From Me"
  subtitle = \instrument
  poet = "Bob Russell"
  composer = "Duke Ellington"
  copyright = \markup \small "© 1943 Famous Music Corporation"
}

refrainLyrics = \lyricmode {
Do noth -- in' till you hear from me.
Pay no at -- ten -- tion to what's said.
Why peo -- ple tear the seam of an -- y -- one's dream __
is o -- ver my head. __
Do noth -- in' till you hear from me.
At least con -- sid -- er our ro -- mance.
If you should take the word of oth -- ers you've heard __
I have -- n't a chance. __
True I've been seen with some -- one new
But does that mean that I'm un -- true?
When we're a -- part the words in my heart re -- veal how I feel a -- bout you. __
Some kiss may cloud my mem -- o -- ry.
And oth -- er arms may hold a thrill.
But please do noth -- in' till you hear it from me. __
And you nev -- er will. __
}

refrainChords = \chordmode {
  s1
  g1:maj7 d2:m7 g2:7 c1:maj7 c2:m7 f2:7
  g2:maj7 e2:7.5+ a2:7 d2:7 g1:maj7 d4:7 r2.

  g1:maj7 d2:m7 g2:7 c1:maj7 c2:m7 f2:7
  g2:maj7 e2:7.5+ a2:7 d2:7 g1:maj7 f2:m7 bf2:7

  ef1:maj7 f2:m7 bf2:7 ef1:maj7 ef1:7
  g1:maj7 e1:m7 a1:7 d4:7 r2.

  g1:maj7 d2:m7 g2:7 c1:maj7 c2:m7 f2:7
  g2:maj7 e2:7.5+ a2:7 d2:7 g2:maj7 e2:7
  a2:m7
  d2:7
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 115

  r8 c8 a8 as8 b8 d8 c8 a8 |
  
  \bar "||-||"

  \xTextMark \markup{ \bold \box "A1" }

  \set Score.currentBarNumber = #1

  b1 | r8 c8 a8 as8 b8 d8 c8 a8 | b1 | r8 c8 a8 as8 b8 d8 c8 a8 |
  b8 g8 d8 c8~ c2 | r4 bf'4 b8 d,8 e8 g8~ | g1 | r8 c8 a8 as8 b8 d8 c8 a8 |

  \sect "A2"

  b1 | r8 c8 a8 as8 b8 d8 c8 a8 | b1 | r8 c8 a8 as8 b8 d8 c8 a8 |
  b8 g8 d8 c8~ c2 | r4 bf'4 b8 d,8 e8 g8~ | g1 | r2 r8 g8 g8 g8 |

  \sect "B"
  
  bf1 | g8 bf8 g8 g4 g8 g8 g8 | bf1 | g8 bf8 g8 g4 g8 g8 g8 |
  d'2. r8 d,8 | e8 g8 b8 fs2 g8 | a8 f8 fs8 a4 as8 b8 d8 |
  r8 c8 a8 as8 b8 d8 c8 a8 |
  
  \sect "A3"
  
  b1 | r8 c8 a8 as8 b8 d8 c8 a8 | b1 | r8 c8 a8 as8 b8 d8 c8 a8 |
  b8 g8 d8 c8~ c2 |
  \textToCodaLastTime
  r4 bf'4 b8 d,8 e8 g8~ | g1 | r1 |

  \bar "|."
  \pageBreak
}

soloChords = \chordmode {
  g1:maj7 d2:m7 g2:7 c1:maj7 c2:m7 f2:7
  g2:maj7 e2:7 a2:7 d2:7

  g1:maj7 a2:m7 d2:7

  g1:maj7 d2:m7 g2:7 c1:maj7 c2:m7 f2:7
  g2:maj7 e2:7 a2:7 d2:7

  g1:maj7 f2:m7 bf2:7
  
  ef1:maj7 f2:m7 bf2:7 ef1:maj7 ef1:7
  g1:maj7 b2:m7 e2:7 a1:7 d1:7

  g1:maj7 d2:m7 g2:7 c1:maj7 c2:m7 f2:7
  g2:maj7 e2:7 a2:7 d2:7
  g2:maj7 e2:7 a2:m7 d2:7

  g1:maj7 d4:7 r2.
}

soloKey = g

soloMelody = \relative f' {
  \time 4/4
  \key \soloKey \major
  \clef \whatClef
  
  \xTextMark \markup{ "Solos" \bold \box "A1" }

  \bar ".|:"
  
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "||-||"
  \break
  \xTextMark \markup{ \bold \box "A2" }
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||-||"
  \break
  \xTextMark \markup{ \bold \box "B" }
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||-||"
  \break
  \xTextMark \markup{ \bold \box "A3" }
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \alternative {
    { \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | }
    { \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | }
    }

  \bar "|."
}

codaLyrics = \lyricmode {
  And you nev -- er will,
  But please do noth -- in' till you hear it from me. __
  And you nev -- er will. __
}

codaChords = \chordmode {
  a2:7 d2:7 b1:7 e1:7 g2 e2:7.5+ a2:7 d2:7 g1:maj7
}

codaKey = g

codaMelody = \relative f {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef
  \textCoda

  \set Score.currentBarNumber = #30

  r4 bf4 b8 d,8 e8 b'8~ | b1 | r8 c8 a8 as8 b8 d8 c8 as8 |
  b8 g8 d8 c8~ c2 |
  r4 bf'4 b8 d,8 e8 g8~ | g1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\include "../Include/solo.ily"

\include "../Include/coda.ily"
