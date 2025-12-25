%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Day Dream"
  subtitle = \instrument
  poet = "John La Touche"
  composer = "Billy Strayhorn, Duke Ellington"
  copyright = \markup \small { \now " " "© 1940 Robbins Music Corporation" }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Day dream, why do you haunt me so? __
Deep in a ro -- sy glow,
The face of my love you show.

Day dream, I walk a -- long on air, __
Build -- ing a cas -- tle there,
For me and my love to share.

Don't know the time, lord -- y,
I'm in a daze.
Sun in the sky, while I moon a -- round, feel -- ing, ha -- zy.

Day dream, don't break my rev -- er -- ie, __
Un -- til I find that she
Is day -- dream -- ing just like me.
}

refrainObjectGenderMaleLyrics = \lyricmode {
Day dream, why do you haunt me so? __
Deep in a ro -- sy glow,
The face of my love you show.

Day dream, I walk a -- long on air, __
Build -- ing a cas -- tle there,
For me and my love to share.

Don't know the time, lord -- y,
I'm in a daze.
Sun in the sky, while I moon a -- round, feel -- ing, ha -- zy.

Day dream, don't break my rev -- er -- ie, __
Un -- til I find that he
Is day -- dream -- ing just like me.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  f2:maj7 a2:m7.5- bf2:7.5+ a2:7.5+ d2:m7 f2:7/c bf2:m6 c2:7.5+
  f2:m f2:m7/ef
  
  df1:9 c2:sus7 c2:7 df2:9 c2:9

  f2:maj7 a2:m7.5- bf2:7.5+ a2:7.5+ d2:m7 f2:7/c bf2:m6 c2:7.5+
  f2:m f2:m7/ef
  
  df2:9 c2:7 f1:maj7 c2:m7 f2:7

  bf2:maj7 b4:m7 e4:7 a2:maj7 bf4:m7 ef4:7 af2:maj7 a4:m7 d4:7 g2:maj7 g2:6
  g2:m7 c2:7 f2:maj7 af2:9.11+ g1:7 g2:7 c2:7.5+

  f2:maj7 a2:m7.5- bf2:7.5+ a2:7.5+ d2:m7 f2:7/c bf2:m6 c2:7.5+
  f2:m f2:m7/ef

  df2:9 c2:7 f1:maj7
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Johnny Hodges 1940]" 4 = 70

  \sectStart "A1"
  
  c2 c'2 | \tuplet 3/2 { bf4 c4 bf4 } cs4 a8 f8~ | f1 | \tuplet 3/2 { f4 g4 f4 } af4. af8 |
  f2. c4 |
  
  \tuplet 3/2 { f4 g4 f4 } g4. f8 | c'1 | r1 |
  
  \sect "A2"

  c,2 c'2 | \tuplet 3/2 { bf4 c4 bf4 } cs4 a8 f8~ | f1 | \tuplet 3/2 { f4 g4 f4 } af4. af8 |
  f2. c4 |
  
  \tuplet 3/2 { f4 g4 f4 } c'4. c8 | a1 | r1 |
  
  \sect "B"
  
  d2 e4. e8 | cs2 ef4. ef8 | c2 d4. d8 | b1 |
  bf2 c4. c8 | a2 d2 | \tuplet 3/2 { e4 e4 e4 } \tuplet 3/2 { e4 ef4 d4 } | g,2 gs2 |
  
  \sect "A3"

  c,2 c'2 | \tuplet 3/2 { bf4 c4 bf4 } cs4 a8 f8~ | f1 | \tuplet 3/2 { f4 g4 f4 } af4. af8 |
  
  f2. c4 | \tuplet 3/2 { f4 g4 f4 } c'4 c8 c8~ | c1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
