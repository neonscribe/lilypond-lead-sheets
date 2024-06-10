%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Coquette"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Carmen Lombardo and John Green"
  copyright = "© 1928 Leo Feist Inc."
}

refrainLyrics = \lyricmode {
}

refrainDFBChords = \chordmode {
  d1 d1 e1:m7 a1:7 e1:m7 a1:7 d2 b2:7 e2:m7 a2:7
  d1 d1 e1:m7 a1:7 e1:m7 a1:7 d1 d1
  a1:m7 d1:7 g1 g1 b1:m7 e1:7 e1:m7 a1:7
  d1 d1 e1:m7 a1:7 e1:m7 a1:7 d2 b2:7 e2:m7 a2:7
}

refrainRNChords = \chordmode {
  d1:6.9 d1:6.9 e1:m7 a1:13.9-
  e1:m7 a1:13.9- fs2:m7 b2:13.9- e2:m7 a2:13.9-

  d1:6.9 d1:6.9 e1:m7 a1:13.9-
  e1:m7 a1:13.9- d1:6.9 d1:6.9
  
  a1:m7 d1:7 g2:maj7 a2:7 as2:dim7 g2/b
  b1:m7 e1:7 e1:m7 a1:13.9-
  
  d1:6.9 d1:6.9 e1:m7 a1:13.9-
  e1:m7 a1:13.9- fs2:m7 b2:13.9- e2:m7 a2:13.9-
}

%%% refrainChords = \refrainDFBChords
refrainChords = \refrainRNChords

refrainKey = d

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing" 4 = 180

  \xTextMark \markup{ \bold \box "A1" }
  
  d2 b2 | d8 b8 d8 b8~ b8 fs8 g8 gs8 | a4 a8 fs8~ fs2 | r2 r8 fs8 g8 gs8 |
  \break
  a4 a8 fs8~ fs2 | a8 fs8 a8 fs8~ fs8 a,8 as8 b8~ | b1 | r1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d'2 b2 | d8 b8 d8 b8~ b8 fs8 g8 gs8 | a4 a8 fs8~ fs2 | r2 r8 fs8 g8 gs8 |
  \break
  a4 a8 fs8~ fs2 | a8 fs8 a8 fs8~ fs8 a,8 as8 b8~ | b1 | r1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d4. e8~ e2 | \tuplet 3/2 { e4 fs4 a4 } d4 b4 | \tuplet 3/2 { d4 b4 d4 } b4 d,8 e8~ | e1 |
  \break
  e4. fs8~ fs2 | \tuplet 3/2 { fs4 gs4 b4 } e4 cs4 | b2 a2 | b2 cs2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  d2 b2 | d8 b8 d8 b8~ b8 fs8 g8 gs8 | a4 a8 fs8~ fs2 | r2 r8 fs8 g8 gs8 |
  \break
  a4 a8 fs8~ fs2 | a8 fs8 a8 fs8~ fs8 a,8 as8 b8~ | b1 | r1 |

\bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
