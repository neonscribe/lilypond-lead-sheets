%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Route 66"
  subtitle = "Oscar Moore's guitar solo transcribed from Nat King Cole's 1946 recording"
  poet = ""
  composer = "Bobby Troup"
  copyright = \markup \small "© 1946 Burke & Van Heusen, Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  g8*5:7 cs8*3:9 c2.:9 s8 g8*7:7 s8 g8*5:13 s8 g8:13 s8 c8*9:9
  c4:9 s8 gs8*3:13 s8 g8*4:13 gs8*3:13 s8 b8*3:m7 s8 bf8*4:m7
  a8*4:m7 a8*3:m9 s8 gs8*9 g2 g2/b a2:m7 d2:9
}

refrainKey = g

refrainMelody = \relative f {
  \time 4/4
  \key \refrainKey \major
  \tempo "Medium" 4 = 146

  a'8\2 bf8\2 c8 d8 ef8 d8 c8 bf8\2 | a8\2 g8\2 f8\3 ef8~\3 ef4.\3 d8~\3 |
  d4\3 \tuplet 3/2 { g,8\5 b8\4 d8\3 } g8\2 b8 d4 | e4 af,8\2 bf8~\2 bf4 af8\2 g8~\2 |
  \break
  g4\2 c8 bf8\2 a8\2 g8\2 e4\3 | f'8 ef8 d8 c\2 r8 af'4. |
  g4 r4 r4 ef,8\2 d8~\2 | d8\2 g,8\4 bf8\3 b8\3 d8\2 f4.\2 |
  \break
  e4\2 e8\2 e8\2 b'8 e,4.\2 | ef4\2 ef8\2 ef8\2 bf'8 ef,4.\2 |
  d8\2 e8\2 g8 a8 as8 b8 \appoggiatura{ g16 a16 } g8 e8\2 | d8\2 c8\3 bf8\3 b8~\3 b8\3 d,4.\5 |

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  r2 r8 g4. | g2. r8 g8~ | g2. r8 g8~ | g2 r8 g8 r8 g8~ |
  g1 | g4 r8 g8~ g4 r8 g8~ | g4. g8~ g4 r8 g8~ | g4 r8 g8~ g4. g8~ |
  g4. g8~ g4 r8 g8~ | g1 | g4 g4 g4 g4 | g4 g4 g4 g4 |
}



\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-guitar-tablature.ily"

\markup "Original recording is in G major."

\markup "Rhythm track and chords are Oscar Moore's guitar accompaniment to Nat King Cole's piano solo."