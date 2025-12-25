%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Something to Live For"
  subtitle = \instrument
  poet = ""
  composer = "Duke Ellington, Billy Strayhorn"
  copyright = \markup \small { \now " " "© 1939 Mills Music, Inc. Billy Strayhorn Songs Inc." }
}

refrainLyrics = \lyricmode {
I want some -- thing to live for. __
Some -- one to make my life an ad -- ven -- tu -- rous dream.
Oh, what would -- n't I give for __
some -- one who'd take my life
and make it seem gay as they say it ought to be. __
Why can't I have love like that brought to me? __
My eye is watch -- ing the noon crowds. __
Search -- ing the prom -- en -- ades seek -- ing a clue
to the one who will some -- day __
be my some -- thing to live for. __
}

refrainChords = \chordmode {
  d2:maj7 a2:7.9- d1:maj7 d1:m7 d2:m7 af2:7
  g2 d2:7/a g2/b c2:7 d2:maj7 f2:7 e2:m7 a2:7

  d2:maj7 a2:7.9- d1:maj7 d1:m7 d2:m7 af2:7
  g2 d2:7/a g2/b g2

  fs1:7 fs2:7 g4:7 fs4:7 b1:7 b1:7
  a2/e fs2:m7 bf2:7.11+ e2:7.9- ef1:7 ef2:7 a2:7

  d2:maj7 a2:7.9- d1:maj7 d1:m7 d2:m7 af2:7
  g2 d2:7/a g2/b g2:maj7 df1:7.9- df1:7.9-
  
  fs1:7 b1:m7 e2:7.5- a4:7 fs4:9 f4:9 e4:9 f2:dim7
  fs2:m7 f2:7 e2:m7 a2:7 d2:maj7 a2:7.9- d1:maj7
}

refrainKey = d

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Carmen McRae 1955]" 4 = 72

  \sectStart "A1"
  
  cs'1 | r4 r8 cs8 e4~ \tuplet 3/2 { e8 cs8 e8 } | c4. c8~ c2 | r2 \tuplet 3/2 { e4 c4 ef4 } |
  \break
  d4. d,8 e2 | r4 \tuplet 3/2 { r8 d8 e8 } \tuplet 3/2 { g4 a4 bf4 } | a1 | r1 |
  
  \sect "A2"

  cs1 | r4 r8 cs8 e4~ \tuplet 3/2 { e8 cs8 e8 } | c4. c8~ c2 | r2 \tuplet 3/2 { e4 c4 ef4 } |
  \break
  d4. d,8 e2 | r2 \tuplet 3/2 { g4 b4 d4 } |

  \sect "B"

  fs1 | \tuplet 3/2 { fs4 fs4 fs4 } g4. fs8 | cs4. cs8 cs2~ | cs1 |
  \break
  e1 | \tuplet 3/2 { e4 e4 e4 } \tuplet 3/2 { f4 f4 e4 } | bf4. bf8 bf2~ | bf2 a2 |

  \sect "A3"

  cs1 | r4 r8 cs8 e4~ \tuplet 3/2 { e8 cs8 e8 } | c4. c8~ c2 | r2 \tuplet 3/2 { e4 c4 ef4 } |
  \break
  d4. d,8 e2 | r2 \tuplet 3/2 { fs4 g4 b4 } | d1 | r2 \tuplet 3/2 { r4 cs4 d4 } |

  \sect "C"
  
  fs1 | r2 e4. d8 | bf2 cs2~ | cs2 b2 |
  \break
  a1 | b2 cs4. d8 | e4. cs8~ cs2~ | cs1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
