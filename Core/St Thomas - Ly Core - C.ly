%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "St. Thomas"
  subtitle = \instrument
  poet = ""
  composer = "Sonny Rollins"
  copyright = "© 1955 Prestige Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c1:6 e2:m7 a2:7 d2:m7 g4:7 c4*5:6
  c1:6 e2:m7 a2:7 d2:m7 g4:7 c4*5:6
  e2:m7.5- bf4.:7 a8*9:7 d2:m7 af4.:7.5+ g8*9:7
  c2:7 c2:9/e f2:6 fs2:dim7 c2:6/g g4:7 c4*5:6
  
  c1:6 a1:7 d2:m7 g2:7 c1:6
  c1:6 a1:7 d2:m7 g2:7 c1:6
  e1:m7.5- a1:7 d1:m7 g1:7
  c2:7 c2:7/e f2:6 fs2:dim7 c2:6/g g2:7 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swinging Latin" 2 = 105

  \textMark \markup{ \bold \box "Head" }
  \bar ".|:"
  \repeat volta 2 {
  r4 g8 c8 r8 b8 r8 a8 | g4-. a4-. e4-. f4-. | g4-. c4-. b4-. c4-- | r1
  \break
  r4 g8 c8 r8 b8 r8 a8 | g4-. a4-. e4-. f4-. | g4-. c4-. b4-. c4-- | r1
  \break
  e2 f4. g8 | r1 | f2 e4. d8 | r1 |
  \break
  e2 d2 | c4. a8~ a2 | g4-. c4-. b4-. c4--_"FINE" | r1 |
  }
  \break

  \textMark \markup{ \bold \box "Solos" }
  \bar ":|.|:"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq_"After solos, D.C. al Fine." \rsq \rsq |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup "Head is played twice before and twice after solos."