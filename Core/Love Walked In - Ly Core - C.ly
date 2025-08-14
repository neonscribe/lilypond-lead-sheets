%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Love Walked In"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = \markup \small "© 1937 George Gershwin Music and Ira Gershwin Music."
}

refrainLyrics = \lyricmode {
Love walked right in and drove the shad -- ows a -- way.
Love walked right in and brought my sun -- ni -- est day.

One mag -- ic mo -- ment and my heart seemed to know
that love said “Hel -- lo,” though not a word was spo -- ken.

One look and I for -- got the gloom of the past.
One look and I had found my fu -- ture at last.

One look and I had found a world com -- plete -- ly new,
when love walked in with you.
}

refrainChords = \chordmode {
  c1:maj7 a1:m7 d1:7 d2:m7 g2:7
  c1:maj7 a1:m7 d1:7 g1:7
  
  c1:sus9 c1:7 f1:6 e2:m7 a2:7
  d1:m7 f2:m7 bf2:7 e2:m7 a2:7.9-.5+ d4:7.5- d4:7 d4:m7 g4:7
  
  c1:maj7 a1:m7 d1:7 d2:m7 g2:7
  c1:maj7 a1:m7 d1:7 g1:7
  
  c1:sus9 c1:7 f1:6 fs2:m7.5- b2:7.5+
  e2:m7 a2:7.9- d2:m7 g2:7.9- c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Artie Shaw 1950]" 4 = 140

  \sectStart "A1"
  
  e'1 | g,4 c4 e4 g4 | fs4 fs4 fs8 e8 fs4 | g1 |
  \break
  e1 | g,4 c4 e4 g4 | a4 a4 a8 g8 a4 | b1 |
  
  \sect "B"
  
  c1 | c,4 e4 g4 c4 | b4 b4 b8 a8 b4 | a1 |
  \break
  r4 g4 g8 f8 g4 | f1 | r4 e4 f4 g4 | gs4 a4 c,4 d4 |

  \sect "A2"

  e1 | g,4 c4 e4 g4 | fs4 fs4 fs8 e8 fs4 | g1 |
  \break
  e1 | g,4 c4 e4 g4 | a4 a4 a8 g8 a4 | b1 |
  
  \sect "C"

  c1 | c,4 e4 g4 c4 | d2 c2 | b4 a4 g4 f4 |
  \break
  e2. e4 | g4 f4 e4 d4 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
