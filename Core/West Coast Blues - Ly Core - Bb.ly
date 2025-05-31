%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "West Coast Blues"
  subtitle = \instrument
  poet = ""
  composer = "Wes Montgomery"
  copyright = \markup \small "© 1960 Taggie Music Co."
}

refrainChords = \chordmode {
  bf2.:7 bf2.:7 af2.:7 af2.:7
  bf2.:7 bf2.:7 b2.:m7 e2.:7
  ef2.:7 ef2.:7 ef2.:7 ef2.:7 
  bf2.:7 bf2.:7 bf2.:7 bf2.:7
  f2.:7 f2.:7 ef2.:7 ef2.:7
  bf2.:7 bf2.:7 bf2.:7 bf2.:7

  bf2.:7 bf2.:7 af2.:7 af2.:7
  bf2.:7 bf2.:7 b2.:m7 e2.:7
  ef2.:7 ef2.:7 ef2.:m7 af2.:7 
  d2.:m7 g2.:7 cs2.:m7 fs2.:7
  c2.:m7 c2.:m7 c2.:m7 f2.:7
  bf2.:6 df2.:7 gf2.:6 f2.:7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Jazz Waltz [Wes Montgomery 1960]" 4 = 152

  \xTextMark \markup{ \bold \box "Head" }
  
  d'4 d4 bf8 f8 | af4 bf4 \tuplet 3/2 { ef,8 f8 af8 } | c4 c4 af8 ef8 | gf4 af4 \tuplet 3/2 { f8 g8 bf8 } |
  d4 d4 bf8 f8 | af4 bf4 r8 cs8 |
  \break
  e8 fs8 e8 d8 r8 fs,8 | r8 cs'8 r8 a8 b8 a8 | df4 df4 bf8 f8 |
  af4 bf4 \tuplet 3/2 { f8 g8 bf8 } | df4 df4 bf8 f8 | af4 bf4 \tuplet 3/2 { f8 g8 bf8 } |
  \break
  d4 d4 bf8 f8 | af4 bf4 \tuplet 3/2 { f8 g8 bf8 } |
  d4 d4 bf8 f8 | af4 bf4 r8 d8 | f8 g8 f8 ef8 r8 fs,8 | g8 bf8 d8 c8 af8 f8 |
  \break
  ef'8 f8 ef8 df8 r8 e,8 | f8 af8 c8 bf8 g8 e8 | d'4 d4 bf8 f8 | af4 bf4 \tuplet 3/2 { f8 g8 bf8 } |
  d4 d4 bf8 f8 | af4 bf4 r4 |
  
  \sect "Solos"
  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
