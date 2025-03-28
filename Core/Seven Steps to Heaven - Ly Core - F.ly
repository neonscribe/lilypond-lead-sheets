%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Seven Steps to Heaven"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis, Victor Feldman"
  copyright = \markup \small "© 1963 Jazz Horn Music Corporation"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4
  
  r1 r1
  
  f1:13 ef1:13
  
  f2:maj7 bf2:maj7 e2:m7 a2:7 d2:m7+ af4.:7 g8:7 r1 r1 r1 ef2:6 e4.:6 f8:6 r1
  
  c1:maj7 d2:m7 g2:7 c1:maj7 f2:m7 bf2:7 ef1:maj7 af2:m7 df2:7 gf1:maj7 \chordInsideParens{ c1:7 }
  
  f2:maj7 bf2:maj7 e2:m7 a2:7 d2:m7+ af4.:7 g8:7 r1 r1 r1 ef2:6 e4.:6 f8:6 r1
  
  f1:13 ef1:13
  
  f4:13 r2. r1
  
  f1:maj7 e2:m7 a2:7 d1:m7 g1:7
  g1:m7 c1:7 ef2:6 e2:6 f1:6
  
  c1:maj7 d2:m7 g2:7 c1:maj7 f2:m7 bf2:7
  ef1:maj7 af2:m7 df2:7 df1:maj7 g2:m7 c2:7

  f1:maj7 e2:m7 a2:7 d1:m7 g1:7
  g1:m7 c1:7 ef2:6 e2:6 f1:6
  
  ef2:6 e4.:6 f8:6 r1
  
  f1:13 ef1:13
  
  f1:13
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass
  \tempo "Fast Bop [Miles Davis 1963]" 4 = 286

  \sectStart "Intro"
  
  \partial 4 \invisEighth c8 |
  
  \bar ".|:"
  \repeat volta 2 {
  f,4 c'4 r4 r8 bf8 | ef,4 bf'4 r4 r8 c8 |
  }
  \bar ":..:"
  \clef \whatClef
  \key \refrainKey \major
  \repeat volta 4 {
  r4 <d ef g c c'>4 r8 <d ef g c c'>8 r4 |
  r4 <c df f c' c'>4 r8 <c df f c' c'>8 r4 
  \xTextEndMark "play 4x"
  |
  }
  \bar ":..:"

  \segnoSign
  \sectNoBar "A1,A2"
  
  \repeat volta 2 {
  c'4 r4 f,4 r4 | a4 r4 g4 r4 | f2 f4. f8 | r1 | r1 | r1 | f2 f4. f8 | r1 |
  }
  \bar "||-:|."

  \sectNoBar "B"
  
  b,8 c8 d8 e8 r8 f8 g8 a8~ | a4 g8 f8 e8 d4 g8~ | g1 | r2 r8 e8 f8 bf8~ |
  \break
  bf1 | r2 r8 a8 bf8 df8~ | df1 | r1 |

  \sect "A3"

  c4 r4 f,4 r4 | a4 r4 g4 r4 | f2 f4. f8 | r1 | r1 | r1 | f2 f4. f8 | r1 \textToCodaLastTime |

  \sectNoBar "C"

  \bar ".|:-||"
  \repeat volta 3 {
  r4 <d ef g c c'>4 r8 <d ef g c c'>8 r4 |
  r4 <c df f c' c'>4 r8 <c df f c' c'>8 r4
  \xTextEndMark "play 3x"
  |
  }
  \bar ":|."
  r4 <d ef g c c'>4 r8 <d ef g c c'>8 r4 | r4 <c df f c' c'>4 r8 <c df f c' c'>8 r4 |

  \bar ".|:-||"
  \xPageBreak

  \sectNoBar "Solos"
  
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \bar "||-:|."
  \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \break
  \bar "||-||"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq
  \dalSegnoAfterSolos
  |
  \bar "||-|."

  \textCodaBreak
  
  \repeat volta 4 {
  f2 f4. f8 |
  r1
  \xTextEndMark "play 4x"
  |
  }
  \repeat volta 6 {
  r4 <d ef g c c'>4 r8 <d ef g c c'>8 r4 |
  r4 <c df f c' c'>4 r8 <c df f c' c'>8 r4
  \xTextEndMark "play 6x"
  |
  }
  r1\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
