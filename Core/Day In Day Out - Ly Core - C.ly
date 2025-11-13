%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Day In, Day Out"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Rube Bloom"
  copyright = \markup \small { \now " " "© 1939 Warner Bros, Inc." }
}

refrainLyrics = \lyricmode {
Day in, __ day out, __ the same old hoo -- doo fol -- lows me a -- bout. __
The same old pound -- ing in my heart when -- ev -- er I think of you, __
and dar -- ling, I think of you __ day in and day out. __

Day out, __ day in, __ I need -- n't tell you how my days be -- gin. __
When I a -- wake I a -- wak -- en with a tin -- gle, one pos -- si -- bil -- i -- ty in view.
That pos -- si -- bil -- i -- ty of may -- be see -- ing you. __

Come rain, __ come shine, __ I meet you and to me the day is fine. __
Then I kiss your lips and the pound -- ing be -- comes __ the o -- cean's roar, __
a thou -- sand drums. __

Can't you see it's love, __ can there be a -- ny doubt, __
when there it is, day in, day out.
}

refrainSRBChords = \chordmode {
  g4:7.5+

  c1:6 c2:6 cs2:dim7 d1:m7 g1:9
  c2:6 d2:m7 ds2:dim7 c2:6/e e1:m7 ef1:dim7

  d1:m6 g1:7 d1:m7 g1:9
  d1:m7 g1:9 e2:m7 a2:7.9- d2:m9 g2:7
  
  c1:6 c2:6 cs2:dim7 d1:m7 g1:9
  c2:6 d2:m7 ds2:dim7 c2:6/e c1:m9 f1:9

  g1:6 d1:m7 g1:6 d1:m7
  g1:6 a2:m9 d2:7.9-.5+ d1:m7 g1:9
  
  c1:6 c2:6 cs2:dim7 d1:m7 g1:9
  c2:6 d2:m7 ds2:dim7 c2:6/e bf1:9.11+ a2:9 a4:7.9-.5+ a4:7.9-
  
  d1:7/fs f1:m7 e1:m7 ef1:dim7
  d1:13 g2:sus9 g2:7.5+ c2:maj7 \chordInsideParens{ f2:9 } e2:m7 a4:7.9-.5+ a4:7.9-

  d1:7/fs f1:m6 e1:m7 a1:7.9-
  d1:m7 g2:sus9 \chordInsideParens{ g2:13.9- }
  c2:6
  \chordOpenParen{ a2:7.9-.5+ }
  d2:m9
  \chordCloseParen{ g2:7.9-.5+ }
}

refrainChords = \refrainSRBChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Bob Crosby 1939]" 4 = 125
  
  \partial 4 g4 |
  \bar "||"

  \sectStart "A1"
  
  a1~ | a2. g4 | a1~ | a2. g4 |
  \break
  a4 a4 a4 g4 | a4 b4 c4 d4 | d1~ | d4 c4 d4 c4 |
  
  \sect "B"
  
  b4 b4 b4 b4 | b4 c4 \tuplet 3/2 { b4 a4 g4 } | a4 a4 a2~ | a4 c4 \tuplet 3/2 { b4 a4 g4 } |
  \break
  a4 a4 a2~ | a4 c4 \tuplet 3/2 { b4 a4 g4 } | e1~ | e2 r4 g4 |

  \sect "A2"

  a1~ | a2. g4 | a1~ | a2. g4 |
  \break
  a4 a4 a4 g4 | a4 b4 c4 d4 | d1~ | d4 c4 b4 c4 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "C"
  
  d4 d,8 d8 d8 d8 d8 d8 | f4 f2. | d'4 d,8 d8 d8 d8 d8 d8 | f1 |
  \break
  d'4 d,8 d8 d8 d8 d8 d8 | b'4 b4 bf4 bf4 | a1~ | a2 r4 g4 |
  
  \sect "A3"

  a1~ | a2. g4 | a1~ | a2. g4 |
  \break
  a4 a4 a4 g4 | a4 b4 c4 d4 | e1~ | e2 f4 e4 |
  
  \sect "D1"
  
  d4 d4 d2~ | \tuplet 3/2 { d4 c4 d4 } \tuplet 3/2 { ef4 d4 c4 } | b1~ | b4 a4 b4 a4 |
  \break
  b1~ | b4 a4 b4 a4 | b1~ | b2 f'4 e4 |

  \sect "D2"
  
  d4 d4 d2~ | \tuplet 3/2 { d4 c4 d4 } \tuplet 3/2 { ef4 d4 c4 } | a1~ | a4 g4 e4 f4 |
  \break
  g2. a4 | c2. e4 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
