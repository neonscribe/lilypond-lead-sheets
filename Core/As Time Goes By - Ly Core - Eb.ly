%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "As Time Goes By"
  subtitle = \instrument
  poet = ""
  composer = "Herman Hupfeld"
  copyright = \markup \small "© 1931 Warner Bros. Inc."
}

refrainLyrics = \lyricmode {
You must re -- mem -- ber this,
a kiss is still a kiss, a sigh is just a sigh.
The fun -- da -- men -- tal things ap -- ply, as time goes by. __
And
_
Moon -- light and love songs nev -- er out of date,
hearts full of pas -- sion, jeal -- ous -- y and hate.
Wo -- man needs man and man must have his mate,
that no man can de -- ny.

It's still the same old sto -- ry, a fight for love and glo -- ry,
a case of do or die.
The world will al -- ways wel -- come lov -- ers as time goes by.
}

refrainLyricsTwo = \lyricmode {
_ when two lov -- ers woo, they still say “I love you,”
On that you can re -- ly.
No mat -- ter what the fu -- ture brings, as time goes _ _ by.
}

refrainChords = \chordmode {
  s4

  f2:m7 bf2:7 bf2:m6 bf2:7 ef2:6 f2:m7
  fs2:dim7 g2:m7 f1:7 f2:m7 bf2:7
  
  ef2:maj7 af2:maj7 g2:m7 c2:7.9-
  
  ef1:6 bf2:m7 ef2:7
  
  af1:maj7 c1:7 f1:m7 fs1:dim7
  c2:m7 af2:7 f1:7 bf2:7 bf2:dim7 f2:m7 bf4:7 c4:7.9-

  f2:m7 bf2:7 bf2:m6 bf2:7 ef2:6 f2:m7 fs2:dim7 g2:m7
  f2:7 fs2:dim7 g2:m7 c2:7 f2:m7 bf2:7 ef2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Dooley Wilson 1942]" 4 = 72

  \partial 4 \invisEighth g8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  af8 g8 f8 ef8 f4. g8 | bf8 af8 g8 f8 af4. bf8 | ef8 d8 c8 bf8 c2 |
  \break
  r2 r4 d4 | f8 ef8 d8 c8 d4 ef4 | bf4 bf4 ef,4 f4 |
  \break
  \alternative { \volta 1 {
  g1~ | g2 r4 r8 g8 |
  } \volta 2 {
  ef1~ | ef2 r2 |
  } } }
  \sect "B"
  
  ef8 f8 ef8 c'8~ c4 c4 | c8 df8 c8 b8 c2 | f,8 g8 f8 c'8~ c4 c4 | c8 d8 c8 b8 c2 |
  \break
  g8 af8 g8 ef'8~ ef4 ef4 | ef8 d8 ef8 d8 f4 d4 | c4 c4 g4 g4 | bf2. r8 g8 |
  
  \sect "A3"
  
  af8 g8 f8 ef8 f8 f4 g8 | bf8 af8 g8 f8 af8 af4 bf8 | ef8 d8 c8 bf8 c2 | r2 r4 d4 |
  \break
  f8 ef8 d8 c8 d4 ef4 | bf4 bf2 g4 | bf2 bf2 | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
