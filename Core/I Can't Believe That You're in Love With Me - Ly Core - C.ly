%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Can't Believe That You're in Love With Me"
  subtitle = \instrument
  poet = ""
  composer = "Clarence Gaskill and Jimmy McHugh"
  copyright = \markup \small "© 1926 Mills Music, Inc."
}

refrainLyrics = \lyricmode {
Your eyes of blue, your kiss -- es, too.
I nev -- er knew what they could do.
I can't be -- lieve that you're in love with me. __
You're tell -- ing ev -- 'ry -- one I know I'm on your mind each place you go.
They can't be -- lieve that you're in love with me. __
I have al -- ways placed you far a -- bove me.
I just can't im -- ag -- ine that you love me.
And af -- ter all is said and done, to think that I'm the luck -- y one,
I can't be -- lieve that you're in love with me. __
}

refrainChords = \chordmode {
  s4

  f1:6 bf1:7 c1:maj7 d1:7
  g1:7 g1:7 c1:maj7 g2:m7 c2:7

  f1:6 bf1:7 c1:maj7 d1:7
  g1:7 g1:7 c2:6 f2:7 c1:6
  
  e1:7 e1:7 a1:7 a1:7 d1:7 d1:7 g1:7 g2:7 c2:7

  f1:6 bf1:7 c1:maj7 d1:7
  g1:7 g1:7 c1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra 1960]" 4 = 144

  \partial 4 c'4 |

  \sectNoBreak "A1"
  
  d4. c8 a4. c8 | d4. c8 af4. c8 | d4. c8 g4. e'8 | d4. c8 a4. e8 |
  \break
  g4. e8 d4. e8 | g4. e8 d4. e8 | g1~ | g2 r4 c4 |
  
  \sect "A2"
  
  d4. c8 a4. c8 | d4. c8 af4. c8 | d4. c8 g4. e'8 | d4. c8 a4. e8 |
  \break
  g4. e8 d4. e8 | g4. e8 g4. a8 | c1~ | c2 r2 |
  
  \sect "B"
  
  e4. cs8 b4. cs8 | e4. cs8 b4. e,8 | b'1 | a1 |
  \break
  d4. b8 a4. b8 | d4. b8 a4. d,8 | a'1 | g2 r4 c4 |

  \sect "A3"

  d4. c8 a4. c8 | d4. c8 af4. c8 | d4. c8 g4. e'8 | d4. c8 a4. e8 |
  \break
  g4. e8 d4. e8 | g4. e8 g4. a8 | c1~ | c2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
