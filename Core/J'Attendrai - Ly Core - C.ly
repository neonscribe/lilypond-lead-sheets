%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "J'Attendrai"
  subtitle = \instrument
  poet = "Louis Poterat, Anna Sosenko"
  composer = "Dino Olivieri"
  copyright = "© 1938 P. Leonardi, Milano, Italy"
}

NotRefrainLyrics = \lyricmode {
J'attendrai
Le jour et la nuit, j'attendrai toujours
Ton retour l'attendrai
Car l'oiseau qui s'enfuit vient chercher l'oubli
Dans son nid
Le temps passe et court
En battant tristement
Dans mon cœur si lourd
Et pourtant, j'attendrai
Ton retour
Les fleurs palissent
Le feu s'éteint
L'ombre se glisse
Dans le jardin
L'horloge tisse
Des sons très las
Je crois entendre ton pas
Le vent m'apporte Des bruits lointains
Guettant ma porte
J'écoute en vain
Helas, plus rien
Plus rien ne vient

J'attendrai
Le jour et la nuit, j'attendrai toujours
Ton retour
J'attendrai
Car l'oiseau qui s'enfuit vient chercher l'oubli
Dans son nid
Le temps passe et court
En battant tristement
Dans mon cœur si lourd
Et pourtant, j'attendrai
Ton retour
Reviens bien vite
Les jours sont froids
Et sans limite
Les nuits sans toi
Quand on se quitte
On n'oublie tout
Mais revenir est si doux
Si ma tristesse
Peut t'émouvoir
Avec tendresse
Reviens un soir Et dans tes bras
Tout renaîtra
Le temps passe et court
En battant tristement
Dans mon cœur si lourd
Et pourtant, j'attendrai
Ton retour
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2
  
  c1 c1 c1 b1:7
  c1 cs1:dim7 d1:m7 a1:7
  d1:m d1:m d1:m d1:m
  g1:7 g1:7 c2 cs2:dim7 d2:m7 g2:7
  
  c1:7 c1:7 f1 f1:m
  c1 c2/e ef2:dim7 d1:m7 g1:7
  c2
  \chordOpenParen{ cs2:dim7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 160

  \partial 2 g4 b4 |
  \bar "$"

  \xTextMark \markup{ \bold \box "A" }
  
  c4-. r8 c8~ c2 | r2 d2 | e2 d4 c4 | b2 a4 g4 |
  \break
  a8 a8 a4-. a2 | r2 g4 b4 | a1 | r2 g4 a4 |
  \break
  d1~ | d2 c4 d4 | c2 b4 c4 | b2 a4 g4 |
  \break
  a8 a8 a4-. a2 | r2 g4 b4 | a1 | r2 c4 d4 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  e1~ | e2 d4 c4 | e2 d4 c4 | e2 d4 c4 |
  \break
  g8 g8 g4-. g2~ | g2 g4 b4 | a2 g4 b4 | a2 e'4 g,4 |
  \break
  c2 r2 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
