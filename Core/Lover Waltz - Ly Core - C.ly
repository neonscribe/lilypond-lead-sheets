%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Lover (3/4)"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small "© 1933 Famous Music Corp."
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
  c2.:maj7 c2.:maj7 fs2.:m7 b2.:7 f2.:m7 bf2.:7 e2.:m7 a2.:7
  ef2.:7 af2.:7 d2.:m7 g2.:7
  
  e2.:m7 a2.:7 d2.:m7 g2.:7
  
  c2.:maj7 c2.:maj7 fs2.:m7 b2.:7 f2.:m7 bf2.:7 e2.:m7 a2.:7
  ef2.:7 af2.:7 d2.:m7 g2.:7
  
  c2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7
  
  e2.:maj7 f2.:dim7 fs2.:m7 b2.:7 e2.:maj7 f2.:dim7 fs2.:m7 b2.:7
  g2.:maj7 gs2.:dim7 a2.:m7 d2.:7 e2.:m7 a2.:7 d2.:m7 g2.:7
  
  c2.:maj7 c2.:maj7 fs2.:m7 b2.:7 f2.:m7 bf2.:7 e2.:m7 a2.:7
  ef2.:7 af2.:7 d2.:m7 g2.:7 c2.:6
  \chordOpenParen{ a2.:m7 }
  d2.:m7
  \chordCloseParen{ g2.:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Margaret Whiting 1946]" 4 = 135

  \sectStart "A1"

  c'4 r4 c4~ | c4 b4. c8 | b4 r4 b4~ | b4 bf4. b8 |
  \break
  bf4 r4 bf4~ | bf4 a4. bf8 | a2.~ | a2 r4 |
  \break
  af4 r4 af4~ | af4 g4. af8 | g4 r4 g4~ | g4 a4 b4 |
  \break
  g2.~ | g2. | R2.*1 | R2.*1 |

  \sect "A2"

  c4 r4 c4~ | c4 b4. c8 | b4 r4 b4~ | b4 bf4. b8 |
  \break
  bf4 r4 bf4~ | bf4 a4. bf8 | a2.~ | a2 r4 |
  \break
  af4 r4 af4~ | af4 g4. af8 | g4 r4 g4~ | g4 a4 b4 |
  \break
  g2.~ | g2. | R2.*1 | R2.*1 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "B"
  
  gs4 a4 gs4 | a4 gs4 a4 | b4 r4 b4~ | b2. |
  \break
  gs4 a4 gs4 | a4 gs4 a4 | b2.~ | b2 r4 |
  \break
  b4 c4 b4 | c4 b4 c4 | d4 r4 d4~ | d4 ds4 e4 |
  \break
  g,2.~ | g2. | R2.*1 | R2.*1 |
  
  \sect "A3"
  
  c4 r4 c4~ | c4 b4. c8 | b4 r4 b4~ | b4 bf4. b8 |
  \break
  bf4 r4 bf4~ | bf4 a4. bf8 | a2.~ | a2 r4 |
  \break
  af4 r4 af4~ | af4 g4. af8 | g4 r4 g4~ | g4 d'4 e4 |
  \break
  c2.~ | c2. | R2.*1 | R2.*1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
