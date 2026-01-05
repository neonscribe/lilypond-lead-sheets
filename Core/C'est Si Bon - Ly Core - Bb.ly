%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "C'est Si Bon (It's So Good)"
  subtitle = \instrument
  poet = "Andre Hornez/Jerry Seelen"
  composer = "Henri Betti"
  copyright = \markup \small { \now " " "© 1947 Arpege Editions" }
}

refrainLyricsEnglish = \lyricmode {
  “C'est si bon,” __ lov -- ers say that in France, __
  when they thrill to ro -- mance, __
  it means that it's so good. __
  
  C'est si bon, __ so I say it to you, __
  like the French peo -- ple do, __
  Be -- cause it's oh, so good. __
  
  Ev -- 'ry word, ev -- 'ry sigh, ev -- 'ry kiss, dear, __
  leads to on -- ly one thought and it's this, dear.
  
  It's so good, __ noth -- ing else can re -- place, __
  just your slight -- est em -- brace, __
  And if you on -- ly would, __
  be my own, __ for the rest of my days, __
  I will whis -- per this phrase, __
  my dar -- ling, “C'est si bon.” __
  C'est si
}

refrainLyricsTwoEnglish = {
}

refrainLyricsFrench = \lyricmode {
“C'est si bon,” __
De par -- tir n'im -- porte où, __
Bras des -- sus, bras des -- sous __
En chan -- tant des chan -- sons. __

C'est si bon, __
De se dire 'des mots doux. __
Des pe -- tits riens du tout __
Mais qui en di -- sent long. __
En voy -- ant no -- tre mi -- ne ra -- vi -- e __
Les pas -- sants dans la rue, nous en -- vient. _

C'est si bon, __
De guet -- ter dans ses yeux __
Un es -- poir mer -- veil -- leux. __
Qui don -- ne un fris -- son. __

C'est si bon __
Ces pe -- tit's sen -- sa -- tions. __
Ça vaut mieux qu'un mil -- lion. __
Tell' -- ment, tell' -- ment c'est bon. __
C'est si
}

refrainLyricsTwoFrench = \lyricmode {
_ _ bon, __
De pou -- voir l'em -- bras -- ser __
Et pui de r'com -- men -- cer __
A la moindre oc -- ca -- sion. __
C'est si bon __
De jou -- er du pia -- no. __
Tout le long de son dos __
Tan -- dis que nous dan -- sons. __

C'est i -- nouï ce qu'elle a pour sé -- dui -- re. __
Sans par -- ler de c'que je n'peux pas dire. _
C'est si bon, __
Quand j'la tiens dans mes bras, __
De me dir' -- que tout ça. __
C'est à moi pour de bon. __
C'est si bon, __
Et si nous nous ai -- mons __
Cher -- chez pas la rai -- son: __
C'est parc' -- que c'est si bon. __ ""
}

refrainLyrics =
#(if (and (defined? 'lyricsLanguage) (string= lyricsLanguage "english"))
  refrainLyricsEnglish
  refrainLyricsFrench)

refrainLyricsTwo =
#(if (and (defined? 'lyricsLanguage) (string= lyricsLanguage "english"))
  refrainLyricsTwoEnglish
  refrainLyricsTwoFrench)

refrainChords = \chordmode {
  s2
  
  c1:m7 f1:7 bf2:maj7 ef2:maj7 d2:m7 g2:7
  c1:m7 f1:7 bf2:6 ef2:7 d2:m7.5- g2:7.9-

  c1:m7 f1:7 bf2:maj7 ef2:maj7 d2:m7 g2:7
  c1:m7 f1:7 bf1:6 af2:m7 df2:7
  
  gf2:maj7 ef2:m7 af2:m7 df2:7 gf1:maj7 gf1:maj7
  g1:m7 c1:7 c1:m7 f2:7 d4:m7 df4:m7

  c1:m7 f1:7 bf2:maj7 ef2:maj7 d2:m7 g2:7
  c1:m7 f1:7 d1:m7.5- g1:7.9-
  
  c1:m7 ef1:m6 bf1:maj7 bf1:maj7
  df2:m7 gf2:7 c2:m7 f2:7 bf1:6 
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

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
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Eartha Kitt 1953]" 4 = 140
  
  \partial 2 f4 e4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  ef1~ | ef8 f4 g8 a8 g8 f4 | d1~ | d8 f4 g8 a8 g8 f4 |
  ef1~ | ef8 f8 g8 a8 d8 a4 g8~ | g1~ | g2 f4 e4 |
  
  \sect "A2"
  
  ef1~ | ef8 f4 g8 a8 g8 f4 | d1~ | d8 f4 g8 a8 g8 f4 |
  ef1~ | ef8 f8 g8 a8 d8 f,4 bf8~ | bf1~ | bf4 r4 bf4 b4 |
  
  \sect "B"
  
  df2 bf4 af4 | gf 2 f4 ef4 | ef2 df2~ | df4 r4 bf'4 b4 |
  c2 bf4 a4 | g2 a4 bf4 | d1 | c4 r4 f,4 e4 |
  \bar "||"
  
  \xPageBreak
  \sectNoBarNoBreak "A3"
  
  ef1~ | ef8 f4 g8 a8 g8 f4 | d1~ | d8 f4 g8 a8 g8 f4 |
  ef1~ | ef8 f8 g8 a8 d8 f4 f8~ | f1~ | f2 f4 e4 |
  
  \sect "C"
  
  ef1~ | ef8 d4 c8 ef8 d8 c4 | d1~ | d8 d4 c8 bf8 a8 g4 |
  gf1~ | gf8 f8 g8 a8 d8 f,4 bf8~ |
  bf1 | r2 f4 e4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
