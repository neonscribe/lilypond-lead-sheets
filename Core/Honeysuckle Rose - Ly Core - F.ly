%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Honeysuckle Rose"
  subtitle = \instrument
  poet = "Andy Razaf"
  composer = "Fats Waller"
  copyright = "© 1929 Santly Bros., Inc."
}

refrainLyrics = \lyricmode {
  Ev -- 'ry hon -- ey -- bee fills with jeal -- ous -- y when they see you out with me,
  I don't blame them, good -- ness knows, Hon -- ey -- suck -- le Rose.
  When you're pass -- in' by flow -- ers droop and sigh, And I know the reas -- on why,
  You're much sweet -- er, good -- ness knows, Hon -- ey -- suck -- le Rose.
  Don't buy sug -- ar, you just have to touch my cup;
  You're my sug -- ar, it's sweet when you stir it up.
  When I'm tak -- in' sips from your tas -- ty lips, Seems the hon -- ey fair -- ly drips,
  You're con -- fec -- tion good -- ness knows, Hon -- ey -- suck -- le Rose.
}

refrainChords = \chordmode {
  g2:m7 c2:7 g2:m7 c2:7 g2:m7 c2:7 g2:m7 c2:7
  f2:6 f2:7/a bf2:6 c2:7 f2:6 bf2:7 a2:m7 d2:7
  g2:m7 c2:7 g2:m7 c2:7 g2:m7 c2:7 g2:m7 c2:7
  f2:6 f2:7/a bf2:6 c2:7 f2:6
  \chordInsideParens{ c2:7 }
  f1:6
  
  f1:7 c2:m7 f2:7 bf1:6 bf1:6
  g1:7 g1:7 c1:7 c1:7
  g2:m7 c2:7 g2:m7 c2:7 g2:m7 c2:7 g2:m7 c2:7
  f2:6 f2:7/a bf2:6 c2:7 f1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = f

refrainMelody = \relative c'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Swing" 4 = 150

  c8 bf8 d,8 f8 a2 |
  \noBreak
  c8 bf8 d,8 f8 a2 |
  \noBreak
  c8 bf8 d,8 f8 a4 a4 |
  \break
  a2 a8 g8 f8 d8 |
  \noBreak
  f4 f4 f2~ | f2 a8 g8 f8 d8 | f1 | r1 |
  \bar "||"
  \break
  c'8 bf8 d,8 f8 a2 |
  \noBreak
  c8 bf8 d,8 f8 a2 |
  \noBreak
  c8 bf8 d,8 f8 a4 a4 | 
  \break
  a2 a8 g8 f8 d8 |
  \noBreak
  f4 f4 f2~ | f2 a8 g8 f8 d8 | f1 | r1 |
  \bar "||"
  \break
  f2 g2 | af2 a2 | r4 bf8 c4 bf8 c4 | df4 c8 bf8~ bf2 |
  \break
  g2 a2 | bf2 b2 | r4 c8 d4 c8 d4 | ef4 d8 c8~ c2 |
  \bar "||"
  \break
  c8 bf8 d,8 f8 a2 |
  \noBreak
  c8 bf8 d,8 f8 a2 |
  \noBreak
  c8 bf8 d,8 f8 a4 a4 |
  \break
  a2 a8 g8 f8 d8 |
  \noBreak
  f4 f4 f2~ | f2 a8 g8 f8 d8 | f1 | r1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
