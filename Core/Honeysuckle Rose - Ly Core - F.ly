%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Honeysuckle Rose"
  subtitle = \instrument
  poet = "Andy Razaf"
  composer = "Fats Waller"
  copyright = \markup \small { \now " " "© 1929 Santly Bros., Inc." }
}

refrainLyrics = \lyricmode {
Ev -- 'ry hon -- ey -- bee fills with jeal -- ous -- y when they see you out with me,
I don't blame them, good -- ness knows, __ Hon -- ey -- suck -- le Rose. __

When you're pass -- in' by flow -- ers droop and sigh, And I know the reas -- on why,
You're much sweet -- er, good -- ness knows, __ Hon -- ey -- suck -- le Rose. __

Don't buy sug -- ar, you just __ have to touch my cup; __
You're my sug -- ar, it's sweet __ when you stir it up. __

When I'm tak -- in' sips from your tas -- ty lips, Seems the hon -- ey fair -- ly drips,
You're con -- fec -- tion good -- ness knows, __ Hon -- ey -- suck -- le Rose. __
}

refrainChords = \chordmode {
  g2:m7 c2:7 g2:m7 c2:7 g1:m7 c1:7
  f2:6 f2:7/a bf2:maj7 b2:m7.5-

  f2:6 bf2:9 a2:m7 af2:m7

  g2:m7 c2:7 g2:m7 c2:7 g1:m7 c1:7
  f2:6 f2:7/a bf2:maj7 b2:m7.5-

  f2:6 g2:m7 af2:dim7 f2:6/a

  c1:m7 f1:7 bf1:6 bf1:6 d1:m7 g1:7 c1:7 c1:7
  
  g2:m7 c2:7 g2:m7 c2:7 g1:m7 c1:7
  f2:6 f2:7/a bf2:maj7 b2:m7.5- f2:6
  \chordOpenParen{ bf2:9 }
  a2:m7
  \chordCloseParen{ af2:m7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast Swing [Coleman Hawkins 1937]" 4 = 185

  \sectStart "A1"

  c'8 bf8 d,8 f8 a2 |
  c8 bf8 d,8 f8 a2 |
  c8 bf8 d,8 f8 a4 a4 |
  a2 a8 g8 f8 d8 |
  \break
  f4 f4 f2~ | f2 a8 g8 f8 d8 |
  f1~ | f4 r4 r2 |

  \sect "A2"

  c'8 bf8 d,8 f8 a2 |
  c8 bf8 d,8 f8 a2 |
  c8 bf8 d,8 f8 a4 a4 |
  a2 a8 g8 f8 d8 |
  \break
  f4 f4 f2~ | f2 a8 g8 f8 d8 |
  f1~ | f4 r4 r2 |

  \sect "B"

  f2 g2 | gs2 a2 | r4 bf8 c8~ c8 bf8 c4 | df4 c8 bf8~ bf2 |
  \break
  g2 a2 | as2 b2 | r4 c8 d8~ d8 c8 d4 | ef4 d8 c8~ c2 |

  \sect "A3"

  c8 bf8 d,8 f8 a2 |
  c8 bf8 d,8 f8 a2 |
  c8 bf8 d,8 f8 a4 a4 |
  a2 a8 g8 f8 d8 |
  \break
  f4 f4 f2~ | f2 a8 g8 f8 d8 | f1~ | f4 r4 r2 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
