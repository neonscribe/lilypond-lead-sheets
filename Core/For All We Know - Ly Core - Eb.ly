%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "For All We Know"
  subtitle = \instrument
  poet = "Sam M. Lewis"
  composer = "J. Fred Coots"
  copyright = \markup \small "© 1934 Cromwell Music, Inc."
}

refrainLyrics = \lyricmode {
For all we know we make nev -- er meet a -- gain. __
Be -- fore you go make this mo -- ment sweet a -- gain. __
We won't say good -- night un -- til the last min -- ute.
I'll hold out my hand and my heart will be in it.
For all we know this may on -- ly be a dream. __
We come and go like a rip -- ple on a stream. __
So love me to -- night, to -- mor -- row was made for some.
To -- mor -- row may nev -- er come, for all we know. __
}

refrainChords = \chordmode {
  s4
  
  ef2:6 c2:m7 f1:9 bf1:7 f2:m7 bf2:7
  ef2:maj7 af2:maj7 g2:m7.5- c2:7.9- f1:m7 f2:m7.5- bf2:7
  
  ef1:maj7 gf1:dim7 f1:m7 bf1:7
  c1:m7 f1:7 f1:m7 bf1:7

  ef2:6 c2:m7 f1:9 bf1:7 f2:m7 bf2:7
  ef2:maj7 af2:maj7 g2:m7.5- c2:7.9- f1:m7 f2:m7.5- bf2:7
  
  ef1:maj7 a2:m7 d2:7 g2:7 df2:9.11+ c2:sus9 c2:7
  f1:m7 bf1:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Beverly Kenney 1958]" 4 = 78

  \partial 4 bf,4 |

  \sectNoBreak "A1"
  
  ef2. bf4 | g'2. f8 ef8 | d8 ef8 \tuplet 3/2 { f8 g8 f8~ } f2~ | f4 r4 r4 bf,4 |
  \break
  g'2. ef4 | bf'2. af8 g8 | f8 g8 \tuplet 3/2 { af8 bf8 af8~ } af2~ | af4 r4 r4 a4 |
  
  \sect "B"
  
  bf2 bf4 bf4 | d2. c4 | bf2 af4 bf4 | g4 f2 bf,4 |
  \break
  ef2 ef4 ef4 | c2 d4 ef4 | af2 c,4 ef4 | g4 f2 bf,4 |
  
  \sect "A2"

  ef2. bf4 | g'2. f8 ef8 | d8 ef8 \tuplet 3/2 { f8 g8 f8~ } f2~ | f4 r4 r4 bf,4 |
  \break
  g'2. ef4 | bf'2. af8 g8 | f8 g8 \tuplet 3/2 { af8 bf8 af8~ } af2~ | af4 r4 r4 a4 |
  
  \sect "C"
  
  bf2 bf4 bf4 | d2. c4 | \tuplet 3/2 { b4 c4 d4 } g,4 g4 | g2. g4 |
  \break
  \tuplet 3/2 { af4 bf4 c4 } f,4 f4 | f4 f4 ef4 d4 | ef1~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
