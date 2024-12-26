%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Samba de Verão (So Nice, Summer Samba)"
  subtitle = \instrument
  poet = "Paulo Sérgio Valle, Norman Gimbel"
  composer = "Marcos Valle"
  copyright = "© 1965 Marcos Valle and Paulo Sérgio Valle"
}

bossaRhythm = ##t

refrainPortugueseLyrics = \lyricmode {
Vo -- cê viu só que~_a -- mor. Nun -- ca vi coisa as -- sim
E pas -- sou, nem pa -- rou. Mas o -- lhou só __ pra mim.
Se vol -- tar vou a -- trás, Vou pe -- dir, vou __ fa -- lar,
Vou con -- tar que o~_a -- mor Foi fei -- ti -- nho __ pra dar
O -- lha, __ é co -- mo~_o ve -- rão quen -- te~_o co -- ra -- ção
Sal -- ta de re -- pen -- te pa -- ra ver a me -- nina que vem
E -- la vem sem -- pre tem es -- se mar no o -- lhar
E vai ver, tem que ser nun -- ca tem quem a -- mar
Ho -- je sim, diz que sim, já can -- sei de~_es -- per -- ar
Nem pa -- rei, nem dor -- mi, só pen -- san -- do~_em me dar
Pe -- ço, mas vo -- cê não vem, bem
dei -- xo~_en -- tão, fa -- lo só, di -- go~_ao céu, mas vo -- cê vem
}

refrainEnglishLyrics = \lyricmode {
Some -- one to hold me tight.
That would be ver -- y nice.
Some -- one to love me right.
That would be ver -- y nice.
Some -- one to un -- der -- stand each lit -- tle dream in me.
Some -- one to take my hand and be a team with me.
So nice, life would be so nice,
If one day I find,
Some -- one who would take my hand and sam -- ba through life with me;
Some -- one to cling to me stay with me right or wrong;
Some -- one to sing to me some lit -- tle sam -- ba song;
Some -- one to take my heart and give his heart to me;
Some -- one who's rea -- dy to give love a start with me;
Oh yes that would be so nice, nice.
Should it be, you and me,
I could see, it would be nice.
}

refrainLyricsLanguageOne = \refrainPortugueseLyrics
refrainLyricsLanguageTwo = \refrainEnglishLyrics

refrainChords = \chordmode {
  f1:maj7 f1:6 b1:m7 e1:7
  bf1:maj7 bf1:6 ef1:7 ef1:7
  
  a1:7 d1:7.9- g1:m7 e2:m7.5- a2:7.5+
  d1:m7 g1:7 g1:m7 df2:7 c2:7

  f1:maj7 f1:6 b1:m7 e1:7
  bf1:maj7 bf1:6 ef1:7 ef1:7
  
  a1:7 d1:7.9- g1:m7 c1:7.9-
  f1:maj7 bf1:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa" 4 = 122

  \xTextMark \markup{ \bold \box "A1" }
  
  a,8 c8 d4 e8 ef8 d4 | a8 c8 d8 e8~ e8 ef8 d4 |
  a8 c8 d4 e8 ef8 d4 | gs,8 c8 d8 e8~ e8 ef8 d4 |
  \break
  d8 f8 g4 a8 af8 g4 | d8 f8 g8 a8~ a8 af8 g4 | 
  df8 f8 g4 a8 af8 g4 | df8 f8 g8 a8~ a8 af8 g4 |
  
  \sect "B"
  
  r4 c4 c,2~ | c2 ef'8 d8 c8 bf8 | a1~ | a2 c8 b8 bf8 a8 |
  \break
  g1~ | g2 a8 af8 g8 gf8 | f8 d8 f8 d8 f8 d8 f8 af8~ | af8 f8 g4 r2 |
  
  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "A2" }
  
  a,8 c8 d4 e8 ef8 d4 | a8 c8 d8 e8~ e8 ef8 d4 |
  a8 c8 d4 e8 ef8 d4 | gs,8 c8 d8 e8~ e8 ef8 d4 |
  \break
  d8 f8 g4 a8 af8 g4 | d8 f8 g8 a8~ a8 af8 g4 | 
  df8 f8 g4 a8 af8 g4 | df8 f8 g8 a8~ a8 af8 g4 |
  
  \sect "C"

  r4 c4 c,2~ | c2 ef'8 d8 c8 bf8 | a1 | a1 |
  \break
  g8 gf8 f4 f8 fs8 g4 | g8 gf8 f4 f8 fs8 g4 | f1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-languages.ily"
