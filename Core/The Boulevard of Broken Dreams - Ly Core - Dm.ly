%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "The Boulevard of Broken Dreams"
  subtitle = \instrument
  poet = "Al Dubin"
  composer = "Harry Warren"
  copyright = \markup \small { \now " " "© 1934 Warner Bros. Inc." }
}

refrainLyrics = \lyricmode {
I walk a -- long the street of sor -- row. __
The bou -- le -- vard of bro -- ken dreams. __
Where gi -- go -- lo __ and gi -- go -- lette __
can take a kiss __ with -- out re -- gret __
so they for -- get their bro -- ken dreams. __
You laugh to -- night and cry to -- mor -- row __
when you be -- hold your shat -- tered schemes. __
And gi -- go -- lo __ and gi -- go -- lette __
wake up to find their eyes are wet __
with tears that tell of bro -- ken dreams. __
Here is where you'll al -- ways find me, __
al -- ways walk -- ing up and down. __
But I left my soul be -- hind me __
in an old ca -- the -- dral town. __
The joy that you find here you bor -- row. __
You can -- not keep it long it seems. __
But gi -- go -- lo __ and gi -- go -- lette __
still sing a song and dance a -- long __
the bou -- le -- vard of bro -- ken dreams. __
}

refrainChords = \chordmode {
  s1
  
  d2:m g2:m6/e d2:m/f d2:m e1:m7.5- a1:7
  e1:m7.5- a1:7 d2:m g2:m d2:m a2:7

  d2:m g2:m6/e d2:m/f d2:m e1:m7.5- a1:7
  e1:m7.5- a1:7 d2:m g2:m d2:m d2:7
  
  a1:m7.5- d1:7.9- g1:m7 c1:7
  g1:m7 c1:7 f1:maj7 a1:7

  d2:m g2:m6/e d2:m/f d2:m e1:m7.5- a1:7
  e1:m7.5- a1:7 d2:m g2:m d2:m
  \chordInsideParens{ a2:7 }
}

refrainKey = d

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Bolero [Constance Bennett 1934]" 4 = 118
  
  r8 a8 gs8 a8 bf8 a8 gs8 a8 |

  \sectNoBreak "A1"
  
  d4 d2.~ | d8 a8 gs8 a8 bf8 a8 g8 f8 | e1~ |
  e8 g8 \tuplet 3/2 { fs8 g8 a8~ } a8. g16 \tuplet 3/2 { fs8 g8 e8~ } |
  e8 g8 \tuplet 3/2 { fs8 g8 a8~ } a8. g16 \tuplet 3/2 { fs8 g8 e8~ } |
  e8 g8 fs8 g8 a8 g8 f8 e8 | f1~ | f8 a8 gs8 a8 bf8 a8 gs8 a8 |
  
  \sect "A2"
  
  d4 d2.~ | d8 a8 gs8 a8 bf8 a8 g8 f8 | e1~ |
  e8 g8 \tuplet 3/2 { fs8 g8 a8~ } a8. g16 \tuplet 3/2 { fs8 g8 e8~ } |
  e8 g8 \tuplet 3/2 { fs8 g8 a8~ } a8. g16 \tuplet 3/2 { fs8 g8 e8~ } |
  e8 g8 fs8 g8 a8 g8 f8 e8 | d1~ | d8 r8 d8 e8 fs8 g8 a8 bf8 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "B"
  
  c2 c2~ | c4 a8 bf8 c8 c8 bf8 a8 | bf1~ | bf4 c,8 d8 e8 f8 g8 a8 |
  bf2 bf2~ | bf4 g8 a8 bf8 bf8 a8 gs8 | a1~ | a8 a8 gs8 a8 bf8 a8 gs8 a8 |

  \sect "A3"

  d4 d2.~ | d8 a8 gs8 a8 bf8 a8 g8 f8 | e1~ |
  e8 g8 \tuplet 3/2 { fs8 g8 a8~ } a8. g16 \tuplet 3/2 { fs8 g8 e8~ } |
  e8 g8 \tuplet 3/2 { fs8 g8 a8~ } a8. g16 \tuplet 3/2 { fs8 g8 e8~ } |
  e8 g8 fs8 g8 a8 g8 f8 e8 | d1~ | d2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
