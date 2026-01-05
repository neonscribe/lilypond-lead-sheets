%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

lyricsCredit =
#(if (and (defined? 'lyricsLanguage) (string= lyricsLanguage "english"))
  "English lyrics by Norman Gimbel"
  (if (and (defined? 'lyricsLanguage) (string= lyricsLanguage "french"))
   "French lyrics by Pierre Barouh"
   "Portuguese lyrics by Vinícius de Moraes"))

\header {
  title = "Água de Beber (Water to Drink)"
  subtitle = \instrument
  poet = \lyricsCredit
  composer = "Antônio Carlos Jobim"
  copyright = \markup \small { \now " " "© 1963 Jobim Music" }
}

bossaRhythm = ##t

refrainLyricsEnglish = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Your love is rain, __ my heart __ the flow -- er. __ I need your love __ or I will die. __
My ver -- y life __ is in your pow -- er. __ Will I with -- er and fade or __ bloom to the sky?
A -- gua de Be -- ber, give the flow -- er wat -- er to drink.
A -- gua de Be -- ber, give the flow -- er wat -- er to drink.
_ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
The rain can fall
}

refrainLyricsEnglishTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
(The rain can fall) __
on dis -- tant des -- erts. __ The rain can fall __ up -- on the sea. __
The rain can fall __ up -- on __ the flow -- er. __ Since the rain has to fall, let it fall __ on me.
}

refrainLyricsFrench = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Droit dev -- ant moi, __ je __ cours __ les rou -- tes. __
En va -- ga -- bon __ de grands __ che -- mins. __
Je fuis __ l'a -- mour __ et __ ma __ dé -- rou -- te. __
Par -- fois je verse des pleurs sur mes jours an -- ciens
Ce n'est que de l'eau
Ce n'est que de l'eau ca -- ma -- rade
Ce n'est que de l'eau
Ce n'est que de l'eau ca -- ma -- rade
_ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Lors -- que l'o -- ra-
}

refrainLyricsFrenchTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
(Lors -- que l'o -- ra) -- ge __ vient, je goû -- te __
la terre __ qui se __ change en __ par -- fum. __
Et si __ la pluie pè -- se __ ses gout -- tes, __
je chante au -- près_de mon âme, j'en at -- tends la fin.
}

refrainLyricsPortuguese = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Eu quis __ a -- mar, __ mas __ ti -- ve me -- do. __
E quis __ sal -- var __ meu co -- ra -- ção. __
Mas o __ a -- mor __ sa -- be_um __ se -- gre -- do. __
O_me -- do po -- de ma -- tar o __ seu co -- ra -- ção.

Á -- gua de be -- ber, Á -- gua de be -- ber, ca -- ma -- rá.
Á -- gua de be -- ber, Á -- gua de be -- ber, ca -- ma -- rá.
_ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Eu nun -- ca fiz
}

refrainLyricsPortugueseTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
(Eu nun -- ca fiz) __ coi -- sa __ tão cer -- ta. __
En -- trei __ pra_es -- co -- la __ do __ per -- dão. __
A mi -- nha ca -- sa __ vi -- ve_a -- ber -- ta. __
A -- bri to -- das as por -- tas __ do co -- ra -- ção.
}

