%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Laura"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "David Raksin"
  copyright = "© 1945 Twentieth Century Music Corp."
}

refrainLyrics = \lyricmode {
Lau -- ra __ is the face in the mist -- y light, __
foot -- steps __ that you hear down the hall. __
The laugh __ that floats on a sum -- mer night, __
that you can nev -- er quite __ re -- call.
And you see Lau -- ra __ on the train that is pass -- ing thru. __
Those eyes, __ how fa -- mil -- iar they seem. __
She gave __ your ver -- y first kiss to you. __
That was Lau -- ra, __ but she's on -- ly a dream.
}

refrainChords = \chordmode {
  a1:m9 d1:7.9- g2:maj9 c2:9 g1:maj9
  g1:m9 c1:7.9- f1:maj9 f1:maj9

  f1:m7 bf2:sus7 bf2:7.9- ef1:maj7 c1:m7
  a2:m7.5- d2:7.9-.5- d2:7.9-.5- d2:7 b1:m7 e1:7.9-

  a1:m9 d1:7.9- g2:maj9 c2:9 g1:maj9
  g1:m9 c1:7.9- f1:maj9 f1:maj9
  
  f2:m7 f2:m7/ef d2:m7.5- g2:7.9- c2:maj9 f2:13 e2:m7 a2:m7
  d1:7.9-.5+ g1:9 c1:6
  \chordOpenParen{ b2:m7.5- }
  \chordCloseParen{ e2:7.9- }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 110

  \xTextMark \markup{ \bold \box "A1" }
  
  b2 b2~ | b4 as8 b8 \tuplet 3/2 { as4 fs4 g4 } | a4. a8 e2~ | e2. r4 |
  \break
  a2 a2~ | a4 gs8 a8 \tuplet 3/2 { gs4 e4 f4 } | g1~ | g2. r4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 ef4 f2~ | f4 ef4 \tuplet 3/2 { f4 ef4 f4 } | g4. g8 d2~ | d4 ef4 g4 bf4 |
  \break
  ef4. ef8 af,2~ | af2 a2 | d1~ | d4 e4 c4 d4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  b2 b2~ | b4 as8 b8 \tuplet 3/2 { as4 fs4 g4 } | a4. a8 e2~ | e2. r4 |
  \break
  a2 a2~ | a4 gs8 a8 \tuplet 3/2 { gs4 e4 f4 } | g1~ | g2. r4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }

  r4 f4 g2~ | g4 e4 \tuplet 3/2 { f4 af4 b4 } | d4. c8 d2~ | d2 b4 c4 |
  \break
  ef2 ef2~ | ef8 r8 e8 ef8 \tuplet 3/2 { d4 a4 b4 } | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
