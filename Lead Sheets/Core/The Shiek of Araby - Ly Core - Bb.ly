%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "The Shiek of Araby"
  subtitle = \instrument
  poet = "Harry B Smith and Francis Wheeler"
  composer = "Ted Snyder"
  copyright = "© 1921 Ted Snyder Music Publishing Co."
}

refrainLyrics = \lyricmode {
I'm the Shiek of Ar -- a -- by, __
your love be -- longs to me. __
At night when you're a -- sleep __
in -- to your tent I'll creep. __
The stars that shine a -- bove, __
will light our way to love. __
You'll rule this land with me; __
The Shiek of Ar -- a -- by. __
}

refrainChords = \chordmode {
  s4

  bf1 bf2 b2:dim7 c1:m7 f1:7
  c1:m7 f1:7 bf1 bf1
  bf1/d df1:dim7 c1:m7 f1:7
  c1:m7 f1:7 bf2 b2:dim7 c2:m7 f2:7

  bf1 bf2 b2:dim7 c1:m7 f1:7
  c1:m7 f2:7 ef2:7 d1:7 d1:7
  g1:7.5+ g1:7.5+ c1:7 c1:7
  c1:m7 f1:7 bf2
  \chordOpenParen{ b2:dim7 }
  c2:m7
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 112

  \partial 4 f8 fs8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g2. f4 | g2. f4 | g1~ | g2. f4 |
  \break
  g2. f4 | c'2. d4 | bf1~ | bf2. a4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c2. g4 | bf2. g4 | g1~ | g2. g4 |
  \break
  bf2. g4 | a2. f4 | g1~ | g2. f4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  g2. f4 | g2. f4 | g1~ | g2. f4 |
  \break
  g2. f4 | c'2. cs4 | d1~ | d2. d4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  ef2. d4 | ef2. d4 | d1~ | d2. a4 |
  \break
  g2. a4 | f2. c'4 | bf1~ | bf2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
