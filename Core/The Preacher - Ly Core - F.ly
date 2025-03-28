%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "The Preacher"
  subtitle = \instrument
  poet = "Babs Gonzales"
  composer = "Horace Silver"
  copyright = \markup \small "© 1956 Ecaroh Music, Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2.
  
  f1 f2 f2:7 bf2 b2:dim7 f2/c f2
  f1 f2 d2:m7 g1:7 c1:7
  f1 f2 f2:7 bf1 a1:7
  bf2 b2:dim7 f2/c d2:m7 g2:m7 c2:7 f2

  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up" 4 = 184

  \partial 2. c4 d4 f4 |
  \bar "||"
  
  a4 a2 gs4 | a2 f2 | bf2 f4 g8 a8~ | a8 c,4. d4 f4 |
  \break
  a4 a2 gs4 | a2 f4 f4 | a4 g4 g4 a8 g8~ | g4 c,8 c8 d4 f4 |
  \break
  a4 a2 gs4 | a2 f2 | bf2 c4 bf8 a8~ | a2. a4 |
  \break
  bf2 b2 | c8 gs8 a8 f8~ f4 d4 | bf'4 a4 f8 c8 e8 f8~ | f4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
