%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "City Lights"
  subtitle = \instrument
  poet = ""
  composer = "Bill Anderson"
  copyright = \markup \small { \now " " "© 1958 TNT Music, Inc." }
}

refrainMaleSingerLyrics = \lyricmode {
The bright ar -- ray of cit -- y lights as far as I can see.
_ The Great White Way shines through the night for lone -- ly guys like me.
_ A cab -- a -- ret, a honk -- y tonk, __ their flash -- ing signs in -- vite
_ a bro -- ken heart to lose it -- self in the glow of cit -- y lights.

Lights that say, “For -- get her name,” in a glass of sher -- ry wine.
Lights that of -- fer oth -- er girls for emp -- ty hearts like mine.
They paint a pret -- ty pic -- ture of a world that's gay and bright,
but it's just a mask for lone -- li -- ness be -- hind those cit -- y lights.

The
}

refrainMaleSingerLyricsTwo = \lyricmode {
 _ world was dark and God made stars to bright -- en up the night.
Did the God who put the stars a -- bove _ make those cit -- y lights?
Did He make a place for men to cry __ when things don't turn out right?
Are we just sup -- posed to run and hide _ be -- hind those cit -- y lights?

Lights that say, “For -- get her love,” in a dif -- frent at -- mos -- phere.
Lights that lure are noth -- ing but a mas -- quer -- ade for tears.
They paint a pret -- ty pic -- ture but my arms can't hold them tight,
and I just can't say “I love you” to a street of cit -- y lights.
}

refrainFemaleSingerLyrics = \lyricmode {
The bright ar -- ray of cit -- y lights as far as I can see.
_ The Great White Way shines through the night for lone -- ly girls like me.
_ A cab -- a -- ret, a honk -- y tonk, __ their flash -- ing signs in -- vite
_ a bro -- ken heart to lose it -- self in the glow of cit -- y lights.

Lights that say, “For -- get his name,” in a glass of sher -- ry wine.
Lights that of -- fer oth -- er guys for emp -- ty hearts like mine.
They paint a pret -- ty pic -- ture of a world that's gay and bright,
but it's just a mask for lone -- li -- ness be -- hind those cit -- y lights.

The
}

refrainFemaleSingerLyricsTwo = \lyricmode {
 _ world was dark and God made stars to bright -- en up the night.
Did the God who put the stars a -- bove _ make those cit -- y lights?
Did He make a place for girls to cry __ when things don't turn out right?
Are we just sup -- posed to run and hide _ be -- hind those cit -- y lights?

Lights that say, “For -- get his love,” in a dif -- frent at -- mos -- phere.
Lights that lure are noth -- ing but a mas -- quer -- ade for tears.
They paint a pret -- ty pic -- ture but my arms can't hold them tight,
and I just can't say “I love you” to a street of cit -- y lights.
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainLyricsTwo =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyricsTwo
  refrainMaleSingerLyricsTwo)

refrainChords = \chordmode {
  s2
  
  d1:7 d1:7 d1:7 g1 g1
  
  g1 g1:7 c1 c1 d1:7 d1:7 d1:7 g1
  g1 g1:7 c1 c1 d1:7 d1:7 d1:7 g1 g1
  
  d1:7 d1:7 g1 g1 d1:7 d1:7 g1 g1 g1 g1:7 c1 c1 d1:7 d1:7 d1:7 g1
  
  g1 g1:7 c1 c1 d1:7 d1:7 d1:7 g1 g1
  
  
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Ray Price 1958]" 4 = 110

  \partial 2 \rsq \rsq |

  \sectNoBreak "Intro"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq d4 |
  
  \bar ".|:-||"
  \repeat volta 2 {

  \sectNoBar "Chorus"
  
  d4 g4 b4. g8 | g8 g4. g4. g8 | a4 e4 e4. e8 | e2. b'8 b8 |
  \break
  c4 b4 c2 | a4 fs8 fs8 fs4. e8 | e4 d4 cs4 e4 | d2. d8 d8 |
  \break
  d4 g4 b4. g8 | g8 g8 g4~ g4. a8 | a8 e4. e4. e8 | e2. b'8 b8 |
  \break
  c4 b4 c4. a8 | a4. fs8 fs4 e8 e8 | d4 d4 fs8 a4. | g2. r4 | r1 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "Verse"
  
  c4. c8 c4. b8 | b8 a4. a4 e8 e8 | e4 d2 cs8 e8 | d2. r4 |
  \break
  c'4. c8 c4. a8 | a8 fs4. fs4. e8 | e4 d4 cs4 e4 | d2. d4 |
  \break
  d4 g4 b4. fs8 | a4 g4 g4. g8 | a4 e4 e4 fs4 | e2. b'8 b8 |
  \break
  c4. b8 c4. b8 | b4 a4 a4 e4 | d4 c'4 b8 a4. | g2._"FINE" r4 |

  \sect "Solo"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq d4 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
