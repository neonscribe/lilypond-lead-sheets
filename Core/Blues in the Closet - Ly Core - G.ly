%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Blues in the Closet"
  subtitle = \instrument
  poet = ""
  composer = "Oscar Pettiford"
  copyright = "© 1955 Orpheus Music, Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s8
  g1:7 g1:7 g1:7 g1:7
  c1:7 c1:7 g1:7 g1:7
  a1:m7 d1:7 g1:7 g1:7
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bright Blues" 4 = 190

  \partial 8 g8~ |
  \bar "||"
  
  \xTextMark \markup{ \bold \box "Head" }

  g4 b8 g8 c4 b8 g8 | c4 b8 g8 r8 d4 g8~ | g4 b8 g8 c4 b8 g8 | r8 d4. r4 r8 g8~ |
  \break
  g4 bf8 g8 c4 bf8 g8 | c4 bf8 g8 r8 d4 g8~ | g4 b8 g8 c4 b8 g8 | r8 d4. r4 r8 g8~ |
  \break
  g4 b8 g8 c4 b8 g8 | c4 b8 g8 r8 d4 g8~ | g4 b8 g8 c4 b8 g8 | r8 d4. r4 r8
  \override Parentheses.font-size = #5
  \parenthesize g8\laissezVibrer |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
