%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "singerGender": [ "female", "male" ] } }

%}

songID = "2026-06-01T22:16:25.719385Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Baby, Won't You Please Come Home"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Chas. Warfield and Clarence Williams"
headerCopyright = "© 1923 Clarence Williams Music Pub. Co., Inc."

refrainFemaleSingerLyrics = \lyricmode {
I've got the blues, I feel so lone -- ly,
I'd give the world if I could on -- ly make you un -- der -- stand.
It sure -- ly would be grand.
I'm goin' to tel -- e -- graph you, ba -- by, ask you won't you please come home, __
'cause when you're gone __ I'm all for -- lorn, __ I wor -- ry all day long.

Ba -- by, won't you please come home, 'cause your mom -- ma's all a -- lone.
I have tried in vain, nev -- er no more to call your name.
When you left, you broke my heart, 'cause I nev -- er thought we'd part.
Ev -- 'ry hour in the day, you will hear me say, ba -- by won't you please come home.
home, Dad -- dy needs mam -- ma, ba -- by won't you please come home. __
}

refrainMaleSingerLyrics = \lyricmode {
I've got the blues, I feel so lone -- ly,
I'd give the world if I could on -- ly make you un -- der -- stand.
It sure -- ly would be grand.
I'm goin' to tel -- e -- graph you, ba -- by, ask you won't you please come home, __
'cause when you're gone __ I'm all for -- lorn, __ I wor -- ry all day long.

Ba -- by, won't you please come home, 'cause your dad -- dy's all a -- lone.
I have tried in vain, nev -- er no more to call your name.
When you left, you broke my heart, 'cause I nev -- er thought we'd part.
Ev -- 'ry hour in the day, you will hear me say, ba -- by won't you please come home.
home, Dad -- dy needs ba -- by, ba -- by won't you please come home. __
}

refrainLyrics =
#(if (and (defined? 'singerGender)
          (equal? singerGender "male"))
  refrainMaleSingerLyrics
  refrainFemaleSingerLyrics)

refrainChords = \chordmode {
  g2 bf2:dim7 a2:m d2:7 g2 bf2:dim7 a2:m d2:7
  b1:7 e1:m a1:7 d1:7

  g2 bf2:dim7 a2:m d2:7 g1:7 c2:6 e2:7
  a1:7 a1:7 a2:7 a2:dim d2.:7 d4:aug

  g2 b2:7 e1:7 a1:7 a1:7
  d2:7 b2:7 e1:m a1:7 d1:7

  g2 b2:7 e1:7 c1:7 b1:7
  c2 cs2:dim7 g4 b4:7 e2:7 a2:7 d2:7 g2 \chordInsideParens{ d2:7 }

  g4 b4:7 e2:7 a2:7 d2:7 g1:6
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Slow Blues [Bessie Smith 1923]" 80

  \sectNoBarNoBreak "Verse"

  r8 g8 a8 g8 fs4 e4 | f8 fs4 b8~ b4 a4 | r8 g8 a8 g8 fs4 e4 | f8 fs4 b8~ b4 a4 |
  \break
  b4 b4 b8 b4. | b1 | r8 g8 fs8 f8 e8 g4. | a2. r4 |
  \break
  r8 g8 a8 g8 fs4 e4 | f8 fs4 b8~ b4 a4 | g8 a8 b8 g8 a8 b4 a8~ | a2. b4 |
  \break
  a8 b4 a8~ a4 e4 | a8 b4 a8~ a4. e8 | a4 a4 a8 a4. | a2. r4 |

  \sectPageBreak "Refrain A"

  b8 as8 b8 as8 b4 fs4 | b1 | b8 as8 b8 as8 b4 fs4 | fs8( e4.~ e2) |
  \break
  f8 fs4 b8~ b4 a4 | g2. \tuplet 3/2 { e8 fs8 g8 } | a4 e4 a8 a4 a8~ | a1 |

  \sect "Refrain B"

  b8 as8 b8 as8 b4 fs4 | fs8( e4.~ e2) | a8 g8 a8 g8 a4 bf4 | b2. fs8 g8 |
  \break
  a8 gs8 a8 bf8~ bf4 a8 g8 | b4 b8 b8~ b2 | b8 as8 b8 as8 b8 d,4. \textToCodaLastTime | g2. r4 |


  \bar "||-|."

  \textCodaBreak

  g4 \tuplet 3/2 { a8 as8 b8 } fs8 e4. | a8 b8 c8 cs8 d4 b8 g8~ | g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
