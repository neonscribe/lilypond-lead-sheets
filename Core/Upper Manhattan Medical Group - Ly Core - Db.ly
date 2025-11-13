%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Upper Manhattan Medical Group (UMMG)"
  subtitle = \instrument
  poet = ""
  composer = "Billy Strayhorn"
  copyright = \markup \small { \now " " "© 1956 Tempo Music, Inc." }
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f1:m7.5- bf1:7.9- ef1:m7 af1:7
  df2:dim7 df2:6 df1:maj7 df1:m7 gf1:7

  f1:m7.5- bf1:7.9- ef1:m7 af1:7
  df2:dim7 df2:6 df1:maj7 af2:m7 df2:7 af2:m7 df2:7
  
  g1:m7.5- c1:7 f1:maj7 f1:maj7
  af1:m7.5- df1:7 gf1:m7 ef2:m7 af2:7

  f1:m7.5- bf1:7.9- ef1:m7 af1:7
  df1:dim7 df1:maj7 df1:dim7 df1:maj7
  
  df1:dim7 df1:dim7 df1:maj7 df1:maj7
  df1:dim7 df1:dim7 df1:maj7 df1:maj7
}

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Tommy Flanagan 1975]" 4 = 192

  \sectStart "A1"
  
  bf2. af8 cf8~ | cf4. bf8~ bf2 | r8 af4.~ af4 gf8 f8~ | f2 r8 ef4. |
  \break
  a,4. bf8~ bf4. c8~ | c4 df4 \tuplet 3/2 { f4 af4 c4 } | ef2. df8 g,8~ | g2 af2 |
  
  \sect "A2"

  bf2. af8 cf8~ | cf4. bf8~ bf2 | r8 af4.~ af4 gf8 f8~ | f2 r8 ef4. |
  \break
  a,4. bf8~ bf4. c8~ | c4 df4 \tuplet 3/2 { f4 af4 df4 } | gf2. f8 gf8~ | gf2 f2 |
  
  \sect "B"
  
  f,2. e4 | c'4 bf4 af4 g4 | g2. f8 e8~ | e4. f8~ f2 |
  \break
  gf2. f4 | df'4 cf4 a4 af4 | af2. gf8 f8~ | f1 |
  
  \sect "A3"

  bf2. af8 cf8~ | cf4. bf8~ bf2 | r8 af4.~ af4 gf8 f8~ | f2 r8 ef4. \textToCodaLastTime |
  \break
  a,2. df8 bf8~ | bf1 | a2. df8 bf8~ | bf1 |
  
  \bar "|."
  
  \xPageBreak
  \textCoda
  
  a1~ | a2. df8 bf8~ | bf1~ | bf1 |
  \break
  a1~ | a2. df8 bf8~ | bf1~ | bf1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
