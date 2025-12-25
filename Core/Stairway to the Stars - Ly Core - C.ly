%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Stairway to the Stars"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Matt Malneck and Frank Signorelli"
  copyright = \markup \small { \now " " "© 1935 Robbins Music Corporation" }
}

refrainLyrics = \lyricmode {
Let's build a stair -- way to the stars and climb that stair -- way to the stars,
with love be -- side us to fill the night with a song.

We'll hear the sound of vi -- o -- lins, out yon -- der where the blue be -- gins.
The moon will guide us as we go drift -- ing a -- long. __

Can't we sail a -- way on a la -- zy dai -- sy pet -- al o -- ver the rim of the hill?
Can't we sail a -- way on a lit -- tle dream and set -- tle high on the crest of a thrill?

Let's build a stair -- way to the stars a love -- ly stair -- way to the stars.
It would be hea -- ven to climb to hea -- ven with you. __
}

refrainChords = \chordmode {
  c2 g2:7.5+ g2:m7 c2:9 f1:maj7 f2:m9 bf2:9.11+
  a2:m7 d2:7 d2:m7 g2:7 c2:maj7 a2:7.9- af2:9 g2:9

  c2 g2:7.5+ g2:m7 c2:9 f1:maj7 f2:m9 bf2:9.11+
  a2:m7 d2:7 d2:m7 g2:7 c1:6 fs2:m7.5- b2:7
  
  e2:m e2:m7+ e2:m7 b2:7.9- e1:m7 a1:7
  d2:m d2:m7+ d2:m7 a2:7.9- d2:m7 d2:7 d2:m7/g g2:7

  c2 g2:7.5+ g2:m7 c2:9 f1:maj7 f2:m9 bf2:9.11+
  a2:m7 d2:7 d2:m7 g2:7 c2:6 f2:m6 c2:6
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

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
  \tempo "Medium Ballad [Glenn Miller 1939]" 4 = 110

  \sectStart "A1"
  
  r4 g4 gs4 a4 | c8 c8 c8 c8 a2 | r4 e4 e4 e4 | g8 g8 g8 g8 e2 |
  \break
  r8 c8 c8 c8 c8 e4 c8 | g'4 g8 g8~ g8 gs8 a4 | e1 | r1 |
  
  \sect "A2"

  r4 g4 gs4 a4 | c8 c8 c8 c8 a2 | r4 e4 e4 e4 | g8 g8 g8 g8 e2 |
  \break
  r8 c8 c8 c8 c8 e4 c8 | g'4 g8 g8~ g8 gs8 a4 | c1~ | c4 r4 r2 |
  
  \sect "B"
  
  b8 b8 b8 b8 b2 | b8 a8 g8 fs8 e8 fs8 g8 a8 |
  \tuplet 3/2 { b4 b4 b4 } \tuplet 3/2 { b4 a4 fs4 } | e1 |
  \break
  a8 a8 a8 a8 a2 | a8 g8 f8 e8 d8 e8 f8 g8 |
  \tuplet 3/2 { a4 a4 a4 } \tuplet 3/2 { c4 c4 c4 } | d1 |
  
  \sect "A3"

  r4 g,4 gs4 a4 | c8 c8 c8 c8 a2 | r4 e4 e4 e4 | g8 g8 g8 g8 e2 |
  \break
  r8 c8 c8 c8 c8 e4 c8 | g'4 g8 g8~ g8 gs8 a4 | c1~ | c2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
