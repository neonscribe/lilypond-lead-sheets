%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Manoir de Mes Rêves (Django's Castle)"
  subtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = "© 1945 Publications Francis Day S.A."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  a2:7/bf
  
  d1 d2 a2:7/bf d1 d2 a2:7/bf
  d1 d2 a2:7/bf a1:m7 d2:7 d2:7/ef
  
  g1 g2 a2:7 d1 d2 b2:m7
  e1:9 e1:9 ef1:9 a2:7 a2:7/ef

  d1 d2 a2:7/bf d1 d2 a2:7/bf
  d1 d2 a2:7/bf a1:m7 d2:7 d2:7/ef

  g1 g1 e1:9 e1:9
  f2:m7 bf2:7 e2:m7 a2:7 d2 g4:m gs4:dim7 d2 a2:7
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad or Bossa" 4 = 110

  \partial 2 fs2 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  a1~ | a4 r4 fs2 | e1~ | e2 fs2 |
  \break
  a1~ | a4 r4 fs2 | e1~ | e2 b'2 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  d1~ | d4 r4 b2 | a1~ | a4 r8 d,8 e8 d8 cs8 d8 |
  \break
  fs8 fs8~ fs2.~ | fs4 r8 d8 e8 d8 cs8 d8 | f1~ | f2 fs2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  a1~ | a4 r4 fs2 | e1~ | e2 fs2 |
  \break
  a1~ | a4 r4 fs2 | e1~ | e2 b'2 |

  \bar "||"
  \break

  \mark \markup{ \box "C" }
  
  d1~ | d4 r4 e2 | fs1~ | fs2 d2 |
  \break
  f1~ | f2 fs2 | d1~ | d2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
