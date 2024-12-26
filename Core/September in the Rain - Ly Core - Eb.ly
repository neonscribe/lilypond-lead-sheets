%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "September in the Rain"
  subtitle = \instrument
  poet = "Al Dubin"
  composer = "Harry Warren"
  copyright = "© 1937 Remick Music Corp."
}

refrainLyrics = \lyricmode {
The leaves of brown came tum -- bling down, re -- mem -- ber? __
In Sep -- tem -- ber __ in the rain. __
The sun went out just like a dy -- ing em -- ber, __
that Sep -- tem -- ber __ in the rain. __
To ev -- 'ry word of love I heard you whis -- per, __
the rain -- drops seemed to play a sweet re -- frain. __
Though Spring is here to me it's still Sep -- tem -- ber, __
that Sep -- tem -- ber, __ in the rain. __
}

refrainChords = \chordmode {
  bf4:7
  ef1:6 bf2:m7 ef2:9 af1:6 af1:6
  df1:9 f2:m7 bf2:7.9- ef2:6 c2:7.9-.5+ f2:m7 bf2:7.9-

  ef1:6 bf2:m7 ef2:9 af1:6 af1:6
  df1:9 f2:m7 bf2:7.9- ef1:6 ef1:6
  
  bf2:m7 ef2:7 bf2:m7 ef2:7 af1:6 af1:6
  c2:m7 f2:7 c2:m7 f2:7 f1:m7 bf1:7
  
  ef1:6 bf2:m7 ef2:9 af1:6 af1:6
  df1:9 f2:m7 bf2:7.9- ef2:6
  \chordOpenParen{ c2:7.9-.5+ }
  f2:m7
  \chordCloseParen{ bf2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 110
  
  \partial 4 bf4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c4 ef4 d4 bf4 | c4 g4 bf4. ef,8 | f2 f2~ | f2 g4. c,8 |
  \break
  f2 f2~ | f2 g4. bf,8 | ef1~ | ef2 r4 bf'4 |
  
  \sect "A2"
  
  c4 ef4 d4 bf4 | c4 g4 bf4. ef,8 | f2 f2~ | f2 g4. c,8 |
  \break
  f2 f2~ | f2 g4. bf,8 | ef1~ | ef2. ef4 |
  
  \sect "B"
  
  f4 c'4 bf4 ef,4 | f4 c'4 bf4 ef,4 | f2 g2~ | g2. f4 |
  \break
  g4 d'4 c4 f,4 | g4 d'4 c4 f,4 | bf1~ | bf2. bf4 |
  
  \sect "A3"

  c4 ef4 d4 bf4 | c4 g4 bf4. ef,8 | f2 f2~ | f2 g4. c,8 |
  \break
  f2 f2~ | f2 g4. bf,8 | ef1~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
