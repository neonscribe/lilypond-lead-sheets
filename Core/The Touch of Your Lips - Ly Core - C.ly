%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "The Touch of Your Lips"
  subtitle = \instrument
  poet = ""
  composer = "Ray Noble"
  copyright = \markup \small { \now " " "© 1936 Chappell & Co." }
}

refrainLyrics = \lyricmode {
The touch of your lips __ up -- on my brow; __ your lips that are cool __ and sweet. __
Such ten -- der -- ness __ lies in their soft ca -- ress, __ my heart for -- gets to beat. __
The touch of your hands __ up -- on my head, __ the love in your eyes __ a -- shine; __
and now at last __ the mo -- ment di -- vine, __ the touch of your lips __ on mine. __
}

refrainChords = \chordmode {
  s4
  
  c2:maj7 a2:m7 d2:m7 g2:7 e2:m7 a2:7.5+ d2:m7 g2:7
  c1:maj7 f1:7 e1:m7.5- a2:7.9- a2:7
  
  d1:m7.5- g1:7 c1:maj7 a2:m7 b2:7.9-
  e2:maj7 cs2:7 fs2:m7 b2:7 e1:maj7 g2:7 g2:sus7

  c2:maj7 a2:m7 d2:m7 g2:7 e2:m7 a2:7.5+ d2:m7 g2:7
  c1:maj7 f1:7 e1:m7.5- a2:7.9- a2:7
  
  d1:m7.5- g2:7 e2:7.5+.9- a1:m7 d1:7
  d1:m7 g2:sus7 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
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
  \tempo "Ballad [Sarah Vaughan 1955]" 4 = 88

  \partial 4 c4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  \tuplet 3/2 { d4 e4 d4 } e2~ | e2 g2 | a4. a8 a2~ | a2 a2 |
  \break
  \tuplet 3/2 { b4 c4 b4 } c2~ | c2 b2 | bf1~ | bf2 a2 |
  
  \sect "B"
  
  af4. f8 d2~ | d2 \tuplet 3/2 { d4 e4 f4 } | g4. e8 c2~ | c2 c'2 |
  \break
  b2 gs2 | fs2 ds2 | b1~ | b2 c2 |
  
  \sect "A2"
  
  \tuplet 3/2 { d4 e4 d4 } e2~ | e2 g2 | a4. a8 a2~ | a2 a2 |
  \break
  \tuplet 3/2 { b4 c4 b4 } c2~ | c2 b2 | bf1~ | bf2 a2 |
  
  \sect "C"
  
  af4. f8 d2~ | d4 e4 \tuplet 3/2 { f4 af4 c4 } | c1~ | c2 c2 |
  \break
  \tuplet 3/2 { d4 e4 d4 } e2~ | e2 b2 | c1~ | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
