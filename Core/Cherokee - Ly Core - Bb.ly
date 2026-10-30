%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "singerGender": [ "male", "female" ] } }

%}

\version "2.26.0"

songID = "2026-06-01T22:16:29.301688Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Cherokee"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Ray Noble"
headerCopyright = "© 1938 The Peter Maurice Music Co. Ltd."

refrainObjectGenderMaleLyrics = \lyricmode {
Brave In -- dian war -- rior, since first I met you I can't for -- get you, Cher -- o -- kee sweet -- heart.

Child of the prai -- rie, your love keeps call -- ing, my heart en -- thral -- ling, Cher -- o -- kee. __

Dreams __ of sum -- mer -- time, __ of lov -- er time __ gone by __
throng __ my mem -- o -- ry __ so ten -- der -- ly __ and sigh.

My brave In -- dian war -- rior, one day I'll hold you. In my arms fold you Cher -- o -- kee. __
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Sweet In -- dian maid -- en, since first I met you I can't for -- get you, Cher -- o -- kee sweet -- heart.

Child of the prai -- rie, your love keeps call -- ing, my heart en -- thral -- ling, Cher -- o -- kee. __

Dreams __ of sum -- mer -- time, __ of lov -- er time __ gone by __
throng __ my mem -- o -- ry __ so ten -- der -- ly __ and sigh.

My sweet In -- dian maid -- en, one day I'll hold you. In my arms fold you Cher -- o -- kee. __
}

refrainLyrics =
#(if (and (defined? 'singerGender)
          (equal? singerGender "female"))
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  bf1:maj7 bf2:maj7 f2:7.5+ f1:m7 bf1:7
  ef1:maj7 ef1:maj7 af1:9 af1:9
  bf1:6 bf2:6 d2:m7 c1:7 c1:7

  c1:m7 d2:m7.5- g2:7.9- c1:m7 f1:7.5+

  bf1:maj7 bf2:maj7 f2:7.5+ f1:m7 bf1:7
  ef1:maj7 ef1:maj7 af1:9 af1:9
  bf1:6 bf2:6 d2:m7 c1:7 c1:7

  c1:m7 f1:7 bf1:6 bf1:6

  cs1:m7 fs1:7 b1:maj7 b1:maj7
  b1:m7 e1:7 a1:maj7 a1:6
  a1:m7 d1:7 g1:maj7 g1:maj7
  g1:m7 c1:7 c1:m7 f1:7.5+

  bf1:maj7 bf2:maj7 f2:7.5+ f1:m7 bf1:7
  ef1:maj7 ef1:maj7 af1:9 af1:9
  bf1:6 bf2:6 d2:m7 c1:7 c1:7

  c1:m7 f1:7 bf1:6
  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7.5+ }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium (180 BPM) or Fast [Clifford Brown 1953]" 320

  \sectNoBar "A1"

  d1 | f2 g2 | bf1 | g1 |
  \break
  f1 | d2 f2 | d1 | c1 |
  \break
  bf1 | d2 f2 | d'1 | bf1 |
  \break
  g1 | f2 d2 | c1 | cs1 |

  \sect "A2"

  d1 | f2 g2 | bf1 | g1 |
  \break
  f1 | d2 f2 | d1 | c1 |
  \break
  bf1 | d2 f2 | d'1 | bf1 |
  \break
  g1 | d1 | bf1~ | bf1 |

  \alwaysPageBreak "B" "||" "||-||"

  ds'1~ | ds2 cs2 | cs4 as4 fs2~ | fs2 cs'2 |
  \break
  cs4 a4 fs2~ | fs2 b2 | e,1~ | e1 |
  \break
  b'1~ | b2 a2 | a4 fs4 d2~ | d2 a'2 |
  \break
  a4 f4 d2~ | d2 g2 | c,1 | cs1 |

  \sect "A3"

  d1 | f2 g2 | bf1 | g1 |
  \break
  f1 | d2 f2 | d1 | c1 |
  \break
  bf1 | d2 f2 | d'1 | bf1 |
  \break
  g1 | d1 | bf1~ | bf1 |

  \bar "|."
}

\include "../Include/refrainonly.ily"

cliffordBrownCoda = \relative f' {
  r8 cs8 d8 f8 c8 bf8 g8 f8 | bf4-. bf8 af8 r8 af8 f4-. |
  r8 cs'8 d8 f8 c8 bf8 g8 f8 | bf4-. bf8 af8 r8 af8 <e' g,>4\fermata |
}