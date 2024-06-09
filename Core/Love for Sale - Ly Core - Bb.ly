%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Love for Sale"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = "© 1930 Harms Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  ef1:maj7 ef1:maj7 bf1:m7 bf1:m7
  ef1:maj7 ef1:maj7 bf1:m7 bf1:m7

  ef1:m7 af1:7 df1:maj7 gf1:9
  c1:m7 f1:7.5+ bf1:m6 bf1:m6

  ef1:maj7 ef1:maj7 bf1:maj7 bf1:maj7
  ef1:maj7 ef1:maj7 bf1:maj7 bf1:maj7

  ef1:m7 af1:7 df1:maj7 gf1:9
  c1:m7 f1:7.5+ bf1:m6 bf1:m6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing"

  \textMark \markup{ \bold \box "A1" }
  
  bf1~ | bf2. g4 | f1~ | f1 |
  r4 bf8 bf8 bf4 bf4 | bf4 bf2 g4 | f1~ | f1 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  r4 bf8 bf8 bf4 bf4 | bf4 c4 c2 | r4 af8 af8 af4 af4 | af4 gf4 gf2 |
  f1~ | f2. cs4 | bf1~ | bf1 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
