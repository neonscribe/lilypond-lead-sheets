%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "(Je Suis) Seul Ce Soir"
  subtitle = \instrument
  poet = "Rose Noel and Jean Casanova"
  composer = "Paul Durand"
  copyright = "© 1940 Editions Musicales Europa"
}

refrainLyrics = \lyricmode {
Je suis seul ce soir a -- vec mes rê -- ê -- ves,
Je suis seul ce soir sans ton a -- mour.
Le jour tombe, ma joie s'a -- chè -- ve,
Tout se brise dans mon coeur lourd.
Je suis seul ce soir a -- vec ma pei -- ei -- ne,
J'ai per -- du l'es -- poir de ton re -- tour,
Et pour -- tant je -- e t'aim' en -- core et pour tou -- jours
Ne me lais -- se pas seul sans ton a -- mour.
}

refrainChords = \chordmode {
  s2
  
  c1 c1 b1:7 b1:7
  c1 c1 e1:7 a1:7
  
  d1:m7 g1:7 c1 a1:m6
  b1:7 b1:7 e1:m7 g1:7

  c1 c1 b1:7 b1:7
  c1 c1 e1:7 a1:7
  
  f1:6 f1:m6 c1 a1:9
  d1:m7 g1:7 c2:6
  \chordOpenParen{ cs2:dim7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 190

  \partial 2 e4 g4 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  c4. c8 c2~ | c2 \tuplet 3/2 { c,4 e4 g4 } | b4. b8 b2~ | b2 a4 af4 |
  \break
  g4 g8 g8~ g2~ | g4 g4 gf4 f8 e8~ | e1~ | e2 d4 e8 f8~ |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  f1~ | f2 \tuplet 3/2 { d4 e4 f4 } | g4~ g8 g8~ g2~ | g2 fs4 g8 a8~ |
  \break
  a1~ | a2 \tuplet 3/2 { fs4 g4 a4 } | b1~ | b2 e,4 g4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  c4. c8 c2~ | c2 \tuplet 3/2 { c,4 e4 g4 } | b4. b8 b2~ | b2 a4 af4 |
  \break
  g4 g8 g8~ g2~ | g4 g4 gf4 f8 e8~ | e1~ | e2 d4 e8 f8~ |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }
  
  f2 a4 c4 | e2. ef4 | d4 a4 g4 gf4 | f2. d4 |
  \break
  e4 d4 f4 a4 | e'2 \tuplet 3/2 { b4 c4 d4 } | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
