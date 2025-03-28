%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bésame Mucho"
  subtitle = \instrument
  poet = "Consuelo Velázquez/Sunny Skylar"
  composer = "Consuelo Velázquez"
  copyright = \markup \small "© 1941 Promotora Hispano Americana de Musica, S.A."
}

refrainSpanishLyrics = \lyricmode {
Bé -- sa -- me, __ bé -- sa -- me mu -- cho, __
co -- mo si fue -- ra~_es -- ta no -- che la úl -- ti -- ma vez. __
Bé -- sa -- me  mu -- cho, __
que ten -- go mie -- do per -- der -- te, per -- der -- te~_o -- tra vez. __
Quie -- ro te -- ner -- te muy cer -- ca mi -- rar me~_en tus o -- jos,
ver -- te jun -- to~_a mí,
pien -- sa que tal vez ma -- ña -- na yo ya~_es -- ta -- ré le -- jos muy le -- jos de ti.
Bé -- sa -- me, __ bé -- sa -- me mu -- cho, __
co -- mo si fue -- ra~_es -- ta no -- che la úl -- ti -- ma vez. __
Bé -- sa -- me  mu -- cho, __
que ten -- go mie -- do per -- der -- te, per -- der -- te des -- pués. __
}

refrainEnglishLyrics = \lyricmode {
Bé -- sa -- me, __ bé -- sa -- me mu -- cho. __
Each time I cling to your kiss I hear mu -- sic di -- vine. __
Bé -- sa -- me  mu -- cho, __
hold me my dar -- ling, and say that you'll al -- ways be mine. __
This joy is some -- thing new, my arms en -- fold -- ing you.
Nev -- er knew this thrill be -- fore.
Who -- ev -- er thought I'd be hold -- ing you close to me,
whis -- p'ring “It's you I a -- dore.”
Dear -- est one, __ if you should leave me. __
each lit -- tle dream would take wing and my life would be through. __
Bé -- sa -- me  mu -- cho, __
Love me for -- ev -- er and make all my dreams _ come true. __
}

refrainChords = \chordmode {
  d1:m6 d1:m6 g1:m6 g1:m6
  g2:m6 d2:7.9- g2:m6 a2:7.9- d1:m6 e2:m7 a2:7
  
  d2:7 c2/e d2:7/fs d2:7.9- g1:m6 g1:m6
  d2:m d2:m/c bf2:7 a2:7 d1:m6 d1:m6
  
  g1:m6 d1:m6 a1:7 d2:m6 d2:7.9-
  g1:m6 d1:m6 e2:7 bf2:7 a1:7

  d1:m6 d1:m6 g1:m6 g1:m6
  g2:m6 d2:7.9- g2:m6 a2:7.9- d1:m6 e2:m7 a2:7
  
  d2:7 c2/e d2:7/fs d2:7.9- g1:m6 g1:m6
  d2:m d2:m/c bf2:7 a2:7 d1:m6 d2:m6
  \chordInsideParens{ a2:7 }
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Latin [Xavier Cugat 1945]" 4 = 140

  \xTextMark \markup{ \bold \box "A1" }
  
  d4 d8 d8~ d2~ | d2 \tuplet 3/2 { d4 e4 f4 } | a2 g2~ | g2. r4 |
  \break
  \tuplet 3/2 { g4 g4 g4 } \tuplet 3/2 { a4 a4 a4 }  |
  \tuplet 3/2 { bf4 bf4 bf4 } \tuplet 3/2 { cs4 d4 e4 }  |
  a,1~ | a2. r4 |
  \break
  d1~ | d2 c4 bf4 | a2 g2~ | g2. r4 |
  \break
  \tuplet 3/2 { d'4 a4 f4 } \tuplet 3/2 { a4 f4 d4 }  |
  \tuplet 3/2 { f4 e4 d4 } \tuplet 3/2 { e4 d4 cs4 }  |
  d1~ | d2. r4 |
  
  \sect "B"
  
  g4 g8 g8 \tuplet 3/2 { g4 f4 e4 } | f4 f8 f8 \tuplet 3/2 { f4 e4 d4 } |
  \tuplet 3/2 { e4 e4 e4 } \tuplet 3/2 { e4 f4 g4 } | a1 |
  \break
  g4 g8 g8 \tuplet 3/2 { g4 f4 e4 } | f4 f8 f8 \tuplet 3/2 { f4 e4 d4 } |
  \tuplet 3/2 { e4 e4 e4 } \tuplet 3/2 { f4 f4 f4 } | e1 |
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "A2" }
  
  d4 d8 d8~ d2~ | d2 \tuplet 3/2 { d4 e4 f4 } | a2 g2~ | g2. r4 |
  \break
  \tuplet 3/2 { g4 g4 g4 } \tuplet 3/2 { a4 a4 a4 }  |
  \tuplet 3/2 { bf4 bf4 bf4 } \tuplet 3/2 { cs4 d4 e4 }  |
  a,1~ | a2. r4 |
  \break  
  d1~ | d2 c4 bf4 | a2 g2~ | g2. r4 |
  \break
  \tuplet 3/2 { d'4 a4 f4 } \tuplet 3/2 { a4 f4 d4 }  |
  \tuplet 3/2 { f4 e4 d4 } \tuplet 3/2 { e4 d4 cs4 }  |
  d1~ | d2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

refrainLyricsLanguageOne = \refrainSpanishLyrics
refrainLyricsLanguageTwo = \refrainEnglishLyrics

\include "../Include/refrain-two-languages.ily"
