%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Dream"
  subtitle = \instrument
  poet = ""
  composer = "Johnny Mercer"
  copyright = \markup \small { \now " " "© 1944 Capitol Songs, Inc." }
}

refrainLyrics = \lyricmode {
Dream, __ when you're feel -- in' blue. __
Dream, __ that's the thing to do. __
Dream, __ while the smoke rings rise in the air. __
You'll find your share __ of mem -- o -- ries there. __
So dream __ when the day is through. __
Dream __ and they might come true. __
Things __ nev -- er are as bad as they seem, __ so dream, dream, dream. __
}

refrainChords = \chordmode {
  bf1 bf1 e1:m7 a1:7
  bf1:6 bf1:6 d1:m7 g1:7

  c1:m7 ef1:m bf1 bf1:maj7
  c1:7 c1:7 c1:m7 c2:m7/f f2:7.9-

  bf1 bf1 e1:m7 a1:7
  bf1:6 bf1:6 d1:m7 g1:7

  c1:m7 ef1:m bf2 a2:7 d2:7 g2:m7
  c1:m7 f1:7.9- bf1 bf2
  \chordOpenParen{ c4:m7 }
  \chordCloseParen{ f4:7 }
}

refrainKey = bf

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
  \tempo "Ballad [The Pied Pipers 1944]" 4 = 70

  \sectStart "A1"
  
  bf1~ | bf4 c8 bf8 c4 bf4 | a1~ | a1 |
  \break
  g1~ | g4 a8 g8 a4 g4 | f1~ | f1 |
  
  \sect "B"
  
  ef1~ | ef4 f8 ef8 f4 ef4 | d4 f4 g4 a4~ | a1 |
  \break
  e4 g4 a4 bf4~ | bf2. a4 | g4 a4 bf4 c4~ | c2 d2 |
  
  \sect "A2"

  bf1~ | bf4 c8 bf8 c4 bf4 | a1~ | a1 |
  \break
  g1~ | g4 a8 g8 a4 g4 | f1~ | f1 |
  
  \sect "C"

  ef1~ | ef4 f8 ef8 f4 ef4 | d4 f4 g4 a4~ | a2 bf2 |
  \break
  c1 | d1 | bf1~ | bf2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
