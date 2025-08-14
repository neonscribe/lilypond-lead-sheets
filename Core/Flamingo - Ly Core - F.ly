%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Flamingo"
  subtitle = \instrument
  poet = "Ed Anderson"
  composer = "Ted Grouya"
  copyright = \markup \small "© 1941 Tempo Music Inc."
}

refrainLyrics = \lyricmode {
Fla -- min -- go, __ like a flame in the sky,
fly -- ing o -- ver the is -- land to my lov -- er near by. __

Fla -- min -- go, __ in your trop -- i -- cal hue,
speak of pas -- sion un -- dy -- ing and a love that is true.

The wind sings a song to you as you go,
A song __ that I hear be -- low the mur -- mur -- ing palms. __

Fla -- min -- go, __ when the sun meets the sea,
say fare -- well to my lov -- er and hast -- en to me.
}

refrainChords = \chordmode {
  s4
  
  f2:maj7 d2:m7 g2:m7 c2:7 f1:m7 bf1:7 
  df1:9 g2:m7 c2:7 f2:maj7 d2:7 g2:m7 c2:7
  
  f2:maj7 d2:m7 g2:m7 c2:7 f1:m7 bf1:7 
  df1:9 g2:m7 c2:7 f2:6 bf2:9 f2:maj7 c4:m7 f4:7
  
  bf1:m7 ef1:9 af2:maj7 bf2:m7 af2/c f2:7.9-
  bf2:m7 ef2:7 bf2:m7 bf2:m7/af g1:m7 c1:7

  f2:maj7 d2:m7 g2:m7 c2:7 f1:m7 bf1:7 
  df1:9 g2:m7 c2:7 f2:maj7
  \chordOpenParen{ d2:m7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Latin [Caterina Valente 1957]" 4 = 137

  \partial 4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c'4. a8~ a2 | r4 bf8 c8 e4 d8 c8 | af1 | r4 g8 af8 c4 bf8 af8 |
  \break
  f4 f2. | r4 f8 f8 g4 f8 g8 | a1~ | a2 r4 c,4 |
  
  \sect "A2"
  
  c'4. a8~ a2 | r4 bf8 c8 e4 d8 c8 | af1 | r4 g8 af8 c4 bf8 af8 |
  \break
  f4 f2. | r4 f8 f8 g4 f8 g8 | f1 | r2 r4 f4 |
  
  \sect "B"
  
  f'1 | r4 f8 f8 f4 ef8 df8 | ef4. ef8 af2 | r4 ef8 ef8~ ef4 df8 c8 |
  \break
  df4. df8 g2 | r4 df4 df4 c8 bf8 | c1~ | c2 r4 c,4 |
  
  \sect "C"

  c'4. a8~ a2 | r4 bf8 c8 e4 d8 c8 | af1 | r4 g8 af8 c4 bf8 af8 |
  \break
  f4 f2. | r4 g4 \tuplet 3/2 { b4 d4 f4 } | a1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
