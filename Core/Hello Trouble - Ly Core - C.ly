%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Hello Trouble"
  subtitle = \instrument
  poet = ""
  composer = "Eddie McDufff and Orville Couch"
  copyright = \markup \small "© 1962 Tyler Publishing Co."
}

refrainLyrics = \lyricmode {
Woke up this morn -- in', hap -- py as could be. __
Looked out my win -- dow __ and what did I see
a -- com -- in' up my side -- walk just as plain as day?
Well, here comes trou -- ble that I nev -- er thought I'd see when you went a -- way. __

Hel -- lo, trou -- ble, come on in.
You talk a -- bout heart -- aches, __ where'n the world you been? __
I ain't had the mid -- 'ries since you been gone.
Hel -- lo trou -- ble, trou -- ble, trou -- ble, wel -- come home.

(We'll make a pot of)

home, Hel -- lo trou -- ble, trou -- ble, trou -- ble, wel -- come home.
}

refrainChords = \chordmode {
  s2.
  
  c1 c2 f2 c1 c1
  g1 g1 c1 c1

  c1 c2 f2 c1 c1
  c1 g1 c1 c4 r2.

  c1 c2 f2 c1 c1
  g1 g1 c1 c1

  c1 c2 f2 c1 c1
  f1 g1 c1 c4 r2.

  c1 c2 f2 c1 c1
  g1 g1 c1 c1

  c1 c2 f2 c1 c1
  c1 g1 c1 c4 r2.
  
  c1 c4 r2. f1 g1 c1
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast [The Desert Rose Band 1988]" 4 = 222
  
  \partial 2. e'4 d4 c4 |
  \bar "||"

  \sectStart "Verse"
  \segnoSign
  
  e,8 g4. r2 | r4 g8 g8 a4 c8 g8~ | g1 | r4 c8 c8~ c8 d4. |
  \break
  d4. d8~ d2 | r8 g,8 g4 a8 c4. | c1 | r8 c8 d8 c8 d8 c4. |
  \break
  e,4 g4 r2 | r4 g8 g8 a8 c4. | g1 | r4 g4 g8 a4 c8~ |
  \break
  c8 c8 c8 c8 c8 c8 c8 c8 | d4 g,8 g8 a4 g8 c8~ | c1 | r2 e8 c,4. |

  \sect "Chorus"
  
  e8 g4. r2 | r2 a8 c4. | g2 r2 | r4 r8 g8 c8 a8 c4 |
  \break
  d4. d8~ d2 | r4 g,8 g8 a4 g8 c8~ | c1 | r4 d8 c8 d4 c8 e,8~ |
  \break
  e8 g4. r2 | r4 g4 a8 c4. | g1 | r2 c8 a4. |
  \break
  a8 a4. a8 a4. | b8 b4. d4 b4 \textToCoda | c1 | r1 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "Solos"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  e8 e8~ e8 c8 c8 
  \endParenthesis \parenthesize c,8 \dalSegno |
  \bar "||-||"

  
  \textCodaBreak

  e'1 | r2 c8 a4. |
  a8 a4. a8 a4. | b8 b4. d4 b4 | c1\fermata |

  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 2 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
    \vspace #2
    \line { \large { We'll make a pot of coffee and you can rest your shoes. } }
    \line { \large { You can tell me them sweet lies and I'll listen to you. } }
    \line { \large { For I'm just a little part of, of the life you've lived. } }
    \line { \large { But I'd rather have a little bit of trouble than to never know the love you give. } }
  }
}
