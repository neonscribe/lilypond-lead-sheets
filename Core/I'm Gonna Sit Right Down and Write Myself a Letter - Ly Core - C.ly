%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "I'm Gonna Sit Right Down and Write Myself a Letter"
  subtitle = \instrument
  poet = "Joe Young"
  composer = "Fred E. Ahlert"
  copyright = \markup \small { \now " " "© 1935 Crawford Music Corporation" }
}

refrainLyrics = \lyricmode {
I'm gon -- na sit right down and write my -- self a let -- ter
And make be -- lieve it came from you
I'm gon -- na write words, oh so sweet
They're gon -- na knock me off my feet
A lot -- ta kiss -- es on the bot -- tom
I'll be glad I got 'em

I'm gon -- na smile and say, “I hope you're feel -- ing bet -- ter”
And close with “Love,” the way you do
I'm gon -- na sit right down and write my --  self a let -- ter
And make be -- lieve it came from you
}

refrainChords = \chordmode {
  s2
  
  c2 c2:maj7 c2:6 g2:7.5+ c1:maj7 c1:maj7
  c1:maj7 e1:7 f2 a2:7/e d1:m
  
  d1:m7 f2/g g2:7 c1 g2:m6/bf a2:7
  d1:7 d1:7 g1:7 g1:7
  
  c2 c2:maj7 c2:6 g2:7.5+ c1:maj7 c1:maj7
  c1:maj7 e1:7 f2 a2:7/e d1:m
  
  f2 f2:maj7 f2:6 fs2:dim7 c2/g g2:m/bf a1:7
  d1:7 d2:m7/g g2:7 c2
  \chordOpenParen{ c2:dim7 }
  d2:m7
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
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Fats Waller 1935]" 4 = 115
  
  \partial 2 \invisEighth fs8 g8 fs8 |

  \sectNoBreak "A1"
  
  g4 a4 e4 g4 | a4 e4 g4 a4 | b2 b2~ | b2. d4 |
  \break
  d4 c4 c4 b4 | b2. gs4 | a1~ | a2 r8 b8 c8 b8 |
  
  \sect "B"
  
  c4 a4 a4 f4 | f2 r8 b8 c8 b8 | c4 a4 a4 e4 | e2 r8 ds8 e8 fs8 |
  \break
  g4 a4 e4 fs4 | g4 a2. | b4 c4 a4 b4 | c4 d4~ d8 fs,8 g8 fs8 |
  
  \sect "A2"

  g4 a4 e4 g4 | a4 e4 g4 a4 | b2 b2~ | b2. d4 |
  \break
  d4 c4 c4 b4 | b2. gs4 | a1~ | a2 r8 gs8 a8 b8 |
  
  \sect "C"
  
  c4 d4 a4 c4 | d4 c4 ef4 d4 | c2 g2~ | g2. e'4 |
  \break
  e4 c4 c4 a4 | a2. g4 | c1~ | c2 r8
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize fs,8
  g8
  \endParenthesis \parenthesize fs8 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
