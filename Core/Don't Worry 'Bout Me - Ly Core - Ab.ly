%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Don't Worry 'Bout Me"
  subtitle = \instrument
  poet = "Ted Koehler"
  composer = "Rube Bloom"
  copyright = \markup \small "© 1939 Fred Ahlert Music Group, Ted Koehler Music Co."
}

refrainLyrics = \lyricmode {
Don't wor -- ry 'bout me, __ I'll get a -- long. __
For -- get a -- bout me, __ be hap -- py, my love. __
Let's say that our lit -- tle show is o -- ver, and so the sto -- ry ends. __
Why not call it a day, the sen -- si -- ble way, and still be friends? __
“Look out for your -- self” __ should be the rule. __
Give your heart and your love to whom -- ev -- er you love, don't be a fool. __
Dar -- ling, why should you cling to some fad -- ing thing that used to be? __
If you can for -- get, __ don't wor -- ry 'bout me.
}

refrainChords = \chordmode {
  s4
  
  bf1:m7.5- ef2:7 ef2:7.9- af1:maj7 f1:m7
  bf1:m7 ef1:7.9- af1:6 c2:m7 b2:dim7
  bf1:m7 df1:m6 gf1:9 gf2:9 g4:m7.5- c4:7.9-
  f1:m7 bf1:7 ef1:7 c2:m7 f2:7.9-

  bf1:m7.5- ef2:7 ef2:7.9- af1:maj7 af1:maj7
  ef1:m7 af1:7 df1:maj7 df1:maj7
  df1:maj7 df1:7 c1:m7 f1:7.9-
  bf1:m7.5- ef2:7 ef2:7.9- af1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7.9- }
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Frank Sinatra 1954]" 4 = 66

  \partial 4 ef4 |

  \sectNoBreak "A1"
  
  \tuplet 3/2 { ef'4 ef4 ef4 } ef2~ | ef2 df2 | c4. c8 c2~ | c2. ef,4 |
  \break
  \tuplet 3/2 { c'4 c4 c4 } c2~ | c4 b4 \tuplet 3/2 { bf4 af4 g4 } | f1~ | f4 f4 af4 g4 |
  
  \sect "B"
  
  \tuplet 3/2 { f4 g4 ef4 } f4 af4 | \tuplet 3/2 { bf4 c4 af4 } bf4 c4 | df4. ff,8 ff2~ | ff2 f4 g4 |
  \break
  \tuplet 3/2 { af4 bf4 g4 } af4 bf4 | \tuplet 3/2 { b4 c4 af4 } bf4 c4 | bf4. ef,8 ef2~ | ef2. ef4 |

  \sect "A2"

  \tuplet 3/2 { ef'4 ef4 ef4 } ef2~ | ef2 df2 | c4. c8 c2~ | c2 c4 df4 |
  \break
  \tuplet 3/2 { ef4 ef4 ef4 } \tuplet 3/2 { ef4 d4 df4 } | \tuplet 3/2 { c4 c4 c4 } c4 bf4 |
  af4. af8 af2~ | af2 f4 g4 |
  
  \sect "C"
  
  \tuplet 3/2 { af4 bf4 g4 } af4 bf4 | \tuplet 3/2 { c4 df4 bf4 } c4 df4 | ef4. ef,8 ef2~ | ef2. ef4 |
  \break
  \tuplet 3/2 { ef'4 ef4 ef4 } ef2~ | ef4 c4 \tuplet 3/2 { c4 c4 c4 } | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
