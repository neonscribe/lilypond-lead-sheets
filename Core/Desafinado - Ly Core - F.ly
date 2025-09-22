%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)\include "../Include/lead-sheets.ily"

\header {
  title = "Desafinado"
  subtitle = \instrument
  poet = "Newton Mendonça/Jon Hendricks & Jessie Cavanaugh"
  composer = "Antônio Carlos Jobim"
  copyright = \markup \small "© 1959 Editora Musical Arapua"
}

bossaRhythm = ##t

refrainPortugueseLyrics = \lyricmode {
  Se vo -- cê dis -- ser __ que~_eu de -- sa -- fi -- no,~_a -- mor. __
  Sai -- ba que~_is -- so~_em mim __ pro -- vo -- ca~_i -- men -- sa dor. __
  Só pri -- vi -- le -- gi -- a -- dos tem ou -- vi -- do~_i -- gual  ao seu. __
  Eu pos -- su -- o~_a -- pe -- nas o que Deus me deu. __
  
  Se vo -- cê in -- sis -- te em clas -- si -- fi -- car. __
  Meu com -- por -- ta -- men -- to de~_an -- ti -- mu -- si -- cal. __
  Eu mes__ mo men -- tin -- do de -- vo~_ar -- gu -- men -- tar. __
  Que~_is -- to~_é bos -- sa no -- va. Que~_is -- to~_é mui_to_na_tu_ral. __
  
  O que vo -- cê não sa -- be, nem se -- quer pres -- sen_te,
  É_que~_os de -- sa -- fi -- na -- dos tam _ bém tem co -- ra -- ção
  Fo -- to -- gra -- fei vo -- cê na mi -- nha Rol -- lei -- flex, _ _ _
  Re -- ve -- lou -- se~_a su  --  a~_e -- nor -- me~_in -- gra -- ti -- dão
  
  Só não po -- de -- rá fa -- lar as -- sim do meu_amor,
  É -- le é~_o ma -- ior que vo -- cê po -- de en -- con -- trar, viu
  Vo -- cê com~_a su -- a mú -- si -- ca~_es -- que -- ceu_o prin -- ci_pal,
  Que no pei -- to dos de -- sa -- fi -- nados
  No fun -- do do peito bate ca -- la -- do,
  Que no pe -- ito dos de -- sa -- fi -- na -- dos tam -- bém   ba -- te~_um co_ra_ção
}

refrainEnglishLyrics = \lyricmode {
  Love is like a nev -- er end -- ing mel -- o -- dy, __
  Po -- ets have com -- pared __ it to a sym -- pho -- ny, __
  A sym -- pho -- ny con -- duc -- ted by __ the light -- ing of the moon, __
  But our song of love is slight -- ly out __ of tune. __
  Once your kiss -- es raised __ me to __ a fe -- ver pitch, __
  Now the or -- ches -- tra -- tion does -- n't seem __ so rich, __
  Seems to me you've changed __ the tune __ we used __ to sing, __
  Like the bos -- sa no -- va, love should swing. __
  We used __ to har -- mo -- nize, __ two souls __ in per -- fect time, __
  Now the song is diff -- 'rent and __ the words __ don't e -- ven rhyme; __
  'Cause you for -- got __ the mel -- o -- dy __ our hearts would al -- ways croon, __
  And so what good's a heart __ that's slight -- ly out __ of tune? __
  Tune your heart to mine __ the way __ it used __ to be, __
  Join with me in har -- mo -- ny __ and sing __ a song of lov -- ing, __
  We're bound to get in tune __ a -- gain __ be -- fore __ too long, __
  There'll be no de -- sa -- fi -- na -- do
  When your heart be -- longs to me com -- plete -- ly, __
  Then you won't be slight -- ly out of tune, __
  You'll sing along with me. __
}

