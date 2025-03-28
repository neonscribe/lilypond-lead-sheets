%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Don't Be That Way"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Benny Goodman & Edgar Sampson"
  copyright = \markup \small "© 1935 Robbins Music Corporation"
}

refrainLyrics = \lyricmode {
Don't cry. Oh, hon -- ey please don't be that way.
Clouds in the sky should nev -- er make you feel that way.
The rain will bring the vi -- o -- lets in May.
Tears are in vain, so, hon -- ey please don't be that way.
As long as we __ see it through, __ you'll have me, __ I'll have you. __
Sweet -- heart, to -- mor -- row is an -- oth -- er day.
Don't break my heart. Oh, hon -- ey please don't be that way.
}

refrainChords = \chordmode {
  s2
  
  df2:6 bf2:m7 ef2:m7 af:7.5+ df2:6 bf2:m7 ef2:m7 af:7.5+ 
  df2:6 bf2:m7 ef2:m7 af:7.5+ df1:6 ef2:m7 af2:7.9-.5+

  df2:6 bf2:m7 ef2:m7 af:7.5+ df2:6 bf2:m7 ef2:m7 af:7.5+ 
  df2:6 bf2:m7 ef2:m7 af:7.5+ df1:6 df1:6
  
  c1:7 c1:7 f1:7 f1:7 bf1:7 bf1:7 ef1:7 af1:7.5+

  df2:6 bf2:m7 ef2:m7 af:7.5+ df2:6 bf2:m7 ef2:m7 af:7.5+ 
  df2:6 bf2:m7 ef2:m7 af:7.5+ df1:6 df1:6
}

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Beny Goodman 1938]" 4 = 160

  \partial 2 af2 |
  \bar "||"

  \sectStart "A1"
  
  bf1 | r8 gf8 bf8 df8 bf8 e,8 c8 af8 | bf1 | r2 \tuplet 3/2 { c4 e4 a4 } |
  bf1 | r8 gf8 bf8 df8 bf8 e,8 c8 af8 | df1 | r2 af'2 |
  
  \sect "A2"

  bf1 | r8 gf8 bf8 df8 bf8 e,8 c8 af8 | bf1 | r2 \tuplet 3/2 { c4 e4 a4 } |
  bf1 | r8 gf8 bf8 df8 bf8 e,8 c8 af8 | df1 | r2 df'2 |
  
  \sect "B"
  
  c2 d4 d4~ | d1 | c2 d4 f,4~ | f1 |
  bf2 c4 c4~ | c1 | bf2 c4 ff,4~ | ff2 af2 |
  
  \sect "A3"

  bf1 | r8 gf8 bf8 df8 bf8 e,8 c8 af8 | bf1 | r2 \tuplet 3/2 { c4 e4 a4 } |
  bf1 | r8 gf8 bf8 df8 bf8 e,8 c8 af8 | df1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
