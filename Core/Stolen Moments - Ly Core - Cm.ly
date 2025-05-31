%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Stolen Moments"
  subtitle = \instrument
  poet = ""
  composer = "Oliver Nelson"
  copyright = \markup \small "© 1962 Oliver E. Nelson"
}

refrainChords = \chordmode {
  c1:m7 d1:m7/c ef1:maj7/c d1:m7/c

  c1:m7 f1:maj7/c ef1:maj7/c f2:maj7/c c2:maj7
  f1:m7 g2:m7/f df2:7 c1:m7 d2:m7/c a2:m7.5-
  d4.:m11 ef2:m111 e2:m11 f2:m11 gf2:m11 f2:m11 e2:m11 ef2:m11 d2:m11
  ef2:m11 e2:m11 f8*12:m11 g8*9:7.5+
  
  c1:m7 c1:m7 c1:m7 c1:m7 
  f1:m7 f1:m7 c1:m7 c1:m7
  d1:m7.5- g1:7.5+.9- c1:m7 c1:m7
  
  g1:7.5+ c1:m7 g1:7.5+ f1:sus7 c1:m9
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Slow Swing [Oliver Nelson 1961]" 4 = 110

  \sectStart "Intro"
  
  \bar ".|:"
  \repeat volta 2 {
  r8 g4.~ g2 | r8 a4.~ a2 | r8 bf4.~ bf2 | r8 a4.~ a2 |
  }
  \bar "||-:|."

  \sectNoBar "Head"

  \segnoSign

  r8 g8 bf8 d8-. r8 c8-. r8 bf8 | c8 a8~ a8 f16 c16 ef8 g4. |
  r8 g8 bf8 d8-. r8 c8-. r8 bf8 | c8 a4. g2 |
  \break
  r8 af8 c8 ef8-. r8 d8-. r8 c8 | d8 bf4. f8 af4. |
  r8 ef8 g8 bf8-. r8 a8-. r8 g8 | a8 f4. ef4 g8 bf8 |
  \break
  c8 ef8 c8 c8~ c8 ef8 c8 c8~ | c8 ef8 c8 c8~ c8 ef8 c8 c8~ |
  c8 ef8 c8 c8~ c8 ef8 c8 c8~ | c8 ef8 c8 c8~ c8 ef,8 c8 c8~ |
  \break
  c8 ef8 c8 c8~ c8 ef8 c8 c8~ | c8 ef8 c8 c8~ c8 g'8 a8 g8 |
  \scoop bf4 a8 g8~ g4. g8~ \textToCoda | g1 |
  
  \bar ".|:-||"
  
  \sectNoBar "Solos"

  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq \dalSegnoAfterSolos | 
  }
  \bar "||-:|."
  
  \textCodaBreak
  
  g2\repeatTie r8 g8 a8 g8 | bf4 a8 g8~ g4. g8~ | g2 r8 c,8_"rit." ef8 g8 | f1~ | f1\fermata

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
