%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "You Don't Know What Love Is"
  subtitle = \instrument
  poet = "Don Raye"
  composer = "Gene de Paul"
  copyright = \markup \small { \now " " "© 1941 Universal Music Corp." }
}

refrainLyrics = \lyricmode {
  You don't know __ what love is, __
  un -- til you've learned the mean -- ing __ of the blues.
  Un -- til you've loved a love you've had to lose,
  You don't know __ what love is. __
  
  You don't know __ how lips hurt, __
  un -- til you've kissed and had to __ pay the cost.
  Un -- til you've flipped your heart and you have lost,
  You don't know __ what love is. __

  Do you know __ how a lost heart fears __
  the thought of rem -- i nisc -- ing? __
  And how lips that taste of tears __ lose their taste __ for kiss -- ing? __
  
  You don't know __ how hearts burn
  for love that can not live, yet __ nev -- er dies.
  Un -- til you've faced each dawn with sleep -- less eyes,
  You don't know __ what love is. __
}

refrainChords = \chordmode {
  s4
  
  f1:m7 df2:9 c2:7.9- f2:m6 g4:m7 c4:7.9- df1:7
  bf2:7 g4:m7.5- c4:7.9- f2:m7 af2:7 df1:7 g2:m7.5- c2:7.9-

  f1:m7 df2:9 c2:7.9- f2:m6 g4:m7 c4:7.9- df1:7
  bf2:7 g4:m7.5- c4:7.9- f2:m7 af2:7 df2:7 c2:7.9- f1:m6

  bf2:m7 ef2:7 af2:maj7 f2:7.9- bf2:m7 ef2:7 af1:maj7
  d2:m7 g2:7 c1:maj7 df1:9.11+ c1:7.9-

  f1:m7 df2:9 c2:7.9- f2:m6 g4:m7 c4:7.9- df1:7
  bf2:7 g4:m7.5- c4:7.9- f2:m7 af2:7 df2:7 c2:7.9- f2:m6
  
  \chordOpenParen{ g4:m7.5- }
  \chordCloseParen{ c4:7.9- }
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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad [Miles Davis 1954]" 4 = 66

  \partial 4 \invisEighth c8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g'8 g4.~ g4 g4 | af8 af4.~ af4 r8 g8 |
  f8 g8 af8 bf8 c8 bf8~ \tuplet 3/2 { bf8 af8 g8 } | f2. r8 g8 |
  g8 af8 bf8 c8 df8 c8 ef8 df8 | c2. c4 | bf8 bf4.~ bf4 af4 | g8 g4.~ g4 r8 c,8 |
  
  \sect "A2"
  
  g'8 g4.~ g4 g4 | af8 af4.~ af4 r8 g8 |
  f8 g8 af8 bf8 c8 bf8~ \tuplet 3/2 { bf8 af8 g8 } | f2. r8 g8 |
  g8 af8 bf8 c8 df8 c8 ef8 df8 | c2. c4 | bf8 bf4.~ bf4 af4 | f8 f4.~ f4 ef4 |
  
  \sect "B"
  
  ef'8 ef4.~ ef4 df8 ef8 | c8 c4 c8~ c4. c8 |
  f,4. g8 af8 bf4 c8~ | c8 ef4.~ ef4 ef8 ef8 |
  e4. e8 e8 d4 g,8~ | g1 | g8 g4 g8~ g4. g8 | af8 g4.~ g4 r8 c,8 |
  
  \sect "A3"

  g'8 g4.~ g4 g4 | af8 af4.~ af4 r8 g8 |
  f8 g8 af8 bf8 c8 bf8~ \tuplet 3/2 { bf8 af8 g8 } | f2. r8 g8 |
  g8 af8 bf8 c8 df8 c8 ef8 df8 | c2. c4 | bf8 bf4.~ bf4 af4 | f8 f4.~ f2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
