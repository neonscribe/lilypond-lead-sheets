%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "San Antonio Rose"
  subtitle = \instrument
  poet = ""
  composer = "Bob Wills"
  copyright = \markup \small { \now " " "© 1940 Bourne Co." }
}

refrainLyrics = \lyricmode {
Deep with -- in my heart lies a mel -- o -- dy,
a song of old San An -- tone, __
where in dreams I live with a mem -- o -- ry,
be -- neath the stars all a -- lone. __

It was there I found be -- side the Al -- a -- mo,
en -- chant -- ment strange as the blue, up a -- bove.
A moon -- lit path that on -- ly she would know,
Still hears my bro -- ken song of love. __

Moon in all your splen -- dor, know on -- ly my heart,
call back my Rose, Rose of San An -- tone.
Lips so sweet and ten -- der, like pe -- tals fall -- ing a -- part,
speak once a -- gain of my love, my own,

Bro -- ken song, emp -- ty words I know
still live in my heart all a -- lone, __
for that moon -- lit pass by the Al -- a -- mo,
and Rose, my Rose of San An -- tone __
}

refrainChords = \chordmode {
  s2
  
  bf1 bf1:7 ef1 c1:7 f1:7 f1:7 bf1 bf1

  bf1 bf1:7 ef1 c1:7 f1:7 f1 bf1 bf1
  
  bf1 bf2 bf2:7 ef1 c1:7 f1:7 f1:7 bf1 bf1

  bf1 bf2 bf2:7 ef1 c1:7 f1:7 bf1 bf1 bf1
  
  f1 f1 c1:7 c1:9 c1:9 c1:9 f1 f1

  f1 f1 c1:7 c1:9 c1:9 c1:9 f1 f1:7 
  
  bf1 bf1:7 ef1 c1:7 f1:7 f1:7 bf1 bf1

  bf1 bf1:7 ef1 c1:7 f1:7 f1:7 bf1 bf1
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast [Bob Wills 1938]" 4 = 200

  \partial 2 f4 bf4 |
  \bar "||"

  \sectStart "A1"
  
  d2. bf4 | f2 d4 bf4 | g'2. ef4 | c2. g'4 | a2. g4 | ef2 c4 cs4 | d1~ | d2 f4 bf4 |
  \break
  d2. bf4 | f2 d4 bf4 | g'2. ef4 | c2. g'4 | a2. g4 | f2 g4 f4 | f4( bf2.~ | bf2) f4 ef4 |

  \sect "A2"
  
  d2. f4 | bf2. d,4 | ef4. f8 g4 ef4 | c2. g'4 | a2. g4 | f2 g4 f4 | d2 f4 bf4 | d,2. f4 |
  \break
  d2. f4 | bf2. d,4 | ef4. f8 g4 ef4 | c2. g'4 | a2. g4 | f4 f4 g4 f4 | f4( bf2.~ | bf1) |

  \sect "B"
  
  c4 c4 c4 b4 | bf4 a2 c4 | e2( d8) e8 ef8 d8~ | d1 | r4 e4 e4 ef4 | d2 e4 d4 | c2. a4 | f1 |
  \break
  c'4 c4 c4 b4 | bf4 a2 c4 | e4 e4 d8 e8 ef8 d8~ | d1 | r4 e4 e4 ef4 | d2 e4 d4 | c2. d4 | ef1 |

  \sect "A3"
  
  d2. bf4 | f2 d4 bf4 | g'2. ef4 | c2. g'4 | a2 g4 f4 | ef2 c4 cs4 | d1~ | d2 f4 bf4 |
  \break
  d2. bf4 | f2 d4 bf4 | g'2. ef4 | c2. g'4 | a2. g4 | f4 f4 g4 f4 | f4( bf2.~ | bf2.) r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

%{
Deep within my heart lies a melody
A song of old San Antone
Where in dreams I live with a memory
Beneath the stars all alone

It was there I found beside the Alamo
Enchantment strange as the blue, up above
A moonlit path that only she would know
Still hears my broken song of love

Moon in all your splendor knows only my heart
Call back my Rose, Rose of San Antone
Lips so sweet and tender like petals fallin' apart
Speak once again of my love, my own

Broken song, empty words I know
Still live in my heart all alone
For that moonlit pass by the Alamo
And Rose, my Rose of San Antone
%}
