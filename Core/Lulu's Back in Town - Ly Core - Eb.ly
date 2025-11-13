%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Lulu's Back in Town"
  subtitle = \instrument
  poet = "Al Dubin"
  composer = "Harry Warren"
  copyright = \markup \small { \now " " "© 1935 M. Witmark & Sons" }
}

refrainLyrics = \lyricmode {
Got -- ta get my old tux -- e -- do pressed, got -- ta sew a but -- ton on my vest,
'cause to -- night I've got -- ta look my best, Lu -- lu's back in town. __

Got -- ta get a half a buck some -- where, got -- ta shine my shoes and slick my hair,
got -- ta get my -- self a bou -- ton -- niere, Lu -- lu's back in town. __

You can tell __ all my pets, all my Har -- lem co -- quettes,
Mis -- ter O -- tis re -- grets, that he won't be a -- roun'. __

You can tell the mail -- man not to call, I ain't com -- in' home un -- til the fall,
and I might not get back home at all, Lu -- lu's back in town. __
}

refrainChords = \chordmode {
  c2:7 f2:7 bf2:7 ef2:6 c2:7 f2:7 bf2:7 ef2:7
  af2:6 a2:dim7 g2:m7 c2:7 f2:7 bf2:sus9 ef2:6 bf2:7

  c2:7 f2:7 bf2:7 ef2:6 c2:7 f2:7 bf2:7 ef2:7
  af2:6 a2:dim7 g2:m7 c2:7 f2:7 bf2:sus9 ef1:6
  
  af2:6 a2:dim7 ef2/bf ef2:7 af2:6 a2:dim7 ef2/bf c2:m7
  a2:m7.5- d2:7 g2:m7.5- c2:7 f1:7.9- f2:m7 bf2:7

  c2:7 f2:7 bf2:7 ef2:6 c2:7 f2:7 bf2:7 ef2:7
  af2:6 a2:dim7 g2:m7 c2:7 f2:7 bf2:sus9 ef1:6
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bright Swing [Fats Waller 1935]" 4 = 212

  \sectStart "A1"
  
  bf8 c8 bf8 g8 a4 f4 | af4 bf8 g8 r2 | bf8 c8 bf8 g8 a4 f4 | af4 bf8 g8 r8 g4 ef8 |
  \break
  f4 ef4 gf4 ef4 | f4 ef8 g8~ g4 r4 | g8 ef4. ef4 f8 ef8~ | ef2. r4 |
  
  \sect "A2"

  bf'8 c8 bf8 g8 a4 f4 | af4 bf8 g8 r2 | bf8 c8 bf8 g8 a4 f4 | af4 bf8 g8 r8 g4 ef8 |
  \break
  f4 ef4 gf4 ef4 | f4 ef8 g8~ g4 r4 | g8 ef4. ef4 f8 ef8~ | ef2 r8 ef'8 c8 ef8~ |
  
  \sect "B"
  
  ef2 d4 c8 bf8 | r2 r8 ef8 c8 ef8~ | ef2 d4 c8 bf8 | r2 r8 ef4 c8 |
  \break
  ef2 d4 c8 bf8 | r2 r8 c4. | gf4 gf4 gf4 ef8 f8~ | f2. r4 |
  
  \sect "A3"

  bf8 c8 bf8 g8 a4 f4 | af4 bf8 g8 r2 | bf8 c8 bf8 g8 a4 f4 | af4 bf8 g8 r8 g4 ef8 |
  \break
  f4 ef4 gf4 ef4 | f4 ef8 g8~ g4 r4 | g8 ef4. ef4 f8 ef8~ | ef2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
