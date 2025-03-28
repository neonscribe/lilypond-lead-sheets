%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Minority"
  subtitle = \instrument
  poet = ""
  composer = "Gigi Gryce"
  copyright = \markup \small "© 1953 Twenty-Eighth Street Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1:m6 f1:m6 g1:m7 c1:7
  f1:m6 f1:m6 c1:m7 f1:7
  
  bf1:m7 ef1:7 af1:m7 df1:7
  fs1:m7 b1:7 g1:m7 c1:7.5+

  f1:m6 f1:m6 g1:m7 c1:7
  f1:m6 f1:m6 c1:m7 f1:7
  
  bf1:m7 ef1:7 af1:m7 df1:7
  fs1:m7 b1:7 g1:m7 c1:7.5+
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up Swing [Cannonball Adderley 1958]" 4 = 250

  \sectStart "A1"
  
  g2.~ g8 f8 | r2 d8 e8 f8 g8 | a2 a4. g8 | a8 c8 r8 a8~ a2 |
  \break
  g2.~ g8 f8 | r2 f8 g8 bf8 c8 | d2 d4. c8 | d8 f8 r8 d8~ d2 |
  
  \sect "B1"
  
  c4-. r4 c4. bf8 | c8 ef8 r8 c8~ c2 | r8 bf8 r4 bf4. af8 | bf8 df8 r8 bf8~ bf4 r4 |
  \break
  af2 af4. af8 | r2 f8 gf8 r8 af8 | a2 a4. a8 | r2 c8 af8 e8 c8 |

  \sect "A2"

  g'2.~ g8 f8 | r2 d8 e8 f8 g8 | a2 a4. g8 | a8 c8 r8 a8~ a2 |
  \break
  g2.~ g8 f8 | r2 f8 g8 bf8 c8 | d2 d4. c8 | d8 f8 r8 d8~ d2 |
  
  \sect "B2"

  c4-. r4 c4. bf8 | c8 ef8 r8 c8~ c2 | r8 bf8 r4 bf4. af8 | bf8 df8 r8 bf8~ bf4 r4 |
  \break
  af2 af4. af8 | r2 f8 gf8 r8 af8 | a2 a4. a8 | r1 |

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |

  s1 | s1 | r8 f8 s2. | s1 |
  s1 | s1 | s1 | s1 |

  s1 | s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |

  s1 | s1 | r8 f8 s2. | s1 |
  s1 | s1 | s1 | s1 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-kicks.ily"
