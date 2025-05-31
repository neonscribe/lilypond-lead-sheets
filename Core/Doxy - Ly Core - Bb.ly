%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Doxy"
  subtitle = \instrument
  poet = ""
  composer = "Sonny Rollins"
  copyright = \markup \small "© 1963 Prestige Music"
}

refrainChords = \chordmode {
  s4
  
  bf2:7 af2:7 g1:7 c2:7 f2:7 bf2 f2:7.5+
  bf2:7 af2:7 g1:7 c1:7 f1:7
  bf1:7 bf1:7 ef1:7 e1:dim7
  bf2:7 af2:7 g1:7 c2:7 f2:7 bf2
  \chordInsideParens{ f2:7.5+ }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \partial 4 \invisEighth f8 |
  
  \bar ".|:"
  \repeat volta 2 {
  bf8 d8 bf8 g8 bf4 r8 f8 | bf8 g8 bf8 df8 r8 g,4-. f8 |
  e8 g8 bf8 df8 \tuplet 3/2 { c8 df8 c8 } g8 bf8 | r2 r4 r8 f8 |
  \break
  bf8 d8 bf8 g8 bf4 r8 f8 | bf8 g8 bf8 df8 r8 g,4-. f8 |
  e8 g8 bf8 df8 \tuplet 3/2 { c8 df8 c8 } g8 a8 | r1 |
  \break
  g'4 r8 f8 r4 df4~ | df4. g,8 r8 df'8 r8 g,8 |
  df'4 df8 df8 g,4 c4 | r2 r4 r8 f,8 |
  \break
  bf8 d8 bf8 g8 bf4 r8 f8 | bf8 g8 bf8 df8 r8 g,4-. f8 |
  e8 g8 bf8 df8 \tuplet 3/2 { c8 df8 c8 } g8 bf8 | r2 r4 r8 f8 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Play head twice at the beginning, once after solos." }
