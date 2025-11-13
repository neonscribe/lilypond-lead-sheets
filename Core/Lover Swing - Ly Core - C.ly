%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Lover (4/4)"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small { \now " " "© 1933 Famous Music Corp." }
}

refrainLyrics = \lyricmode {
Lov -- er, __ when I'm near you __ and I hear you __ speak my name __
soft -- ly __ in my ear you __ breathe a flame. __

Lov -- er, when we're danc -- ing __ keep on glanc -- ing __ in my eyes, __
'til Love's own en -- tranc -- ing __ mu -- sic dies. __

All of my fu -- ture is in you. __
Your ev -- 'ry plan I de -- sign __
Pro -- mise you'll al -- ways con -- tin -- ue __ to be mine. __

Lov -- er, __ please be ten -- der, __ when your ten -- der __ fears de -- part, __
Lov -- er, __ I sur -- ren -- der __ to my heart. __
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 fs1:m7 b1:7 f1:m7 bf1:7 e1:m7 a1:7
  ef1:m7 af1:7 d1:m7 g1:7
  
  e1:m7 a1:7 d1:m7 g1:7
  
  c1:maj7 c1:maj7 fs1:m7 b1:7 f1:m7 bf1:7 e1:m7 a1:7
  ef1:m7 af1:7 d1:m7 g1:7
  
  c1:maj7 c1:maj7 fs1:m7.5- b1:7.9+
  
  e1:maj7 f1:dim7 fs1:m7 b1:7 e1:maj7 f1:dim7 fs1:m7 b1:7
  g1:maj7 gs1:dim7 a1:m7 d1:7 e1:m7 a1:7.9- d1:m7 g1:7
  
  c1:maj7 c1:maj7 fs1:m7 b1:7 f1:m7 bf1:7 e1:m7 a1:7
  ef1:7 af1:7 d1:m7 g1:7 c1:6
  \chordOpenParen{ a1:m7 }
  d1:m7
  \chordCloseParen{ g1:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up [Frank Sinatra 1950]" 4 = 250

  \sectStart "A1"

  c'2. c4~ | c2 b4 c4 | b2. b4~ | b2 bf4 b4 |
  \break
  bf2. bf4~ | bf2 a4 bf4 | a1~ | a2. r4 |
  \break
  af2. af4~ | af2 g4 af4 | g2. g4~ | g2 a4 b4 |
  \break
  g1~ | g1 | r1 | r1 |

  \sect "A2"

  c2. c4~ | c2 b4 c4 | b2. b4~ | b2 bf4 b4 |
  \break
  bf2. bf4~ | bf2 a4 bf4 | a1~ | a2. r4 |
  \break
  af2. af4~ | af2 g4 af4 | g2. g4~ | g2 a4 b4 |
  \break
  g1~ | g1 | r1 | r1 |
  \bar "||"

  \xPageBreak

  \sectNoBarNoBreak "B"
  
  gs2 a4 gs4 | a2 gs4 a4 | b2 b2~ | b1 |
  \break
  gs2 a4 gs4 | a2 gs4 a4 | b1~ | b1 |
  \break
  b2 c4 b4 | c2 b4 c4 | d2 d2~ | d2 ds4 e4 |
  \break
  g,1~ | g1 | r1 | r1 |
  
  \sect "A3"
  
  c2. c4~ | c2 b4 c4 | b2. b4~ | b2 bf4 b4 |
  \break
  bf2. bf4~ | bf2 a4 bf4 | a1~ | a1 |
  \break
  af2. af4~ | af2 g4 af4 | g2. g4~ | g2 d'4 e4 |
  \break
  c1~ | c1~ | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
