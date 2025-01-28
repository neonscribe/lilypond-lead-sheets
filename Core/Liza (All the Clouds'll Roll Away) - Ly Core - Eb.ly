%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Liza (All the Clouds'll Roll Away)"
  subtitle = \instrument
  poet = "Gus Kahn and Ira Gershwin"
  composer = "George Gershwin"
  copyright = "© 1929 New World Music Corporation"
}

refrainLyrics = \lyricmode {
Li -- za, Li -- za, skies are gray,
but if you'll smile on me all the clouds -- 'll roll a -- way.

Li -- za, Li -- za, don't de -- lay,
come keep me com -- pa -- ny, and the clouds -- 'll roll a -- way.

See the hon -- ey -- moon a -- shin -- in' down.
We should make a date with Par -- son Brown.

So, Li -- za, Li -- za, name the day
when you be -- long to me and the clouds -- 'll roll a -- way.
}

refrainChords = \chordmode {
  ef2 bf2:7/f fs2:dim7 c2:7/g af2:m6 a2:dim7 bf2:m6 ef2:9
  af2 f2:m7 g2:m c2:9 f2:m7 bf2:7 ef2 bf2:7

  ef2 bf2:7/f fs2:dim7 c2:7/g af2:m6 a2:dim7 bf2:m6 ef2:9
  af2 f2:m7 g2:m c2:9 f2:m7 bf2:7 ef2 g4:7.5+ g4:7
  
  c2:m c2:m/bf a2:m7.5- g4:7.5+ g4:7 c1:m bf2:m7 ef2:7
  af2 f2:m7 bf2:m7 ef2:7 af1:6 af2:9 bf2:7

  ef2 bf2:7/f fs2:dim7 c2:7/g af2:m6 a2:dim7 bf2:m6 ef2:9
  af2 f2:m7 g2:m c2:9 f2:m7 bf2:7 ef2
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up Two Beat" 4 = 250

  \sectStart "A1"
  
  bf2 bf2 | c2 c2 | ef2 ef2 | f1 |
  \break
  r4 ef4 c4 af4 | d4 bf4 g2 | r4 c8 af8 f8 ef8 d8 f8 | ef2 r2 |
  
  \sect "A2"
  
  bf'2 bf2 | c2 c2 | ef2 ef2 | f1 |
  \break
  r4 ef4 c4 af4 | d4 bf4 g2 | r4 c8 af8 f8 ef8 d8 f8 | ef2. r4 |
  
  \sect "B"
  
  ef'1 | r8 f8 ef8 d8 ef4 d4 | c2. g4 | bf1 |
  \break
  c1 | r8 df8 c8 bf8 c4 bf4 | af2. ef4 | gf2. g4 |

  \sect "A3"

  bf2 bf2 | c2 c2 | ef2 ef2 | f1 |
  \break
  r4 ef4 c4 af4 | d4 bf4 g2 | r4 c8 af8 f8 ef8 d8 f8 | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
