%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Someone to Light Up My Life (Se todos fossem iguais a você)"
  subtitle = \instrument
  poet = "Vinícius de Moraes, English lyrics by Gene Lees"
  composer = "Antônio Carlos Jobim"
  copyright = \markup \small "© 1958 Antônio Carlos Jobim and Vinícius de Moraes"
}

bossaRhythm = ##t

refrainEnglishLyrics = \lyricmode {
Go on your way with the cloud -- less blue sky a -- bove
May all your days be a won -- der -- ful song of love
O -- pen your arms _ and sing of all the hid -- den hopes you've ev -- er trea -- sured
And live out your life in peace

Where shall I look for the love to re -- place you
Some -- one to light up my life __
Some -- one with strange lit -- tle ways
Eyes like a blue au -- tumn haze
Some -- one with your laugh -- ing style __
And a smile that I know will keep haunt -- ing me end -- less -- ly
Some -- times in stars or the swift flight of sea -- birds
I catch a mo -- ment of you
That's why I walk all a -- lone
Search -- ing for some -- thing un -- known
Search -- ing for some -- thing or some -- one to light up my life
}

refrainPortugueseLyrics = \lyricmode {
Vai tu -- a vida
Teu ca -- mi -- nho_é de paz e_a -- mor
A tu -- a vida
É_u -- ma lin -- da can -- ção de_a -- mor
A -- bre teus bra -- ços e canta
A úl -- ti -- ma_es -- pe -- ran -- ça_A es -- pe -- ran -- ça di -- vina
De a -- mar em paz

Se to -- dos fos -- sem
I -- guais a vo -- cê _
Que ma -- ra -- vi -- lha, vi -- ver
U -- ma can -- ção pe -- lo ar
U -- ma mu -- lher a can -- tar
U -- ma ci -- da -- de_a can -- tar, a sor -- rir a can -- tar, a pe -- dir
A be -- le -- za de_a -- mar
Co -- mo_o sol, co -- mo_a flor, co -- mo_a luz
A -- mar sem men -- tir nem so -- frer

E -- xis -- ti -- ri -- a_a ver -- dade
Ver -- da -- de que nin -- guém vê
Se to -- dos fos -- sem no mun -- do i -- guais a vo -- cê
}

refrainChords = \chordmode {
  f1:9 f1:9 g1/f g1/f
  f1:9 f1:9 bf1:maj7 e1:m7.5-
  a2:13 a2:7.5+ d2:9 d2:7.9- g2:m7+ g2:m7 ef2:9.5+ ef2:9
  af1:maj7 a2:m7.5- d2:7.9- g2:maj7 gs2:dim7 a2:m7 c4:m7 f4:7.9-

  bf2:maj7 bf2:6 a2:m7.5- d2:7.9- g2:m9 gf2:7.11+ f2:m9 bf2:9
  ef1:maj d2:m7 g2:7.9- c1:m7 c1:m7
  
  f1:13 f1:9.5+ bf1:6 bf1:6
  e1:m7.5- a2:sus7 a2:7 d2:m7 g2:7 c2:m7 f2:7

  bf2:maj7 bf2:6 a2:m7.5- d2:7.9- g2:m9 gf2:7.11+ f2:m7 bf2:9
  ef1:maj d2:m7 g2:7.9- c1:m7 c1:m7
  
  g2:m g2:m7 e1:dim7 bf2:maj7 e2:m7.5- bf2/d gf2:7/df
  c1:9 c2:7/f f2:7.9- bf2
  \chordOpenParen{ b2:dim7 }
  c2:m7
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa [Frank Sinatra & Antonio Carlos Jobim 1969]" 4 = 100

  \sectStart "Intro"
  
  r8 a8 f8 g8 a2~ | a4 f8 g8 \tuplet 3/2 { a4 g4 f4 } | g4 d8 g8~ g2~ | g1 |
  \break
  r8 a8 f8 g8 a2~ | a4 f8 g8 \tuplet 3/2 { a4 g4 f4 } | g4 d8 g8~ g2~ | g1 |
  \break
  \tuplet 3/2 { a4 a4 a4 } \tuplet 3/2 { a4 a4 a4 } | a4. a8 a8 a8 gs8 a8 | c2~ c8 bf8 a8 g8 | f4 ef2 f4 |
  \break
  g2. ef8 c8 | ef2. d4 | b1 | r1 |
  

  \sect "A1"
  
  f'2. ef8 d8 | ef2. d8 c8 | d2. c8 bf8 | c4 c2. |
  \break
  g'2. f8 ef8 | f2. af8 g8 | ef1~ | ef1 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "B"
  
  \tuplet 3/2 { g4 a,4 g'4 } \tuplet 3/2 { g4 a,4 g'4 } | g1 |
  \tuplet 3/2 { g4 bf,4 g'4 } \tuplet 3/2 { g4 bf,4 g'4 } | g1 | 
  \break
  \tuplet 3/2 { a4 e4 a4 } \tuplet 3/2 { a4 e4 a4 } | a2~ a8 g4 a8 |
  \tuplet 3/2 { g4 f4 g4 } \tuplet 3/2 { g4 f4 g4 } | \tuplet 3/2 { g4 f4 g4 } \tuplet 3/2 { f4 ef4 d4 } |

  \sect "A2"

  f2. ef8 d8 | ef2. d8 c8 | d2. c8 bf8 | c4 c2. |
  \break
  g'2~ g8 f4 ef8 | f2~ f8 ef4 d8 | bf'1~ | bf2~ bf4. r8 |
  
  \sect "C"
  
  \tuplet 3/2 { bf4 c4 a4 } \tuplet 3/2 { bf4 c4 a4 } | bf1 |
  \tuplet 3/2 { bf4 c4 a4 } \tuplet 3/2 { bf4 c4 a4 } | bf1 |
  \break
  \tuplet 3/2 { bf4 c4 a4 } \tuplet 3/2 { bf4 c4 a4 } | \tuplet 3/2 { bf4 c4 a4 } \tuplet 3/2 { bf4 c4 a4 } |
  bf1 | r1 |

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
