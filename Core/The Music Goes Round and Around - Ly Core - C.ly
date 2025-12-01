%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "The Music Goes 'Round and Around"
  subtitle = \instrument
  poet = "“Red” Hodgson"
  composer = "Edward Farley, Michael Riley"
  copyright = \markup \small { \now " " "© 1935 Anne Rachel Music Corp." }
}

refrainLyrics = \lyricmode {
One night, while play -- ing in the band,
a girl came up; she said, “You're grand.”
So I re -- plied in words low -- down,
“Now, this is how the mu -- sic goes 'round:”

I blow through here,
The mu -- sic goes down and a -- round, whoa -- ho -- ho -- ho -- ho -- ho
and it comes up here.

I push the first valve down.
The mu -- sic goes down and a -- round, whoa -- ho -- ho -- ho -- ho -- ho
And it comes up here.

I push the mid -- dle valve down.
The mu -- sic goes down a -- round be -- low, be -- low, be -- low,
dee -- dle -- dee ho -- ho -- ho,
lis -- ten to the ja -- azz come out.

I push the oth  -- er valve down.
The mu -- sic goes down and a -- round, whoa -- ho -- ho -- ho -- ho -- ho
and it comes up here.
}

refrainChords = \chordmode {
  s4

  c1:6 c1:6 d2:m7 g2:7 c2:6 g2:7
  c2:6 g2:aug/b bf2:dim7 a2:7 d2:7/a d2:7 g2 g2:7

  c1:6 c1:6 c2:6 d4:m7 ef4:dim7 e2:m7 ef2:dim7
  d1:m7 g1:9 c1:6 d2:m7 g2:9

  c1:6 c1:6 c2:6 d4:m7 ef4:dim7 e2:m7 ef2:dim7
  d1:m7 g1:9 c1:6 c2:6 e2:7

  a2:m e2:7 a2:m e2:7 a2:m e2:7 a2:m e2:7 
  a2:m e2:7 d1:6 d1:m7 g1:7

  c1:6 c1:6 c2:6 d4:m7 ef4:dim7 e2:m7 ef2:dim7
  d1:m7 g1:9 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Ella Fitzgerald 1961]" 4 = 175
  
  \partial 4 \invisEighth g8 |
  \bar "||"
  
  \sectStart "Verse"
  
  c4 g4 b4 a4 | a8 af4 g8~ g4. e8 | f4 d4 e4 f4 | e8 g4 g8~ g4. g8 |
  c4 g4 b4 a4 | a8 af4 g8~ g4. e8 | d4 fs4 a4 c4 | b8 g8 a8 g8~ g4 r8 g8 |

  \sect "A1"
  
  c4 c4 c2~ | c2. r8 g8 | c8 c8 c4 c4 b8 b8 | d2 b4 a4 |
  \break
  c4 a2 e4 | g4 g8 g8 f4 e4 | c1~ | c2. r8 g'8 |
  \bar "||"
  
  \xPageBreak

  \sectNoBar "A2"

  c4 c4 c4 c4 | c2 r4 r8 g8 | c8 c8 c4 c4 b8 b8 | d2 b4 a4 |
  \break
  c4 a2 e4 | g4 g8 g8 f4 e4 | c1~ | c2. e4 |
  
  \sect "B"
  
  c'4 c4 b8 b8 b4 | a4( e2) r8 e8 | c'8 c8 c4 b4 a8 a8~ | a4 e8 e8~ e4 e8 e8~ |
  \break
  e4 e8 e8~ e4 \tuplet 3/2 { c'8 d8 c8 } | b4 d4 b2 | a8 a8 a8 a8 a8 g8 r8 g8 | g4 r4 r4 g4 |
  
  \sect "A3"

  c4 c4 c8 c8 c4 | c2 r4 r8 g8 | c8 c8 c4 c4 b8 b8 | d2 b4 a4 |
  \break
  c4 a2 e4 | g4 g8 g8 f4 e4 | c2 r2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