refrainChords = \chordmode {
  f1:maj7 f1:maj7 g1:7.5- g1:7.5-
  g1:m7 c1:7 a1:m7.5- d1:7.9-
  
  g1:m7 a1:7.9- d1:7 d1:7.9-
  g1:7.9- g1:7.9- gf1:maj7 \chordInsideParens{ c1:7.9- }
  
  f1:maj7 f1:maj7 g1:7.5- g1:7.5-
  g1:m7 c1:7 a1:m7.5- d1:7.9-
  
  g1:m7 bf1:m6 f1:maj7 b2:m7.5- e2:7.9+
  a1:maj7 bf1:dim7 b1:m7 e1:7
  
  a1:maj7 bf1:dim7 b1:m7 e1:7
  a1:maj7 fs1:m7 b1:m7e1:7
  
  c1:maj7 cs1:dim7 d1:m7 g1:7
  g1:m7 ef1:m6 g1:7 c1:7.9-

  f1:maj7 f1:maj7 g1:7.5- g1:7.5-
  g1:m7 c1:7 a1:m7.5- d1:7
  
  g1:m7 bf1:m6 f1:maj7 d1:m7
  g1:7 g1:7 bf1:m7 ef1:7

  g1:7 g2:m7 c2:7 f1:6 \chordInsideParens{ c1:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa [Stan Getz & João Gilberto 1964]" 4 = 145

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 c4 d8 e8 f4 e8~ | e8 d4 cs8~ cs8 d4 f8~ | f8 df4 df8~ df2~ | df1 |
  \break
  r8 d4 e8 f8 g4 f8~ | f8 e4 ds8~ ds8 e4 c'8~ | c8 ef,4 ef8~ ef2~ | ef1 |
  
  \sect "B"
  
  r8 d8 c'8 bf8 a8 g4 bf8~ | bf8 a4 ds,8~ ds8 e4 fs8~ | fs8 a4 fs8~ fs8 d4 ef8~ | ef1 |
  \break
  r8 af4 g8 f8 d4 a'8~ | a8 g4 f8~ f8 d4 f8~ | f8 df4 df8~ df2~ | df2 r2 |
  
  \sect "A2"
  
  r8 c4 d8 e8 f4 e8~ | e8 d4 cs8~ cs8 d4 f8~ | f8 df4 df8~ df2~ | df1 |
  \break
  r8 d4 e8 f8 g4 f8~ | f8 e4 ds8~ ds8 e4 c'8~ | c8 ef,4 ef8~ ef2~ | ef1 |
  
  \sect "C"
  
  r8 c'4 bf8 a8 g4 bf8~ | bf8 a4 g8~ g8 f4 g8~ | g8 f4 g8~ g2~ | g1 |
  \break
  r4 e8 fs8 e8 fs4 e8~ | e8 d4 cs8~ cs8 d4 e8~ | e1~ | e2 r8 cs4 e8~ |

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "D" }
  
  e8 fs4 e8~ e8 fs4 e8~ | e4 d8 cs8~ cs8 d4 e8~ | e8 b4 e8~ e2~ | e2 r2 |
  \break
  r8 e4 fs8 gs8 a4 b8~ | b8 a4 cs,8~ cs8 d4 e8~ | e8 fs4 e8~ e8 fs4 e8~ | e2 r8 e4 g8~ |
  
  \sect "E"

  g8 a4 g8~ g8 a4 g8~ | g4 f8 e8~ e8 f4. | g4 d8 g8~ g8 d8 g4~ | g2 r8 d8 g8 a8 |
  \break
  bf8 a4 bf8~ bf8 a4 c8~ | c8 bf4 a8~ a8 bf4 g8~ | g1~ | g2 r2 |

  \sect "A3"

  r8 c,4 d8 e8 f4 e8~ | e8 d4 cs8~ cs8 d4 f8~ | f8 df4 df8~ df2~ | df1 |
  \break
  r8 d4 e8 f8 g4 f8~ | f8 e4 ds8~ ds8 e4 d'8~ | d4. df8 c8 b4 bf8~ | bf8 d4.~ d4 a4 |
  
  \sect "F"
  
  c4. bf8 a8 g4 bf8~ | bf8 a4 g8~ g8 f4 a8~ | a2~ a8 e4 g8~ | g2 r4 d8 e8 |
  \break
  f8 f8 f8 f8 f8 f4. | r8 d4 e8 f4 f4 | f4. f8 f8 f4 c'8~ | c8 bf4.~ bf4 d,8 e8 |
  \break
  f8 f8 f8 f8 f8 f4 f8~ | f4 e8 ds8~ ds8 e4 g8~ | g8 f4 f8~ f2 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

refrainLyrics = \refrainPortugueseLyrics
refrainLyricsTwo = \refrainEnglishLyrics

refrainTwoLanguages = ##t

\include "../Include/refrain.ily"
