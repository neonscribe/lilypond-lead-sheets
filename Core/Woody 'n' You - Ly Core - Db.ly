%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Woody 'n' You"
  subtitle = \instrument
  poet = ""
  composer = "Dizzy Gillespie"
  copyright = "© 1943 Edwin H. Morris & Company"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  g1:m7.5- a1:7.9+ f1:m7.5- bf1:7.9+
  ef1:m7.5- af1:7.9+ df2:maj7 af2:7 df1:6

  g1:m7.5- a1:7.9+ f1:m7.5- bf1:7.9+
  ef1:m7.5- af1:7.9+ df2:maj7 af2:7 df1:6

  af2:m7 df2:7 af2:m7 df2:7 af2:m7 df2:7 gf1:maj7
  bf2:m7 ef2:7 bf2:m7 ef2:7 bf2:m7 ef2:7 af1:maj7

  g1:m7.5- a1:7.9+ f1:m7.5- bf1:7.9+
  ef1:m7.5- af1:7.9+ df2:maj7 af2:7 df1:6
}

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Bop [Miles Davis Quintet 1956]" 4 = 260

  \sectStart "A1"
  
  r4 f'4 g4. f8 | ef8 c8 r4 r2 | r4 ef4  f4. ef8 | df8 bf8 r4 r2 |
  \break
  r4 df4 ef4. df8 | cf8 af8 r4 r4 g8 e8 | f8 af8 c8 ef8~ ef4 d8 c8 | df8 bf8 r4 r2 |
  
  \sect "A2"

  r4 f'4 g4. f8 | ef8 c8 r4 r2 | r4 ef4  f4. ef8 | df8 bf8 r4 r2 |
  \break
  r4 df4 ef4. df8 | cf8 af8 r4 r4 g8 e8 | f8 af8 c8 ef8~ ef4 d8 c8 | df8 bf8 r4 r2 |
  
  \sect "B"
  
  bf4 af8 gf8 f4 gf8 af8 | bf4 af8 gf8 f4 gf8 af8 | bf8 gf8 ef8 cf8 d8 a'8 r8 d,8 | bf'1 |
  \break
  c4 bf8 af8 g4 af8 bf8 | c4 bf8 af8 g4 af8 bf8 | c8 af8 f8 df8 e8 b'8 r8 e,8 | c'1 |

  \sect "A3"

  r4 f4 g4. f8 | ef8 c8 r4 r2 | r4 ef4  f4. ef8 | df8 bf8 r4 r2 |
  \break
  r4 df4 ef4. df8 | cf8 af8 r4 r4 g8 e8 | f8 af8 c8 ef8~ ef4 d8 c8 | df8 bf8 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
