%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:48.889335Z"

\include "../Include/lead-sheets.ily"

\header {
  title = "Rosetta"
  subtitle = \subtitle
  poet = ""
  composer = "Earl Hines and Henri Woode"
  copyright = \markup \small { \now " " "© 1933 Morley Music Co., Inc." }
}

refrainLyrics = \lyricmode {
Ro -- set -- ta, __ my Ro -- set -- ta, __
in my heart, dear, there's no one but you. __
You told me __ that you loved me. __
Nev -- er leave me for some -- bod -- y new.
You've made my whole life a dream; __
I pray you'll make it come true.
Ro -- set -- ta, __ my Ro -- set -- ta, __
please say I'm just the one, dear, for you.
}

refrainChords = \chordmode {
  s4

  f1:6 e1:7 ef1:7 d1:7
  g1:7 c1:7 a2:m7 d2:7 g2:m7 c2:7

  f1:6 e1:7 ef1:7 d1:7
  g1:7 c1:7 f1:6 b2:m7.5- e2:7

  a1:m b2:m7.5- e2:7 a1:m d2:m7 g2:7
  c2:maj7 a2:m7 d2:m7 g2:7 g1:m7 c1:7

  f1:6 e1:7 ef1:7 d1:7
  g1:7 c1:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Teddy Wilson 1935]" 132

  \partial 4 a4 |

  \sectNoBreak "A1"

  c4 c2.~ | c2 e4 d4 | a4 a2.~ | a2 e'4 d4 |
  \break
  a4 a2 d,4 | a'4 a2 e4 | d1~ | d2. a'4|

  \sect "A2"

  c4 c2.~ | c2 e4 d4 | a4 a2.~ | a2 e'4 d4 |
  \break
  a4 a2 d,4 | a'4 a2 d,4 | f1 | r1 |

  \sect "B"

  a2 a4 a4 | b2 b4 b4 | c1~ | c2 r2 |
  \break
  e2 e4 e4 | d2 g,4 g4 | c1 | r2 r4 a4 |

  \sect "A3"

  c4 c2.~ | c2 e4 d4 | a4 a2.~ | a2 e'4 d4 |
  \break
  a4 a2 d,4 | a'4 a2 d,4 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
