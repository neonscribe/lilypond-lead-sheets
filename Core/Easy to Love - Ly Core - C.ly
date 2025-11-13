%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "(You'd Be So) Easy to Love"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small { \now " " "© 1936 Chappell & Co." }
}

refrainLyrics = \lyricmode {
You'd be so eas -- y to love, so eas -- y to i -- do -- lize, all oth -- ers a -- bove,
so worth the yearn -- ing for, so swell to keep ev -- 'ry home fire burn -- ing for.

We'd be so grand at the game, so care -- free to -- geth -- er, that it does seem a shame,
that you can't see your fu -- tre with me,
'cause you'd be oh, so eas -- y to love.
}

refrainChords = \chordmode {
  d1:m7 g1:m7 d1:m7 g1:7
  c1:maj7 f1:7 e1:m7 a1:7.5-

  d1:m7 g1:7 c2:maj7 f2:maj7 e2:m7 a2:7
  d1:m7 g1:7 e1:m7 ef1:dim7

  d1:m7 g1:m7 d1:m7 g1:7
  c1:maj7 f1:7 e1:m7 a1:7

  d1:m7 f1:m6 c1:maj7 e2:7 ef2:dim7
  d1:m7 g1:7 c2:6
  \chordOpenParen{ f2:7 }
  e2:m7
  \chordCloseParen{ a2:7.9- }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Jimmy Dorsey 1936]" 4 = 118

  \xTextMark \markup{ \bold \box "A1" }
  
  a1 | d,2. e4 | f2 e4. f8 | b2. a4 |
  \break
  g2 fs4 g4 | d'4 df4 c4 b4 | a2 gs4. a8 | g'1 |
  
  \sect "B"
  
  g1 | a,2. b4 | e4 e4 e2~ | e4 r4 r2 |
  \break
  r4 g4 g,4. g8 | af8 af4 af8 a4 a8 b8~ | b4 b4 b2~ | b4 r4 r2 |
  
  \sect "A2"
  
  a1 | d,2. e4 | f2 e4. f8 | b2. a4 |
  \break
  g2 fs4 g4 | d'4 df4 c4 b4 | a2 gs4. a8 | a'2. e4 |
  
  \sect "C"
  
  g2. d4 | f2. c4 | e2 b4 c4 | d4 df4 c4 b4 |
  \break
  a2 e'2 | e2 ef4 d4 | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