refrainLyrics =
#(if (and (defined? 'lyricsLanguage) (string= lyricsLanguage "english"))
  refrainLyricsEnglish
  (if (and (defined? 'lyricsLanguage) (string= lyricsLanguage "french"))
   refrainLyricsFrench
   refrainLyricsPortuguese))

refrainLyricsTwo =
#(if (and (defined? 'lyricsLanguage) (string= lyricsLanguage "english"))
  refrainLyricsEnglishTwo
  (if (and (defined? 'lyricsLanguage) (string= lyricsLanguage "french"))
   refrainLyricsFrenchTwo
   refrainLyricsPortugueseTwo))

refrainChords = \chordmode {
  a1:m7 b2:7.9+ e2:7.5+ a1:m7
  b2:7.9+ e2:7.5+ a1:m7 f1:maj7
  a1:m7
  
  e1:m7.5-
  
  a1:m7
  
  b1:7.9- e1:7.5+ a1:m7 a1:m7
  d1:m7 g1:7 c1:maj7 c1:maj7
  b2:7 bf2:7.5- a2:m7 af2:dim7 c2:9/g c4.:7.9+/g b8*9:7.9+/fs
  b1:7.9- e1:sus9 a1:m7 a1:m7
  
  d1:7 d1:m7 a1:m7 a1:m7
  d1:7 d1:m7 a1:m7 e1:m7.5-
  
  a1:m7 b2:7.9+ e2:7.5+ a1:m7
  b2:7.9+ e2:7.5+ a1:m7 f1:maj7
  a1:m7 a1:m7  
}

refrainKey = a

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Bossa [Astrud Gilberto 1965]" 4 = 144

  \sectStart "Intro"
  
  \repeat volta 2 {
  c'8 a8 g8 a8 r4 r8 c8 | ds16( e16 ds8) d8 ef8 d4 c4 |
  c8 a8 g8 a8 r4 r8 c8 | ds16( e16 ds8) d8 ef8 d4 c4 |
  \break
  c8 a8 g8 a8 r2 | a8 g8 a2. | a8 g8 a2. |
  \alternative { \volta 1 {
   \new Voice
    { \voiceTwo
  <a' e d bf>8 g8 <a e d bf>2. |
    }
  } \volta 2 {
  r4 a,8 c8~ c8 e4 ds8~ |
  } } }
  
  \sect "A"
  \sect "Refrain"
  \segnoSign
  
  ds4. e8~ e4. c8~ | c2~ c8 a4 c8~ | c8 a4.~ a2 | r4 a8 c8~ c8 e4 g8~ |
  \break
  g2~ g8 a4 e8~ | e2~ e8 d4 e8~ | e1 | r4 a,8 c8~ c8 e4 ds8~ |
  \break
  ds4. e8~ e4. c8~ | c2~ c8 d4 c8~ |

  <<
    { \voiceOne
      c8 a4.~ a2 | b2\rest b4\rest b8\rest c8~ |
    }
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
      s2. g,8 fs8~ | fs1 | }
    }
  >>
  \oneVoice

  \break
  c''8 c4 c8~ c8 d8 c4 | b4. fs8~ fs8 a4 c8~ | c8 b8 a2. | r4 a8 a8 c8 e8 d4~ |
  
  \xPageBreak

  \sectNoBar "B"
  
  d1~ | d4 e8 d8 c8 a8 c4~ | c8 a8 a8 a8 r2 | r4 a8 a8 c8 e8 d4~ |
  \break
  d1~ | d4 e8 d8 c8 a8 c4~ | c8 a8 a8 a8 r2 | 
    { \voiceTwo
  <a' e d bf>8 g8 <a e d bf>2. |
    }
  
  \sect "C"
  
  c,8 a8 g8 a8 r4 r8 c8 | ds16( e16 ds8) d8 ef8 d4 c4 |
  c8 a8 g8 a8 r4 r8 c8 | ds16( e16 ds8) d8 ef8 d4 c4 |
  \break
  c8 a8 g8 a8 r2 | a8 g8 a2. | a8 g8 a2._"FINE" |
  r4
  a8 c8~ c8 e4
  ds8\laissezVibrer \dalSegnoAlFine |  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

%{
Droit devant moi, je cours les routes
En vagabon de grands chemins
Je fuis l'amour et ma déroute
Parfois je verse des pleurs sur mes jours anciens
Ce n'est que de l'eau
Ce n'est que de l'eau camarade
Ce n'est que de l'eau
Ce n'est que de l'eau camarade
Lorsque l'orage vient, je goûte
La terre qui se change en parfum
Et si la pluie pèse ses gouttes
Je chante auprès de mon âme, j'en attends la fin
Ce n'est que de l'eau
Ce n'est que de l'eau camarade
Ce n'est que de l'eau
Ce n'est que de l'eau camarade
Quand un obstacle me déroute
Je le contourne et ce matin
C'est l'océan qui bat ma route
Tant pis je vais le sauter pour aller plus loin
Ce n'est que de l'eau
Ce n'est que de l'eau camarade
Ce n'est que de l'eau
Ce n'est que de l'eau camarade
%}

%{
Eu quis amar, mas tive medo
E quis salvar meu coração
Mas o amor sabe um segredo
O medo pode matar o seu coração

Água de beber
Água de beber camará
Água de beber
Água de beber camará

Eu nunca fiz coisa tão certa
Entrei pra escola do perdão
A minha casa vive aberta
Abri todas as portas do coração

Água de beber
Água de beber camará
Água de beber
Água de beber camará
Água de beber
Água de beber camará
%}

