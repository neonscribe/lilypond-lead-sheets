%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "June in January"
  subtitle = \instrument
  poet = ""
  composer = "Leo Robin and Ralph Rainger"
  copyright = \markup \small { \now " " "© 1934 Paramount Productions Music Corp." }
}

refrainLyrics = \lyricmode {
It's June in Jan -- u -- ar -- y
be -- cause I'm in love.
It al -- ways is spring in my heart,
with you in my arms. __

The snow is just white blos -- soms
That fall from a -- bove.
And here is the rea -- son my dear.
Your mag -- i -- cal charms. __

The night is cold,
the trees are bare,
but I can feel the scent of ros -- es in the air.
It's June in Jan -- u -- ar -- y
be -- cause I'm in love,
but on -- ly be -- cause I'm in love with you. __
(It's)
}

refrainChords = \chordmode {
  s4
  
  ef1:maj7 c1:7 f1:m7 f1:m7
  bf1:7 f2:m7  bf2:7 g2:m7 c2:7 f4:m7 \chordSlash 1 bf4:7 b4:dim7

  ef1:maj7 c1:7 f1:m7 f1:m7
  bf1:7 f2:m7 bf2:7 ef1:maj7 g2:m7.5+ g2:7
  
  c1:m7 af1:7 c1:m7 d2:m7.5- g2:7
  c1:m7 c1:m7 f1:7 f4:m7 \chordSlash 1 bf4:7 b4:dim7

  ef1:maj7 c1:7 f1:m7 f1:m7
  bf1:7 f2:m7 bf2:7 ef1:6
  \chordOpenParen{ f4:m7 \chordSlash 1 }
  bf4:7
  \chordCloseParen{ b4:dim7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Julie London 1956]" 4 = 102
  
  \partial 4 b4 |

  \sectNoBreak "A1"
  
  c2. bf4 | af4 g4 fs4 g4 | r4 bf4 \tuplet 3/2 { bf4 a4 af4 } | c,2. r4 |
  \break
  r4 bf'4 \tuplet 3/2 { bf4 a4 af4 } | \tuplet 3/2 { c,4 cs4 d4 } g4. f8 |
  \tuplet 3/2 { f4 d4 ef4 } bf'2~ | bf2. b4 |

  \sect "A2"
  
  c2. bf4 | af4 g4 fs4 g4 | r4 bf4 \tuplet 3/2 { bf4 a4 af4 } | c,2. r4 |
  \break
  r4 bf'4 \tuplet 3/2 { bf4 a4 af4 } | \tuplet 3/2 { c,4 cs4 d4 } g4. f8 |
  \tuplet 3/2 { f4 d4 f4 } ef2~ | ef2 r2 |

  \sect "B"
  
  r4 g4 af4. g8 | gf1 | r4 g4 af4. g8 | f1 |
  \break
  r4 g4 af4 g4 | c4. g8 g4 c4 | d4 d2 f,8 g8 | bf2. b4 |

  \sect "A3"

  c2. bf4 | af4 g4 fs4 g4 | r4 bf4 \tuplet 3/2 { bf4 a4 af4 } | c,2. r4 |
  \break
  r4 bf'4 \tuplet 3/2 { bf4 a4 af4 } | \tuplet 3/2 { c,4 cs4 d4 } c'4 d,4 |
  ef1~ | ef4 r4 r4
  \override Parentheses.font-size = #5
  \parenthesize b'4
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
