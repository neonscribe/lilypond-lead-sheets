%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Beatrice"
  subtitle = \instrument
  poet = ""
  composer = "Sam Rivers"
  copyright = \markup \small "© 1965 Rivbea Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1:maj7 gf1:maj7.11+ f1:maj7 ef1:maj7
  d1:m7 ef1:maj7 d1:m7 bf1:m7
  a1:m7 bf1:maj7 e2:m7 a2:7.9- d1:m7
  g1:m7 gf1:maj7.11+ f1:m7 gf1:maj7.11+
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 124

  r4 r8 c'8 c4 c4 | f4 c4 c4 bf4 | c4. a8 f4 f4 | f4 g2. |
  \break
  r4 r8 a8 a4 a4 | d4 c4 ef4 g4 | f2 f,2 | \tuplet 3/2 { c'8 bf8 c8~ } c4~ c4 bf4 |
  \break
  a2. c4 | f2. g4 | a1~ | a2. g4 |
  \break
  r8 f4. f4 f4 | f2~ f8 c8 bf8 c8~ | c4. bf8 c8 bf8 af4~ | af1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
