%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Lucky Southern"
  subtitle = \instrument
  poet = ""
  composer = "Keith Jarrett"
  copyright = "© 1972 Kundalini Music"
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  d1:maj7 d1:maj7.5+ d1:maj7.6 d1:maj7.5+
  
  d1:maj7 d1:maj7 e1:7 e1:7
  g1:maj7 bf2:7 a2:7 d1:maj7 r4 ef2.:maj7.11+
  
  d1:maj7 d1:maj7 e1:7 e1:7
  g1:maj7 bf2:7 a2:7 d1:maj7 d1:maj7

  fs1:m7 fs1:m7 e1:m7 e1:m7
  fs1:m7 fs1:m7 a1:m7 d1:7
  
  g1:maj7 g2.:m7 d4*4/fs f4*5:dim7
  e1:m7 bf2:m7 a4:7 d4*5:maj7 r4 ef2.:maj7.11+
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bossa" 4 = 160

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \break

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 a8 d8~ d8 e4 fs8~ | fs1 | fs4 e8 d8~ d8 e8 fs8 e8~ | e4 d2. |
  \break
  r2 b4 d4 | f4. e8~ e4 d8 d8~ | d8 b8 a2. | r4 a'2.-> |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  r4 a,8 d8~ d8 e4 fs8~ | fs1 | fs4 e8 d8~ d8 e8 fs8 e8~ | e4 d2. |
  \break
  r2 b4 d4 | f4. e8~ e4 d8 d8~ | d8 e8 fs2.~ | fs1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r2 a4 a4 | b4. a8~ a4 fs8 e8~ | e1~ | e1 |
  \break
  r2 a4 a4 | b4. a8~ a4 b8 c8~ | c8 b4 a8~ a8 b4 fs8~ | fs4 e8 d8~ d8 e8 d4~ |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  d2 b4 d4 | f8 e4 d8~ d8 e8 d4~ | d2. b4~ | b1 |
  \break
  r2 b4 d4 | f8 e4 d8~ d8 e8 d4~ | d1 | r4 a'2.-> |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
