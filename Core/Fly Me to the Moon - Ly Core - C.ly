%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Fly Me to the Moon"
  subtitle = \instrument
  poet = ""
  composer = "Bart Howard"
  copyright = "© 1954 Hampshire House Publishing Corp."
}

refrainLyrics = \lyricmode {
Fly me to the moon __ and let me play a -- mong the stars. __
Let me see what spring __ is like on Ju -- pi -- ter and Mars. __
In oth -- er words, __ hold my hand. __
In oth -- er words, __ dar -- ling kiss me. __
Fill my heart with song, __ and let me sing for -- ev -- er more. __
You are all I long __ for, all I wor -- ship and a -- dore. __
In oth -- er words, __ please be true. __
In oth -- er words, __ I love you.

true. __ In oth -- er words, __ I love you. __
}

refrainChords = \chordmode {
  a1:m7 d1:m7 g1:7 c2:maj7 c2:7
  f1:maj7 b1:m7.5- e1:7.9- a2:m7 a2:7

  d1:m7 g1:7 c1:maj7 e2:m7 a2:7
  d1:m7 g1:7 c1:maj7 b2:m7.5- e2:7
  
  a1:m7 d1:m7 g1:7 c2:maj7 c2:7
  f1:maj7 b1:m7.5- e1:7.9- a2:m7 a2:7

  d1:m7 g1:7 e1:m7 a1:7
  d1:m7 g1:7 c1:6
  \chordOpenParen{ b2:m7.5- }
  \chordCloseParen{ e2:7 }
  
  e1:m7 a1:7 d1:m7 g1:7 c1:6 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 118

  \xTextMark \markup{ \bold \box "A1" }
  
  c'4. b8 a4 g8 f8~ | f8 g4. a4 c4 | b4. a8 g4 f8 e8~ | e1 |
  \break
  a4. g8 f4 e8 d8~ | d8 e4. f4 a4 | gs4. f8 e4 d8 c8~ | c2 r4 c4 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d8 a'4 a8~ a2~ | a4 c2 b4 | g1~ | g2. b4 |
  \break
  c,8 f4 f8~ f2~ | f4 a2 g4 | f4. e8~ e2~ | e2 r2 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c'4. b8 a4 g8 f8~ | f8 g4. a4 c4 | b4. a8 g4 f8 e8~ | e1 |
  \break
  a4. g8 f4 e8 d8~ | d8 e4. f4 a4 | gs4. f8 e4 d8 c8~ | c2 r4 c4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  d8 a'4 a8~ a2~ | a4 c2 b4 \textToCodaLastTime | g1~ | g2. gs4 |
  \break
  a8 c,4 c8~ c2~ | c4 c2 d4 | c1 | r1 |
  \bar "||-|."

  \textCodaBreak

  e'1~ | e2. c4 | d8 a4 a8~ a2~ | a2 b4 d4 | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
