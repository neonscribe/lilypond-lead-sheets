%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Sometime Ago"
  subtitle = \instrument
  poet = ""
  composer = "Sergio Mihanovich"
  copyright = \markup \small { \now " " "© 1963 Second Floor Music" }
}

refrainChords = \chordmode {
  c2.:maj7 d2.:m7/c c2.:maj7 d2.:m7/c 
  c2.:maj7 d2.:m7/c f2:m7 bf4:7 e2:m7 a4:7
  d2.:m g2.:7 e2:7.5+ e4:7 a2.:m7
  a2.:m7/d d2.:7 ef2:m7 af4:7 d2:m7 g4:7

  c2.:maj7 d2.:m7/c c2.:maj7 d2.:m7/c 
  c2.:maj7 d2.:m7/c f2:m7 bf4:7 e2:m7 a4:7
  d2.:m g2.:7 e2.:m7 a2.:7
  d2.:m7 g2:7 g4:7/f e2:7.5+ e4:7 a2:7.9- a4:7
  d2.:m7 d2:m7/g g4:7.9- c2. d2.:m7/c
  
  c2.:maj9
}

refrainKey = c

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Jazz Waltz [Art Farmer 1963]" 4 = 150

  \sectStart "A1"
  
  r4 g8 b8 d4 | r4 f,8 a8 c4 | r8 g4 b8~ b8 d8 | f,2. |
  \break
  r4 g8 b8 d4 | r4 f,8 a8 c4 | r8 bf4 d8~ d8 f8 | a,2. |

  \sect "B"
  
  r8 a4 a'8~ a8 g8 | f8 e8 d2 | e2~ e8 g8 | c,2. |
  \break
  r8 fs,4 e'8~ e8 d8 | c8 b8 a2 | bf2~ bf8 f'8 | a,2. |

  \sect "A2"

  r4 g8 b8 d4 | r4 f,8 a8 c4 | r8 g4 b8~ b8 d8 | f,2. |
  \break
  r4 g8 b8 d4 | r4 f,8 a8 c4 | r8 bf4 d8~ d8 f8 | a,2. |

  \sect "C"
  
  r8 a4 a'8~ a8 g8 | f8 e8 d2 | r8 b4 b'8~ b8 a8 | g8 f8 e2 |
  \break
  g2 f8 e8 | f8 e4 c8~ c8 d8 | e2.~ | e2.|
  \break
  g2 f8 e8 | f8 e8 c4. d8 | c2.~_"After solos, D.C. al Coda" | c2. \textToCodaLastTime |
  \bar "|."
  \textCoda
  %% \override NoteHead.style = #'diamond
  \improvisationOn
  c2.\fermata 
  \improvisationOff
  |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
