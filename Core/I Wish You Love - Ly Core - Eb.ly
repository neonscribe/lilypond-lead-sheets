%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Wish You Love"
  subtitle = \instrument
  poet = "Englsh lyrics by Albert Beach"
  composer = "Charles Trenet"
  copyright = \markup \small "© 1943 Editions Salabert France"
}

refrainLyrics = \lyricmode {
I wish you blue -- birds in the spring
to give your heart a song to sing,
and then a kiss, but more than this,
I wish you love.

And in Ju -- ly, a lem -- on -- ade,
to cool you in some leaf -- y glade.
I wish you health, and more than wealth,
I wish you love.

My break -- ing heart and I a -- gree
That you and I could nev -- er be.
So, with my best, my very best,
I set you free.

I wish you shel -- ter from the storm,
A co -- zy fi -- re to keep you warm,
but most of all, when snow -- flakes fall,
I wish you love.
}

refrainChords = \chordmode {
  c2:7.9-
  
  f1:m7 bf1:7 g1:m7 gf1:dim7 
  f1:m7 bf1:7 ef2:6 af2:maj7 g2:m7.5- c2:7.9-

  f1:m7 bf1:7 g1:m7 gf1:dim7 
  f1:m7 bf1:7 bf1:m7 ef1:7
  
  af1:maj7 af2:m7 df2:7 ef2:maj7 af2:maj7 g2:m7.5- c2:7.5+
  f1:m7 c2:m7 f2:7 f2:m7 bf2:7 g2:m7.5- c2:7.9-

  f1:m7 bf1:7 g1:m7 gf1:dim7 
  f1:m7 bf1:7 ef1:6
  \chordOpenParen{ g2:m7.5- }
  \chordCloseParen{ c2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra 1964]" 4 = 104

  \partial 2 \tuplet 3/2 { g4 af4 bf4 } |

  \sectStart "A1"
  
  g2 \tuplet 3/2 { f4 g4 f4 } | g2 \tuplet 3/2 { f4 f4 bf4 } |
  f2 \tuplet 3/2 { ef4 f4 ef4 } | f2 \tuplet 3/2 { ef4 ef4 af4 } |
  \break
  ef2 \tuplet 3/2 { c4 ef4 c4 } | d2 \tuplet 3/2 { g4 f4 ef4 } |
  c1~ | c2 \tuplet 3/2 { g'4 af4 bf4 } |
  
  \sect "A2"

  g2 \tuplet 3/2 { f4 g4 f4 } | g2 \tuplet 3/2 { f4 f4 bf4 } |
  f2 \tuplet 3/2 { ef4 f4 ef4 } | f2 \tuplet 3/2 { ef4 ef4 af4 } |
  \break
  ef2 \tuplet 3/2 { c4 ef4 c4 } | d2 \tuplet 3/2 { g4 f4 g4 } |
  f1 | r2 \tuplet 3/2 { ef4 f4 af4 } |
  
  \sect "B"
  
  c2 \tuplet 3/2 { c4 c4 c4 } | b2 \tuplet 3/2 { ef,4 f4 g4 } |
  bf2 \tuplet 3/2 { bf4 bf4 bf4 } | bf2 \tuplet 3/2 { c,4 df4 c4 } |
  \break
  af'2 \tuplet 3/2 { af4 af4 af4 } | g2 \tuplet 3/2 { c4 c4 b4 } |
  bf1 | r2 \tuplet 3/2 { g4 af4 bf4 } |
  
  \sect "A3"

  g2 \tuplet 3/2 { f4 g4 f4 } | g2 \tuplet 3/2 { f4 f4 bf4 } |
  f2 \tuplet 3/2 { ef4 f4 ef4 } | f2 \tuplet 3/2 { ef4 ef4 af4 } |
  \break
  ef2 \tuplet 3/2 { c4 ef4 c4 } | d2 \tuplet 3/2 { g4 g4 g4 } |
  ef1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
