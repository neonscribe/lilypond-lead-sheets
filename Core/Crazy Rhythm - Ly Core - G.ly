%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Crazy Rhythm"
  subtitle = \instrument
  poet = "Irving Caesar"
  composer = "Joseph Meyer and Roger Wolfe Kahn"
  copyright = \markup \small { \now " " "© 1928 HARMS Inc." }
}

refrainLyrics = \lyricmode {
Cra -- zy rhy -- thm, here's the door -- way, I'll go my way, you'll go your __ way.
Cra -- zy rhy -- thm, from now on __ we're through. __

Here is where we have a show -- down, I'm too high -- hat, you're too low -- down,
Cra -- zy rhy -- thm, here's good -- bye __ to you. __

They say that when a high -- brow meets a low -- brow walk -- ing a -- long Broad -- way,
Soon the high -- brow he has no brow, ain't it a shame, and you're to blame.

What's the use of Pro -- hi -- bi -- tion? You pro -- duce the same con -- di -- tion.
Cra -- zy rhy -- thm, I've gone cra -- zy, too. __
}

refrainHLChords = \chordmode {
  g1:maj7 g1:maj7 g1:maj7 g2:maj7/b bf2:dim7
  a1:m7 d1:7 g1:6 a2:m7 d2:7

  g1:maj7 g1:maj7 g1:maj7 g2:maj7/b bf2:dim7
  a1:m7 d1:7 g1:6 g2.:6 d4:7

  d1:m7 g1:7 c2 g2:7 c1
  c1:m f1:9 e1:7 a2:7 d2:7
  
  g1:maj7 g1:maj7 a1:7 a1:7
  d1:7 d1:7 g1 g1
}

refrainSRBChords = \chordmode {
  g1:6 g1:6 g1:6 g2:maj7 e2:m7
  a1:m7 d1:7.9- g2:6 e2:7.9- a2:m7 d2:7.9-

  g1:6 g1:6 g1:6 g2:maj7 e2:m7
  a1:m7 d1:7.9- g1:6 g2:6 \chordInsideParens{ ef2:dim7 }

  d1:m7 g1:7 c1:maj9 c1:6
  c2:m7 \chordInsideParens{ c2:m6 } f1:9 b2:7.5+ e2:9 a2:7.5+ d2:9
  
  g1:6 \chordInsideParens{ e1:m7 } a1:9 a1:9
  a1:m7 d1:7 g2:6
  \chordOpenParen{ e2:7.9- }
  a2:m7
  \chordCloseParen{ d2:7.9- }
}

refrainDFBChords = \chordmode {
  g1 g1 g1 g2/b bf2:dim7
  a1:m7 d1:7 g2 e2:7 a2:m7 d2:7

  g1 g1 g1 g2/b bf2:dim7
  a1:m7 d1:7 g1 g1

  d1:m7 g1:7 c1 c1
  c1:m6 c1:m6 b2:7 e2:7 a2:7 d2:7
  
  g1 g1 a1:7 a1:7
  a1:m7 ef2:7 d2:7 g2 e2:7 a2:m7 d2:7
}

refrainChords = \refrainSRBChords

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
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing [Doris Day 1950]" 4 = 192

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 g8 r4 | r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 g8 r4 |
  \break
  r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 a4. | g1~ | g4 r4 r2 |
  
  \sect "A2"
  
  r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 g8 r4 | r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 g8 r4 |
  \break
  r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 a4. | g1~ | g4 a4 b4 c4 |
  
  \sect "B"
  
  r8 d4 d8 c4 c4 | b4 b8 c8~ c8 d4. | d8 c4 d8 c4 b4 | a1 |
  \break
  r8 c4 c8 b4 b4 | a4 a8 b8~ b8 c4. | c8 b4 c8 b2 | b8 a4 b8 a2 |
  
  \sect "A3"

  r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 g8 r4 | r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 g8 r4 |
  \break
  r8 a4 a8 g4 g4 | fs4 fs8 g8~ g8 a4. | g1~ | g4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
