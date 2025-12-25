%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "The More I See You"
  subtitle = \instrument
  poet = "Mack Gordon"
  composer = "Harry Warren"
  copyright = \markup \small { \now " " "© 1945 Twentieth Century Music Corporation" }
}

refrainLyrics = \lyricmode {
The more I see you, __ the more I want you. __
Some -- how this feel -- ing __ just grows and grows. __

With ev -- 'ry sigh I be -- come more mad a -- bout you; __ more lost with -- out you, __ and so it goes. __

Can you i -- mag -- ine __ how much I'll love you, __ the more I see you __ as years go by? __

I know the on -- ly one for me can on -- ly be you. __
My arms won't free you, __ my heart won't try. __
}

refrainChords = \chordmode {
  s2.
  
  f2:6 bf2:9 a2:m7 d2:7.9- g1:m7 c2:7 g2:m7/c
  f2:6 bf2:9 a2:m7 d2:7.9- g1:m7 c1:7
  
  f2:m7 c2:7/e ef2:m7 af2:7 df1:maj7 g2:m7.5- c2:7.5+
  f2:m7 f2:m7/ef d2:m7 g2:7 g1:m7/c c2:7 g2:m7/c

  f2:6 bf2:9 a2:m7 d2:7.9- g1:m7 c2:7 g2:m7/c
  f2:6 bf2:9 a2:m7 d2:7.9- c1:m7 f1:9
  
  bf1:maj7 ef1:9 a1:m7 d2:m7 g2:7
  f2:maj7 d2:m7 g2:m7 g2:m7/c f2:6 bf2:9 f2:6
  \chordInsideParens{ c2:7 }
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
  \tempo "Medium [Chet Baker 1958]" 4 = 150

  \partial 2. c4 f4. e8 |
  \bar "||"

  \sectStart "A1"
  
  f2 c2~ | c4 f4 c'4. b8 | c2 g2~ | g4 c,4 f4. e8 |
  \break
  f2 c2~ | c4 f4 c'4. b8 | c1~ | c4 c4 c4 c4 |
  
  \sect "B"
  
  c2 c4 c4 | c4 ef4 c4. bf8 | af2 af2~ | af4 c4 af4. g8 |
  \break
  f2 f2~ | f4 a4 f4. d8 | g1~ | g4 c,4 f4. e8 |

  \sect "A2"

  f2 c2~ | c4 f4 c'4. b8 | c2 g2~ | g4 c,4 f4. e8 |
  \break
  f2 c2~ | c4 f4 d'4. c8 | d1~ | d4 c4 bf4 a4 |
  
  \sect "C"
  
  f'4 d4 c4 bf4 | df4 bf4 f4 g4 | c2 c,2~ | c4 c4 f4. g8 |
  \break
  a2 c,2~ | c4 a'4 f4 g4 | f1~ | f2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
