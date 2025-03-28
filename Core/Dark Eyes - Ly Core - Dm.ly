%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Dark Eyes (Les Yeux Noir, Очи чёрные)"
  subtitle = \instrument
  poet = "Yevhen Hrebinka"
  composer = "Florian Hermann"
  copyright = \markup \small "1879"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2.
  
  a1:7 a1:7 d1:m d1:m
  a1:7 a1:7 bf1 bf1
  g1:m6 g1:m6 d1:m d1:m
  a1:7 a1:7 d1:m d1:m
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 160

  \partial 2. \tuplet 3/2 { a8 bf8 a8 } gs4 a4 |
  \bar "||"
  
  bf4. a8~ a2 | r4 r8 a8 gs4 a4 | bf4. a8~ a2 | r2 a4 d4 |
  \break
  d4. cs8~ cs2 | r8 e4. f4 cs4 | e4. d8~ d2 | r2 f4 g4 |
  \break
  f4. e8~ e4 bf4~ | bf2 e4 f4 | e4. d8~ d4 a4~ | a4. a8 gs4 a4 |
  \break
  bf2 a2 | e'2 f2 | d1~ | d1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
