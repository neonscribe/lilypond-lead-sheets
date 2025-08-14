%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Petite Fleur"
  subtitle = \instrument
  poet = ""
  composer = "Sidney Bechet"
  copyright = \markup \small "© 1952 Chappell & Co., Inc."
}

refrainLyricsPetula = \lyricmode {
_ _ _
J'ai ca -- ché mieux que par -- tout ail -- leurs
Au jar -- din de mon cœur
U -- ne pe -- ti -- te fleur
Cet -- te fleur
Plus jo -- lie qu'un bou -- quet
El -- le garde en se -- cret
Tous mes rê -- ves d'en -- fant
L'a -- mour de mes pa -- rents
Et tous ces clairs ma -- tins
Faits d'heu -- reux sou -- ve -- nirs loin -- tains
Quand la vie
Par mo -- ment, me tra -- hit
Tu res -- tes mon bon -- heur
Pe -- ti -- te fleur
Sur mes vingt ans
Je m'ar -- rête un mo -- ment
Pour re -- spi -- rer
Ce par -- fum que j'ai tant ai -- mé
Dans mon cœur
Tu fleur -- i -- ras tou -- jours
Au grand jar -- din d'a -- mour
Pe -- ti -- te fleur
Prends ce pré -- sent
Que j'ai tou -- jours gar -- dé
Même à vingt ans
Je ne l'a -- vais ja -- mais don -- né
N'aies pas peur
Cueil -- lie au fond d'un cœur
Une pe -- ti -- te fleur
Ja -- mais ne meurt
}

refrainLyricsModern = \lyricmode {
_ _ _
Si les fleurs
Qui bor -- dent les che -- mins
Se fan -- aient toutes de -- main
Je gar -- der -- ais au cœur

Cel -- le qui
S'all -- u -- mait dans tes yeux
Lors -- que je t'ai -- mais tant
Au pa -- ys mer -- veil -- leux
De nos sei -- ze prin -- temps
Pe -- ti -- te fleur d'a -- mour
Tu fleur -- i -- ras tou -- jours
Pour moi

Quand la vie
Par mo -- ment me tra -- hit
Tu res -- tes mon bon -- heur
Pe -- ti -- te fleur
Sur mes vingt ans
Je m'ar -- rête un mo -- ment
Pour re -- spi -- rer
Ce par -- fum que j'ai tant ai -- mé

Dans mon cœur
Tu fleur -- i -- ras tou -- jours
Au grand jar -- din d'a -- mour
Pe -- ti -- te fleur
}

refrainLyrics = 
#(if (and (defined? 'petulaLyrics) petulaLyrics)
  refrainLyricsPetula
  refrainLyricsModern)

refrainHLChords = \chordmode {
  g2:m7 a2:7 d4:7 r2.
  
  d1:7 d1:7 g1:m7 g1:m7
  a1:7 a1:7 d1:7 d1:7

  d1:7 d1:7 bf1:maj7 b1:dim7
  c1:m7 f1:7 bf1:maj7 g1:m7
  
  a1:m7.5- d1:7 g1:m7 g1:m7
  a1:7 a1:7 d1:7 d4:7 r2.
  
  d1:7 d1:7 g1:m7 g1:m7
  a1:m7.5- d1:7.5+ g2:m7 c2:m7 g1:m7

  g1:7 g1:7 c1:m7 c1:m7
  f1:7 f1:7 bf2.:maj7 ef4 d4:7 r2.

  d1:7 d1:7 g1:m7 g1:m7
  a1:7 a1:7 d1:7 d1:7
}

refrainDjamChords = \chordmode {
  g2:m7 a2:7 d4:7 r2.
  
  d1:7 d1:7 g1:m g2:m g2:m/f
  a2:7/e a2:7/ef d1:7 g1:m g4:m r2.

  d1:7 d1:7 bf1 bf1
  c2:m c2:m/bf a2:m7.5- f2:7 f1:7 f1:7
  
  a2:m7.5- a2:m7.5-/g d2:7/fs d2:7 g2:m g2:m/f e1:m7.5-
  a1:7 a1:7 d2:7 ef2:7 d4:7 r2.
  
  d1:7 d1:7 g1:m g2:m g2:m/f
  a1:m7.5-/ef d1:7 g2:m c2:m g1:m

  g1:7 g1:7 c1:m c2:m c2:m/bf
  f2:7/a f2:7/g f1:7 bf2. ef4 d4:7 r2.

  d1:7 d1:7 g1:m g2:m g2:m/f
  a1:m7.5- d1:7 g2:m c2:m g1:m
}

refrainChords = \refrainDjamChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad [Sidney Bechet 1952]" 4 = 80
  
  g2\fermata a2\fermata | d,4-. r4 ef4. ef8 |

  \sectNoBreak "A"
  
  d1 | r4 fs8 a8 \tuplet 3/2 { c4 ef4 d4 } | bf1 | r4 d,8 g8 \tuplet 3/2 { a4 bf4 g4 } |
  \break
  a1 | r4 e8 fs8 \tuplet 3/2 { g4 a4 fs4 } | d1 | r2 ef4. ef8 |

  \sect "B"
  
  d1 | r4 fs8 a8 \tuplet 3/2 { c4 ef4 d4 } | f1 | r4 d8 ef8 \tuplet 3/2 { f4 ef4 d4 } |
  \break
  ef1 | r4 c8 d8 \tuplet 3/2 { ef4 d4 c4 } | d1 | r4 bf8 c8 \tuplet 3/2 { d4 c4 bf4 } |

  \sect "C"
  
  c1 | r4 a8 bf8 \tuplet 3/2 { c4 bf4 a4 } | bf1 | r4 g8 a8 \tuplet 3/2 { bf4 a4 g4 } |
  \break
  a1 | e1 | a1 | r2 ef4. ef8 |
  
  \xPageBreak

  \sect "D"

  d1 | r4 fs8 a8 \tuplet 3/2 { c4 ef4 d4 } | bf1 | r4 d,8 g8 \tuplet 3/2 { a4 bf4 g4 } |
  \break
  a2. c4 | bf2. a4 | g1 | r2 \tuplet 3/2 { g4 b4 d4 } |

  \sect "E"

  f1 | r4 d8 ef8 \tuplet 3/2 { f4 af4 g4 } | ef1 | r2 r8 ef8 ef8 ef8 |
  \break
  ef1 | r4 c8 d8 \tuplet 3/2 { ef4 gf4 f4 } | d2. ef4 | c4 r4 ef,4. ef8 |

  \sect "F"

  d1 | r4 fs8 a8 \tuplet 3/2 { c4 ef4 d4 } | bf1 | r4 d,8 g8 \tuplet 3/2 { a4 bf4 g4 } |
  \break
  a2. c4 | bf2. a4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

%{
Sur mes 20 ans
Je m'arrête un moment
Pour respirer
Ce parfum que j'ai tant aimé
Dans mon cœur
Tu fleuriras toujours
Au grand jardin d'amour
Petite fleur
%}
