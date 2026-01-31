%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "The Lamp Is Low"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Peter De Rose and Bert Shefter"
  copyright = \markup \small { \now " " "© 1939 Robbins Music Corporation, based on Maurice Ravel's"
			       \italic "Pavane pour une infante défunte" }
}

refrainLyrics = \lyricmode {
Dream __ be -- side me in the mid -- night glow. __ The lamp is low. __
Dream __ and watch the shad -- ows come and go. __  The lamp is low. __
While __ you lin -- ger in my arms, my lips will sigh, __ “I love you so.” __
Dream __ the sweet -- est dream we'll ev -- er know.
To -- night the moon is high, the lamp is low.
}

refrainChords = \chordmode {
  a1:m9 a1:m9 d1:sus13 d2:sus13 d2:7
  g1:6.9 c1:9 b1:m7 e1:7

  a1:m9 a1:m9 d1:sus13 d2:sus13 d2:7
  g1:6.9 c1:9 g1:6.9 g1:6.9
  
  d1:m7 d1:m7 g1:7sus g1:9
  c1:maj7 c1:maj7 f1:7 f1:7

  a1:m9 a1:m9 d1:sus13 c1:7
  b1:m7 e1:7 a1:m7.5- d1:7.9-
  g1:6

  \chordOpenParen{ b2:m7 }
  \chordCloseParen{ e2:7 }
}

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing or Latin or Medium Slow [Mildred Bailey 1939]" 4 = 96

  \sectStart "A1"
  
  b1~ | b4 a4 d4 b4 | b2 a2 | g2 a2 |
  \break
  e1~ | e4 d4 g4 fs4 | e1~ | e2 r2 |
  
  \sect "A2"

  b'1~ | b4 a4 d4 b4 | b2 a2 | g2 a2 |
  \break
  e1~ | e4 d4 g4 fs4 | e1~ | e2 r2 |
  
  \sect "B"  

  d'1~ | d4 c4 e4 d4 | c2 b2 | a2. b4 |
  \break
  b4 a4 c2~ | c4 b4 a4 g4 | ef1~ | ef2 r2 |

  \sect "A3"

  b'1~ | b4 a4 d4 b4 | b2 a2 | g2 fs2 |
  \break
  e'1 | r4 b4 c4 d4 | d4 c4 ef2 | r4 fs,4 fs4 fs4 |
  g1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
