%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Day by Day"
  subtitle = \instrument
  poet = ""
  composer = "Sammy Cahn, Axel Stordahl, Paul Weston"
  copyright = \markup \small { \now " " "© 1945 Barton Music Corp." }
}

refrainLyrics = \lyricmode {
Day by day I'm fall -- ing more in love with you,
and day by day my love seems to grow.
There is -- n't an -- y end to my de -- vo -- tion.
It's deep -- er dear, by far, than an -- y o -- cean.
I find that day by day you're mak -- ing all my dreams come true,
so come what may I want you to know I'm yours a -- lone and I'm in love to stay,
as we go through the years day by day.
}

refrainChords = \chordmode {
  a1:m7 d1:7 a1:m7 d1:7
  g1:maj7 c1:7 b1:m7 e1:7
  
  a1:m7 b1:7 e1:m7 e1:m7
  a1:7 a1:7 a1:m7 d1:7

  a1:m7 d1:7 a1:m7 d1:7
  g1:maj7 c1:7 b1:m7.5- e1:7
  
  a1:m7 c2:m7 f2:7 g2:maj7 f2:7 e1:7
  a1:m7 d1:7 g1:6
  \chordOpenParen{ b2:m7.5- }
  \chordCloseParen{ e2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Four Freshmen 1955]" 4 = 166

  \xTextMark \markup{ \bold \box "A1" }
  
  b4. a8 e2 | r4 fs4 g4 a4 | b4 b4 b4. a8 | e2. fs4 |
  \break
  a4. g8 d2 | r4 e4 \tuplet 3/2 { fs4 a4 g4 } | fs1 | r2 r4 e4 |
  
  \sect "B"
  
  d4 c4 b4 c4 | g'4 fs4 f4 fs4 | b2 b2 | r2 r4 b4 |
  \break
  a4 g4 fs4 g4 | b4 a4 gs4 a4 | c2 c2 | r4 b4 d4 b4 |

  \sect "A2"
  
  b4. a8 e2 | r4 fs4 g4 a4 | b4 b4 b4. a8 | e2. fs4 |
  \break
  a4. g8 d2 | r4 e4 \tuplet 3/2 { fs4 a4 g4 } | d'1 | r2 r4 cs4 |
  
  \sect "C"
  
  c4. b8 e,2 | r4 fs4 g4 a4 | b2 b2 | b2. c4 |
  \break
  b4. a8 e4. fs8 | g2 a4 fs4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
