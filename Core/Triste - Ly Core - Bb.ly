%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Triste"
  subtitle = \instrument
  composer = "Antonio Carlos Jobim"
  copyright = "© 1967 Corcovado Music Corp."
}

refrainPortugueseLyrics = \lyricmode {
  Tris -- te_é vi -- ver na so -- li -- dão __
  Na dor cru -- el de_u -- ma pai -- xão __
  Trist -- e_é sa -- ber __ que nin -- guém
  Po -- de vi -- ver de_i -- lu -- são __
  Que nun -- ca vai ser, __ nun -- ca vai dar __
  O __ so -- nha -- dor __ tem __ que_a -- cor -- dar __

  Tu -- a be -- le -- za_é_um a -- vi -- ão __
  De -- mais pra_um po -- bre co -- ra -- ção __
  Que pá -- ra pra te ver pas -- sar __
  Só pra me mal -- tra -- tar __
  Trist -- e_é vi -- ver na so -- li -- dão __
}

refrainEnglishLyrics = \lyricmode {
  Sad is to live in sol -- i -- tude __
  Far from your tran -- quil al -- ti -- tude, __
  Sad is to know __ that no one ev -- er can live on a dream __
  that nev -- er can be, __ will nev -- er be. __
  Dream -- er a -- wake, wake up and see __

  Your beau -- ty is an aer -- o -- plane __
  So high, my heart can't bear the strain. __
  A heart that stops when you __ pass by
  On -- ly to cause me pain __
  Sad is to live in sol -- i -- tude. __
}

refrainLyricsLanguageOne = \refrainPortugueseLyrics
refrainLyricsLanguageTwo = \refrainEnglishLyrics

refrainChords = \chordmode {
  bf1:maj7 bf1:maj7 gf1:maj7 b1:7.5-
  bf1:maj bf1:maj7 d1:m7 g1:7

  c1:m7 a2:m7.5- d2:7 g1:m7 a1:7.9+
  d1:maj7 e2:m7 a2:7 d2:m7 g2:7 c2:m7 f2:7
  
  bf1:maj7 bf1:maj7 bf1:m7 ef1:7
  bf1:maj7 bf1:maj7 f1:m7 bf1:7
  
  ef1:maj7 af1:7 d2:m7 g2:m7 c1:7
  c1:m7 c2:m7 f2:7 bf2:m7 ef2:7 bf2:m7 ef2:7

  bf2:m7 ef2:7 bf2:m7 ef2:7
}
  
refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa Nova" 4 = 160
  
  \mark \markup{ \box A }

  r4 r8 bf4 a4 bf8 | a4 g8 d4 ef4 f8~ | f1~ | f1 |
  \break
  r4 r8 bf4 a4 bf8 | a4 g8 d4 ef4 f8~ | f1~ | f1 |
  \break
  r4 r8 g8 f8 g4 f8~ | f8 ef4 d4 a4 c8~ | c8 a8 bf8 d8 f8 a4 c8~ | c2~ c8 bf4 cs8~ |
  \break
  cs8 a8 a8 a8~ a2 | a8 fs8 fs8 fs8~ fs4. e8~ | e8 d8 d8 d8~ d4 g4~ | g8 f8 f8 f8~ f2 |
  \bar "||"
  \break
  
  \mark \markup{ \box B }

  r4 r8 bf4 a4 bf8 | a4 g8 d4 ef4 f8~ | f1~ | f1 |
  \break
  r4 r8 bf4 a4 bf8 | a4 g8 d4 ef4 f8~ | f1~ | f1 |
  \break
  r8 bf8 bf,8 c8 d8 ef4 f8~ | f8 e4 ef8~ ef4 f4~ | f4 ef8 d8 c8 bf4 c8~ | c1 |
  \break
  r4 r8 ef4 d4 ef8 c4 d8 bf4 c4 bf8~ | bf1~ | bf1 |
  
  r1 | r1 |
  \bar "|."
}
  
\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-languages.ily"
