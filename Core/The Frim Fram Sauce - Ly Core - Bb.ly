%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "The Frim Fram Sauce"
  subtitle = \instrument
  poet = ""
  composer = "Joe Ricardel and Redd Evans"
  copyright = \markup \small { \now " " "© 1946 Music Sales Corporation" }
}

refrainMaleSingerLyrics = \lyricmode {
I don't want French fried po -- ta -- toes,
red ripe to -- ma -- toes.
I'm ne -- ver sat -- is -- fied. __
I want the frim fram sauce with the aus -- sen fay __
with cha -- fa -- fa on the side. __

I don't want pork chops and ba -- con,
that won't a -- wa -- ken
my ap -- pe -- tite __ in -- side. __
I want the frim fram sauce with the aus -- sen fay __
with cha -- fa -- fa on the side. __

Now a fel --low's real -- ly got to eat __
and a fel -- low should eat right. __
Five will get you ten __
I'm gon -- na feed my -- self right __ to -- night. __

I don't want fish cakes and rye bread
You heard what I said
Wait -- er, please serve __ mine fried.
I want the frim fram sauce with the aus -- sen fay
with cha -- fa -- fa on the side. __
}

refrainFemaleSingerLyrics = \lyricmode {
I don't want French fried po -- ta -- toes,
red ripe to -- ma -- toes.
I'm ne -- ver sat -- is -- fied. __
I want the frim fram sauce with the aus -- sen fay __
with cha -- fa -- fa on the side. __

I don't want pork chops and ba -- con,
that won't a -- wa -- ken
my ap -- pe -- tite __ in -- side. __
I want the frim fram sauce with the aus -- sen fay __
with cha -- fa -- fa on the side. __

Now a girl has real -- ly got to eat __
and a girl she should eat right. __
Five will get you ten __
I'm gon -- na feed my -- self right to -- night. __

I don't want fish cakes and rye bread
You heard what I said
Wait -- er, please serve __ mine fried.
I want the frim fram sauce with the aus -- sen fay
with cha -- fa -- fa on the side. __
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainChords = \chordmode {
  s2
  
  bf1:6 bf1:6 c2:7 g2:m7 c1:7 ef2:6 e2:dim7 bf2/f g2:7 c2:7 f2:7 bf2:6 f2:7

  bf1:6 bf1:6 c2:7 g2:m7 c1:7 ef2:6 e2:dim7 bf2/f g2:7 c2:7 f2:7 bf1:6
  
  f2:m7 bf2:7 f2:m7 bf2:7 ef2:6 bf2:7.5+ ef1:6
  g2:m7 c2:7 f2:maj7 fs2:dim7 g2:m7 c2:7 c2:m7 f2:7
  
  bf1:6 bf1:6 c2:7 g2:m7 c1:7 ef2:6 e2:dim7 bf2/f g2:7 c2:7 f2:7 bf2:6
  \chordInsideParens{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad [Nat King Cole 1945]" 4 = 92

  \partial 2 \invisEighth cs8 d8 f8 |

  \sectNoBreak "A1"
  
  bf4 g8 cs,8 d8 f4. | bf4 g8 cs,8 d8 f4. | e8 g8 bf8 d8~ d4 c8 g8~ | g2 r8 d'8 d8 c8 |
  \break
  bf4 bf4 bf4 bf8 g8 bf4 a8 g8~ g4 g8 bf8 | d8 bf4. bf4 c8 bf8~ | bf2 r8 cs,8 d8 f8 |
  
  \sect "A2"
  
  bf4 g8 cs,8 d8 f4. | bf4 g8 cs,8 d8 f4. | e8 g8 bf8 d8~ d4 c8 g8~ | g2 r8 d'8 d8 c8 |
  \break
  bf4 bf4 bf4 bf8 g8 bf4 a8 g8~ g4 g8 bf8 | d8 bf4. bf4 c8 bf8~ | bf2 r4 bf8 bf8 |
  
  \sect "B"

  af8 bf4. bf4 bf4 | af4 bf8 bf8~ bf4 bf8 bf8 | g8 bf4. d4 c8 g8~ | g1 |
  \break
  bf4 c4 c4 c8 a8~ | a2 r8 a8 bf8 b8 | c8 b8 bf8 a8~ a4 a8 f8~ | f2 r8 cs8 d8 f8 |

  \sect "A3"

  bf4 g8 cs,8 d8 f4. | bf4 g8 cs,8 d8 f4. | e8 g8 bf8 d8~ d4 c8 g8~ | g2 r8 d'8 d8 c8 |
  \break
  bf4 bf4 bf4 bf8 g8 bf4 a8 g8~ g4 g8 bf8 | d8 bf4. bf4 c8 bf8~ | bf2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
