%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "You're Driving Me Crazy"
  subtitle = \instrument
  poet = ""
  composer = "Walter Donaldson"
  copyright = \markup \small "© 1930 Donaldson Publishing Co."
}

refrainLyrics = \lyricmode {
You, __ you're driv -- ing me cra -- zy. __
What did I do? __ What did I do? __
My tears for you, __ make ev -- 'ry -- thing ha -- zy, __
cloud -- ing the skies __ of blue. __

How true were the friends who were near me
to cheer me, be -- lieve me, they knew. __
But you, were the kind who would hurt me,
de -- sert me, when I need -- ed you. __

Yes you, __ you're driv -- ing me cra -- zy. __
What did I do __ to you? __
}

refrainChords = \chordmode {
  f1:maj7 a2:m7 d2:7 g1:m7 c1:7
  g1:7 c1:7 f1:6 g2:m7 c2:7

  f1:maj7 a2:m7 d2:7 g1:m7 c1:7
  g1:7 c1:7 f1:6 b2:m7.5- e2:7
  
  a2:maj7 fs2:m7 b2:m7 e2:7 a2:maj7 fs2:m7 b2:m7 e2:7
  a2:maj7 fs2:m7 b2:m7 e2:7 a2:7 d2:7 g2:m7 c2:7

  f1:maj7 a2:m7 d2:7 g1:m7 c1:7
  g1:7 c1:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \sectStart "A1"
  
  c'1~ | c4 d4 d8 c8 d4 | d2 c2~ | c2 bf8 a8 g8 d8~ |
  \break
  d1~ | d2 bf'8 a8 g8 d8~ | d1~ | d4 a'4 bf4 b4 |
  
  \sect "A2"

  c1~ | c4 d4 d8 c8 d4 | d2 c2~ | c2 bf8 a8 g8 d8~ |
  \break
  d1 | e1 | f1~ | f2. e'4 |
  
  \sect "B"
  
  e2. e,8 f8 | fs8 fs4 g8 gs8 gs4 g8 | fs8 fs4 g8 gs8 g8 gs8 fs8~ | fs2. e'4 |
  \break
  e2. e,8 f8 | fs8 fs4 g8 gs8 gs4 e8 | a8 a4 gs8 a8 gs8 a8 c8~ | c2 c2 |
  
  \sect "A3"

  c1~ | c4 d4 d8 c8 d4 | d2 c2~ | c2 b8 a8 g8 d8~ |
  \break
  d1 | e1 | f1~ | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
