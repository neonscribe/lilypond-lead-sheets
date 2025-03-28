%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "All of Me"
  subtitle = \instrument
  poet = ""
  composer = "Gerald Marks and Seymour Simons"
  copyright = \markup \small "© 1931 Bourne Co."
}

refrainLyrics = \lyricmode {
  All of me, __ why not take all of me, __
  Can't you see __ I'm no good with -- out you. __
  Take my lips __ I want to lose them. __
  Take my arms __ I'll nev -- er use them.
  Your good- bye __ left me with eyes that cry. __
  How can I __ go on dear with -- out you? __
  You took the part that once was my heart.
  So why not take all of me.
}

refrainRBOneChords = \chordmode {
  c1:maj7 c1:maj7 e1:7 e1:7
  a1:7 a1:7 d1:m d1:m
  e1:7 e1:7 a1:m a1:m
  d1:7 d1:7 d1:m7 g1:7
  
  c1:maj7 c1:maj7 e1:7 e1:7
  a1:7 a1:7 d1:m d1:m
  f1 f1:m c2:maj7 e2:m7 a1:7
  d1:m7 g1:7 c2:6
  \chordOpenParen{ ef2:dim7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainHLChords = \chordmode {
  c1:6 c1:6 e1:7 e1:7
  a1:7 a1:7 d1:m7 d1:m7
  e1:7 e1:7 a1:m7 a1:m7
  d1:7 d1:7 d1:m7 g1:7
  
  c1:6 c1:6 e1:7 e1:7
  a1:7 a1:7 d1:m7 d1:m7
  f1:6 f1:m6 c2:maj7 e2:m7.5-/bf a1:7
  d1:m7 g1:7 c2:6
  \chordOpenParen{ ef2:dim7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainChords = \refrainHLChords

refrainKey = c

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Billie Holiday 1941]" 4 = 110
  
  \sectStart "A1"
  
  c4 g8 e8~ e2~ | e2 \tuplet 3/2 { c'4 d4 c4 } | b4 gs8 e8~ e2~ | e1 |
  \break
  a4. g8 e2~ | e4 ds4 \tuplet 3/2 { e4 bf'4 a4 } | g2 f2~ | f1 |

  \sect "B"
  
  e4. ef8 d2~ | d2 \tuplet 3/2 { e4 gs4 b4 } | d2 c2~ | c1 |
  \break
  b4. bf8 a2~ | a2 \tuplet 3/2 { a4 d4 b4 } | a1 | b1 |

  \sect "A2"
  
  c4 g8 e8~ e2~ | e2 \tuplet 3/2 { c'4 d4 c4 } | b4 gs8 e8~ e2~ | e1 |
  \break
  a4. g8 e2~ | e4 ds4 \tuplet 3/2 { e4 bf'4 a4 } | g2 f2~ | f1 |

  \sect "C"
  
  d'2 c4 b4 | d2. c4 | b2 e,4 g4 | b2. a4 |
  \break
  c2 a4 c4 | e2 e2 | c1~ | c1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
