%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Sonnymoon for Two"
  subtitle = \instrument
  poet = ""
  composer = "Sonny Rollins"
  copyright = "© 1957 Son Rol Music Co."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  bf1:7 ef1:7 bf1:7 bf1:7
  ef1:7 ef1:7 bf1:7 bf1:7
  c1:m7 f1:7 bf1:7 bf1:7
  
  bf1:7 bf1:7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up" 4 = 180

  \mark \markup{ \box "Head" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 bf4.-> af4 f4 | ef4 df4 bf8 bf4-. bf8 |
  r4 r8 ef8~-> ef4 df8 bf8-> | \tuplet 3/2 { r4 bf4 df8 bf8 } ef4 df8 bf8 |
  \break
  r8 bf'4.-> af4 f4 | ef4 df4 bf8 bf4-. bf8 |
  r4 r8 ef8~-> ef4 df8 bf8-> | \tuplet 3/2 { r4 bf4 df8 bf8 } ef4 df8 bf8 |
  \break
  r8 bf'4.-> af4 f4 | ef4 df4 bf8 bf4-. bf8 \textToCodaLastTime |
  r4 r8 ef8~-> ef4 df8 bf8-> | \tuplet 3/2 { r4 bf4 df8 bf8 } ef4 df8 bf8 |
  }
  \break

  \textCoda
  
  r8 af'8 g8 g8 gf8 gf8 f8 f8 | ef4 d8 bf8~ bf2\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup "Play head twice before and twice after solos, to coda on the very last repeat."
