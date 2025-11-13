%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
     (set-global-staff-size 18))

\header {
  title = "Si Tu Vois Ma Mère"
  subtitle = \instrument
  poet = "Jean Broussole"
  composer = "Sidney Bechet"
  copyright = \markup \small { \now " " "© 1952" }
}

refrainLyrics = \lyricmode {
    Quand je pense "à" toi Aus -- si -- "tôt" "je " vois Je ne sais pour
    -- quoi Le bal -- con fleur -- i "Où" tu "m'as" sour -- i Quand je
    suis par -- "tie " souv -- iens -- toi\skip1 De -- "puis " ce temps
    je voy -- ag -- e Et sur tou -- tes Les rou -- tes "À" tout ja --
    mais ton doux vi -- sa -- ge "Qu'un" "rêve" ef -- fleure De -- meu
    -- re Car le temps qui fuit Au vent de -- "l'ou" -- bli Pas -- ser
    -- " a" sans bruit Sans rein ef -- fac -- er Ma -- "man," tu le sais
    Rien ne peut bri -- ser Le pas -- "sé" \skip1 Je me souv -- ien --
    drai De tes yeux jus -- "qu'à" mon der -- nier jour Ma -- "man," mon
    plus tendre a -- mour\skip1
    }

refrainChords = \chordmode {
  s4
  \bar "||-||"
  \xTextMark \markup { \bold \box "A1" }
  c1 c1:maj7 c1:6 c1:7
  f1:maj7 f1:m7 c2:maj7 g2:7.5+ c1:maj7
  \bar "||-||"
  \break

  \xTextMark \markup { \bold \box "B" }
  e1:7.9- e1:7.9- a2:m11 e2:7 a1:m11
  \break
  d1:9 d1:9 d2.:m7 g4:7 d2.:m7 g4:7.5+
  \bar "||-||"
  \break
  
  \xTextMark \markup { \bold \box "A2" }
  c1 c1:maj7 c1:6 c1:7
  \break
  f1:maj7 f1:m7 c2:maj7 bf2:7 a1:7
  \bar "||-||"
  \break
  
  \xTextMark \markup { \bold \box "C" }
  f1:m6 f1:m6 c2:maj7 bf2:7.5+ a1:9
  \break
  f1:m6 d2:m7 g2:7 c1:maj7 c1:maj7
  \bar "|."
}

refrainKey = c

\include "nederlands.ly"

refrainMelody = \relative fis' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Sidney Bechet 1952]" 4 = 80

    \partial 4 fis8 g8 | % 1
    e'8 g8 e2 fis,8 
    g8 | % 2
    d'8 g8 d2 fis,8 
    g8 | % 3
    c8 e8 c2 dis,8 e8
    | % 4
    bes'8 d8 bes2 b,8
    c8 | % 5
    a'8 c8 a2 b,8 c8
    | % 6
    as'8 c8 as2 b,8 c8
    | % 7
    g'1 ( | % 8
    g1 )
    f4. e8 dis8
    e8 as8 b8 | 
    f'4 e2 ais,8 b8 | % 11
    d4 b2 b4 | % 12
    d4 c2 b4 | % 13
    d,4. e8 cis8 d8 fis8
    a8 | % 14
    e'4 d2 gis,8 a8 | % 15
    c4 b2 d,4 | % 16
    a'4 g2 fis8 g8
    e'8 g8
    e2 fis,8 g8 | % 18
    d'8 g8 d2 fis,8 
    g8 | % 19
    c8 e8 c2 dis,8 e8
    | 
    bes'8 d8 bes2 b,8
    c8 | % 21
    a'8 c8 a2 b,8 c8
    | % 22
    as'8 c8 as2 b,8 c8
    | % 23
    g'1 ( | % 24
    g2. ) g4
    as4 g'2 f4
    | % 26
    gis,2. g'8 f8 | % 27
    e4. f8 fis8 g8 e8
    c8 | % 28
    b2. g4 | % 29
    as4 g'2 f4 | 
    a,2 b2 | % 31
    c1 ( | % 32
    c1 )
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
