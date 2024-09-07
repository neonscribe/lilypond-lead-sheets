%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Things Ain't What They Used to Be"
  subtitle = \instrument
  poet = "Ted Persons"
  composer = "Mercer Ellington"
  copyright = "© 1942 Tempo Music Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  df1:7 df1:7 df1:7 df1:7
  gf1:7 gf1:7 df1:7 df1:7
  ef1:m7 af1:7 df2:7 e2:7 ef2:7 d2:7
}

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow Blues" 4 = 90

  \tuplet 3/2 { r8 af,8 d8 } \tuplet 3/2 { f8 af8 bf8 } af4 bf4 | df,4. f8 r2 |
  \tuplet 3/2 { r8 af,8 d8 } \tuplet 3/2 { f8 af8 bf8 } af4 bf4 | df,4. f8 r2 |
  \tuplet 3/2 { r8 df8 gf8 } \tuplet 3/2 { bf8 df8 ef8 } df4 ef4 | gf,4. a8 r8 a8 af8 f8 |
  \tuplet 3/2 { r8 af,8 d8 } \tuplet 3/2 { f8 af8 bf8 } af4 bf4 | df,4. f8 r4 r8 af8 |
  \tuplet 3/2 { df8 b8 af8~ } af2 r8 af8 | \tuplet 3/2 { df8 b8 af8 } \tuplet 3/2 { df8 b8 af8 } b4 c8 df8 |
  r4 r8 <e b>8 r4 r8 <ef bf>8 | r4 r8 <d a>8 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
