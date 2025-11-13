%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I'm a Lonesome Fugitive"
  subtitle = \instrument
  poet = ""
  composer = "Liz Anderson and Casey Anderson"
  copyright = \markup \small { \now " " "© 1966 Acuff-Rose Music, Inc." }
}

refrainLyrics = \lyricmode {
I raised a lot of Cain back in my young -- er days
While ma -- ma used to pray my crops would fail
Now I'm a hunt -- ed fug -- i -- tive with just two ways
Out -- run the law or spend my life in jail.

I'd like to set -- tle down but they won't let me
A fug -- i -- tive must be a roll -- ing stone
Down ev -- 'ry road there's al -- ways one more cit -- y
I'm on the run the high -- way is my home.

(I'm)
}

refrainLyricsTwo = \lyricmode {
_ lone -- ly but I can't af -- ford the lux -- u -- ry
Of hav -- ing one I love to come a -- long
She'd on -- ly slow me down and they'd catch up with me
For he who trav -- els fast -- est goes a -- lone.
}

refrainChords = \chordmode {
  s4
  
  g1 c1 d1:7 d1:7
  c1 d1:7 g1 g1

  g1 c1 c1 c1
  c1 d1:7 g1 g1

  g1 c1 d1:7 d1:7
  c1 c1 d1:7 d1:7

  g1 c1 d1:7 d1:7
  c1 d1:7 g1 g1
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 4 d4 |
  \bar "||"

  \sectStart "Verse"
  
  d4. d8 d8 d4 e8~ | e4 g4 g4 g4 | g4 fs8 fs8~ fs2~ | fs4 r4 r4 d4 |
  \break
  c'8 c4 c8~ c4 c8 b8~ | b4 a4 g4 fs8 g8~ | g2. r4 | r2 r4 d4 |
  \break
  d4. d8 d8 d4. | e8 g4 g8~ g4 g4 | g4 fs8 fs8~ fs2~ | fs4 r4 r4 d4 | 
  \break
  c'4 c8 c8~ c4 c4 | b4 a4 g4 fs4 | g2. r4 | r2 r4 d'4 |
  
  \sect "Chorus"
  
  d4 b4 b8 g4 a8~ | a4. g8 g4 e4 | d8 fs4.~ fs2~ | fs4 r4 r4 r8 a8 |
  \break
  g8 g4 e8~ e4 d4 | c4. c8 e8 g4 fs8~ | fs1~ | fs4 r4 r4 d'4 |
  \break
  d4 b4 b4. a8 | a4 g4 g4 e8( d8) | d8 fs4.~ fs2~ | fs4 r4 r4 c4 |
  \break
  c4. e8 e4. e8 | d4 fs2 e8 fs8 | g1~ | g4 r4 r4
  \override Parentheses.font-size = #5
  \parenthesize d4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
