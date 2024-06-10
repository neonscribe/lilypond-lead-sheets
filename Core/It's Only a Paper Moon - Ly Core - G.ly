%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "It's Only a Paper Moon"
  subtitle = \instrument
  poet = "Billy Rose & E.Y. Harburg"
  composer = "Harold Arlen"
  copyright = "© 1933 Anne Rachel Music Corp"
}

refrainLyrics = \lyricmode {
Say, its on -- ly a pa -- per moon, __
Sail -- ing o -- ver a card -- board sea, __
But it would -- n't be make- -- be -- lieve, __
If you be -- lieved in me. __
Yes, it's on -- ly a can -- vas sky, __
Hang -- ing o -- ver a mus -- lin tree, __
But it would -- n't be make- -- be -- lieve, __
If you __ be -- lieved __ in me. __
With -- out your love,
It's a hon -- ky- -- tonk pa -- rade,
With -- out your love,
It's a mel -- o -- dy played in a pen -- ny ar -- cade.
It's a Bar -- num and Bai -- ley world, __
Just as pho -- ny as it can be, __
But it would -- n't be make -- be -- lieve __
If you __ be -- lieved __ in me. __
}

refrainChords = \chordmode {
  g2:maj7 e2:7 a2:m7 d2:7 a2:m7 d2:7 g2:maj7 a4:m7 d4:7
  d2:m7 g2:7 c2:maj7 a2:m7.5- d1:7 g2:6 a4:m7 d4:7

  g2:maj7 e2:7 a2:m7 d2:7 a2:m7 d2:7 g2:maj7 a4:m7 d4:7
  d2:m7 g2:7 c2:maj7 a2:m7.5- d1:7 g2:6 g2:7

  c2:maj7 cs:dim7 g2:maj7/d e2:7.5+ a2:m7.5- d2:13 g2:6 g2:7
  c2:maj7 cs:dim7 g1:maj7/d b2:m7.5- e2:7 a2:m7 d2:9

  g2:maj7 e2:7 a2:m7 d2:7 a2:m7 d2:7 g2:maj7 a4:m7 d4:7
  d2:m7 g2:7 c2:maj7 a2:m7.5- d1:7 g2:6
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 160

  \xTextMark \markup{ \bold \box "A1" }

  r8 d4 d8 d'8 d4 d8 | c4 b8 a8~ a2 | r8 d,4 d8 c'8 c4 c8 | b4 a8 g8~ g2 |
  r8 d4 d8 d'8 d4 ds8 | e4 c8 a8~ a4 g8 fs8~ | fs4 e'8 d8~ d4 fs,8 g8~ | g2 r2 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }

  r8 d4 d8 d'8 d4 d8 | c4 b8 a8~ a2 | r8 d,4 d8 c'8 c4 c8 | b4 a8 g8~ g2 |
  r8 d4 d8 d'8 d4 ds8 | e4 c8 a8~ a4 g8 fs8~ | fs4 e'8 d8~ d4 fs,8 g8~ | g2 r4 g4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }

  a2 bf2 | b2. c8 e8 | d4. d8 b4. b8 | g2. g4 |
  a2 bf2 | b2. as8 b8 | d8 d8 d4 d4 as8 b8 | e8 e8 e4 e2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  r8 d,4 d8 d'8 d4 d8 | c4 b8 a8~ a2 | r8 d,4 d8 c'8 c4 c8 | b4 a8 g8~ g2 |
  r8 d4 d8 d'8 d4 ds8 | e4 c8 a8~ a4 g8 fs8~ | fs4 e'8 d8~ d4 fs,8 g8~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
