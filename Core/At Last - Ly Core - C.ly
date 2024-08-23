%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "At Last"
  subtitle = \instrument
  poet = "Mack Gotdon"
  composer = "Harry Warren"
  copyright = "© 1942 Twentieth Century Music Corporation"
}

refrainLyrics = \lyricmode {
At last __ my love __ has come a -- long.
My lone -- ly days are o -- ver and life __ is like a song. __

At last __ the skies a -- bove are blue,
My heart __ was wrapped in clo -- ver the night __ I looked at you.

I found a dream that I can speak to, __
a dream that I can call my own.
I found a thrill to press my cheek to,
I thrill I've nev -- er known.

You smiled __ and then __ the spell was cast,
and here __ we are in Hea -- ven, for you are mine at last.
}

refrainChords = \chordmode {
  g4:7
  
  c2 a2:m d2:m7 g2:9 c2 a2:m d2:m7 g4:7.5+ g4:7
  c2 a2:m7 d2:m7 f4:m6 g4:7 c2 a2:m7 d2:m7.5- g4:7.5+ g4:7
  
  c2 a2:m d2:m7 g2:9 c2 a2:m d2:m7 g4:7.5+ g4:7
  c2 a2:m7 d2:m7 f4:m6 g4:7 c2 f4:m g4:9 c2 g4:7 c4:7
  
  f4:maj7 f4 g2:7.9- c1 fs2:m7.5- b2:7 e1:m
  a2:m7.5- d2:7 g2:maj7 g4:6 c4/d a2:7 a4:m7/g d4:7.9- g2 g2:7

  c2 a2:m d2:m7 g2:9 c2 a2:m d2:m7 g4:7.5+ g4:7
  c2 a2:m7 d2:m7 g2:7 c2
  \chordOpenParen{ a2:m7 }
   d2:m7/f g4:7.9-
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 100

  \partial 4 g4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c1~ | c4 d8 ef8~ ef8.d16 c8. a16 | g1~ | g4 a8 bf8~ bf8. a16  g8. f16 |
  \break
  e2 e2~ | e4 e8 g8~ g8. f16 e8. d16 | c1~ | c2 r4 g'4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c1~ | c4 d8 ef8~ ef8.d16 c8. a16 | g1~ | g4 a8 bf8~ bf8. a16  g8. f16 |
  \break
  e2 e2~ | e4 e8 g8~ g8. f16 e8. d16 | c1~ | c8 r8 c4 d4 e4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  g4 f4 e4 d4 | e4 e4~ e8. e16 fs8. g16 | b4 a4 g4 fs4 | g2~ g8. g16 a8. b16 |
  \break
  d4 c4 b4 a4 | b4 b2 c4 | a4 a4 a8 b4. | g2. g4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  c1~ | c4 d8 ef8~ ef8.d16 c8. a16 | g1~ | g4 a8 bf8~ bf8. a16  g8. f16 |
  \break
  e2 c'2~ | c8. c16 e8. c16 e4 g,4 | c1~ | c4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"