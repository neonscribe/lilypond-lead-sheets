%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Avalon"
  subtitle = \instrument
  poet = ""
  composer = "Al Jolson and Vincent Rose"
  copyright = "© 1920 Jerome H. Remick & Co."
}

refrainObjectGenderFemaleLyrics = \lyricmode {
  I found my love in A -- va -- lon __
  be -- side __ the bay. __
  I left my love in A -- va -- lon __
  and sailed __ a -- way. __
  I dream of her and A -- va -- lon __
  from dusk 'til dawn, __
  and so I think I'll trav -- el on __
  to A -- va -- lon.
}

refrainObjectGenderMaleLyrics = \lyricmode {
  I found my love in A -- va -- lon __
  be -- side __ the bay. __
  I left my love in A -- va -- lon __
  and sailed __ a -- way. __
  I dream of him and A -- va -- lon __
  from dusk 'til dawn, __
  and so I think I'll trav -- el on __
  to A -- va -- lon.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  s2

  g1:m7 g1:m7 c1:7 c1:7
  f1:6 g2:m7 c2:7 f1:maj7 a2:m7 d2:7

  g1:m7 g1:m7 c1:7 c1:7
  f1:maj7 g2:m7 c2:7 f1:maj7 f1:maj7
  
  a1:m7 a1:m7 d1:7 d1:7
  g1:m7 g1:m7 bf1:m7 ef2:7 bf2:7

  a1:m7 a1:m7 d1:7 d1:7
  g1:m7 c1:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 220

  \partial 2 c2 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  g'2 a2 | bf2 c2 | bf4 a4 g2~ | g2 c,2 |
  \break
  f1~ | f2 g2 | a1~ | a2 c,2 |
  
  \sect "B"
  
  e2 f2 | g2 f2 | e4 d4 c2~ | c2 d2 |
  \break
  a'1~ | a2 d,2 | a'1~ | a2 d,2 |
  
  \sect "A2"
  
  a'2 bf2 | c2 d2 | c4 bf4 a2~ | a2 d,2 |
  \break
  g1~ | g2 a2 bf1~ | bf2 d,2 |
  
  \sect "C"
  
  c2 f2 | a2 c2 | e4 d4 e2~ | e2 d2 |
  \break
  bf1 | a1 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
