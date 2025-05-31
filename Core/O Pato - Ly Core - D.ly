%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "O Pato"
  subtitle = \instrument
  poet = "English lyrics by Jon Hendricks"
  composer = "Jaime Silva, Neuza Teixera"
  copyright = \markup \small "© 1960 Fermata International Melodies, Inc."
}

bossaRhythm = ##t

refrainLyricsPortuguese = \lyricmode {
O pa -- to, vi -- nha can -- tan -- do_a -- le -- gre -- men -- te,
quen, quen, quen, quan do_um mar -- re -- co sor -- ri -- den -- te, pe -- diu,
pra en -- trat tam -- bém no sam -- ba, no sam -- ba.

O gan -- zo, gos -- tou da du pla_e fez as -- sim, quen, quen, quen,
o -- lhou pro cis -- ne_e  dis -- se_as -- sim, vem, vem,
que o quar -- te -- to fi -- ca -- rá bem, mui -- to bom, mui -- to bem.

Na bei -- ra da la -- go -- a fo -- ram en -- sai ar pa -- ra co -- me çar,
o ti -- co no fu - bá.

A voz do pa -- to e -- ra mes -- mo um des' -- ca -- to.
Jo -- go de ce -- na com o gan -- zo e -- ra ma -- to.
Mas cu gos -- tei do fi -- nal quan -- do ca -- í -- ram n'á -- gua,
en -- sai -- an -- do_o vo -- cal,
quen, quen, quen, quen, quen, quen, quen, quen, quen, quen, quen, quen,
O pa -- to.
}

refrainLyricsEnglish = \lyricmode {
}

refrainLyricsLanguageOne = \refrainLyricsPortuguese

refrainLyricsLanguageTwo = \refrainLyricsEnglish

refrainChords = \chordmode {
  s2
  
  d1:6.9 d1:6.9 e1:9 e1:9 ef1:7.9+ ef1:7.9+
  
  d1:6.9 d1:6.9

  d1:6.9 d1:6.9

  d1:7 d2:7 af2:7.11+ g1:maj9 g1:maj9 e1:9 e1:9 a1:13 d2:sus9 d2:7

  g2:6 g2:m6 d2:6.9 d2:7 g2:6 g2:m7 d2:6.9 d2:7
  g2:6 g2:m6 d2:6 b2:m7 e1:9 a1:7

  d1:6.9 d1:6.9 e1:9 e1:9 ef1:7.9+ ef1:7.9+ d1:6.9 d1:6.9
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Bossa [João Gilberto 1960]" 4 = 175

  \partial 2 \invisEighth a,8 d4 |
  \repeat volta 2 {
  \sectStart "A1,A2"

  fs4. fs8~ fs4. fs8~ | fs8 d8 e8 d8 fs8 d8 b8 a8 | gs8 fs'4. fs4. fs8~ |
  \break
  fs8 d8 e8 d8 fs8 d8 b8 a8 | g8 fs'4. fs4. fs8~ | fs8 a8~ a8 b16 a16 fs8 d8 b8 a8 |
  \break
  \alternative { \volta 1 {
  cs8 d8 r8 a8 cs8 d8 r8 b8 | cs8 d8 r8 e8 r8 f4. |
  } \volta 2 {
  cs8 d8 r8 a8 cs8 d8 r4 | r2 r4 r8 d8 |
  } } }
  \sect "B"
  
  c8 d8 fs8 b8 r8 a4. | r1 | a8 g8 r8 b,8 d4 fs8 e8 | r8 a,8 b8 d8 e8 fs8 e8 d8 | b8 d8 e8 fs8 e8 d8 b8 d8 |
  \break
  e8 fs8 e8 d8 b8 d8 e8 fs8 | a8 a8 a8 a8 r8 a8 b8 a8 | d8 c8 r8 a8~ a4 r8 d,8 |
  
  \sect "C"

  b8 d8 e8 d8 bf8 d8 e8 d8 | a4 r4 r8 d8 \tuplet 3/2 { e16 f16 e16 } d8 |
  b8 d8 e8 d8 bf8 d8 e8 d8 | a4 r4 r8 d8 e8 d8 |
  \break
  b8 d8 e8 d8 bf8 d8 e8 d8 | fs8 d8 r8 fs8 a8 fs8 a8 cs8 | r8 b4. r2 | r8 d,8 a'8 b8 a8 a,8 cs8 d8 |

  \sect "A3"
  
  r8 fs4. fs2 | fs4. fs8~ fs2 | r8 fs4. fs2 | c'4 b8 fs8~ fs2 | 
  \break
  r8 fs4. fs2 fs4. fs8~ fs8 a,8 cs8 d8 | r1^"Solo Break" | r1 |
 
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
