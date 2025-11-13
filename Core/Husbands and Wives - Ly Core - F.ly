%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Husbands and Wives"
  subtitle = \instrument
  poet = ""
  composer = "Roger Miller"
  copyright = \markup \small { \now " " "© 1966 Roger Miller Music, Inc." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Two bro -- ken hearts, lone -- ly, look -- in' like hous -- es where no -- bod -- y lives.
_ _ _ _ _ _ _ _ _ _ _ _
Two peo -- ple each hav -- in' so much pride in -- side, nei -- ther side for -- gives.
_ _ _ _ _ _ _ _ _ _ _ _
The an -- gry words spo -- ken in haste, such a waste of two lives.
_ _ _ _ _ _ _ _ _ _ _ _
It's my be -- lief pride is the chief cause in the de -- cline in the num -- ber of hus -- bands and wives.
_ _ _ A wo -- man and a man, a man and a wo -- man, some can, some can't, and some can't.
}

refrainChords = \chordmode {
  f2. f2./e d2.:m7 f2./c
  
  f2. f2./e d2.:m7 f2./c
  g2.:m c2.:7 g2.:m c2.:7
  g2.:m g2.:m7+/fs g2.:m7/f c2.:7/e
  f2. f2./e d2.:m7 f2./c

  c2.:m7 f2.:7 c2.:m7 f2.:7
  bf2. bf2.:6 bf2.:maj7 bf2.:6 
  c2.:7 g2.:m7 c2.:7 g2.:m7 c2.:7 c2.:7
  f2. f2./c
  
  f2. f2. bf2. c2.:7 f2. f2./e

  d2.:m7 f2./c g2.:7 g2.:7
  g2.:m7 g2.:m7 c2.:7 c2.:7
  
  f2./e d2.:m7 f2./c f2.
}

refrainKey = f

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Roger Miller 1966]" 4 = 115

  \sectStart "Intro"

  f8 <c' f a>8~ <c f a>8 f,8 <c' f a>4 |
  e,8 <c' f a>8~ <c f a>8 e,8 <c' f a>4 |
  d,8 <c' f a>8~ <c f a>8 d,8 <c' f a>4 |
  c,8 <c' f a>8~ <c f a>8 c,8 <c' f a>4 |

  \sect "A1"

  g4 a8 a8 a4 | g8 a8 a8 a8 a4 | g4 a4 r8 a8 | c2 f,8 f8 |
  \break
  g2. | 
  c,4 <c' f a>8 c,8 <c' f a>4 |
  g4 <d' g bf>8 g,8 <d' g bf>4 |
  c,4 <c' f a>8 c,8 <c' f a>4 |

  \sect "A2"

  a4 bf8 bf8 bf4 | a8 bf8 bf4 bf4 | a8 bf8 bf2 | a8 bf8 g4 r8 f8 |
  \break
  f8( g8 a2) | 
  e4 <c' f a>8 e,8 <c' f a>4 |
  d,4 <c' f a>8 d,8 <c' f a>4 |
  c,4 <c' f a>8 c,8 <c' f a>8 c8 |

  \sect "B"

  d4 ef8 ef8~ ef4 | ef4 d4 c8 ef8~ | ef2 ef8 ef8 | ef4 c4 a4 |
  \break
  g2. |
  bf4 <d g>8 bf8 <d g>4 |
  bf4 <d f a>8 bf8 <d f a>4 |
  bf4 <d g>8 bf8 <d g>4 |
  \bar "||"

  \xPageBreak

  \sectStart "C"

  e4 e4 e8 f8~ | f4 e4 d8 c8 | d4 c4 c8 c8 | c8 bf4. bf8 a8 |
  \break
  a8 g4. r8 c,8 | bf'4 a4 g4 | f2. \textToCodaLastTime | c4 d4 e8 c8 | 

  \sect "D"

  f8 f8 f8 f8 f8 f8 | f4 g8 g8 a8 a8 | bf4 bf2 |
  \break
  c4 c4 r8 bf8 | a2. | a2. |

  \sect "Solo"

  d2. | e2 f4 | d2. | e2 f4 | 
  \break
  g2. | f4 d4 bf4 | g2 g4 | c,4 d4 e4 \daCapo |

  \bar "||-|."

  \textCodaBreak

  e8 <c' f a>8~ <c f a>8 e,8 <c' f a>4 |
  d,8 <c' f a>8~ <c f a>8 d,8 <c' f a>4 |
  c,8 <c' f a>8~ <c f a>8 c,8 <c' f a>4 |
  f,2.\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
