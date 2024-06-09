%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "The Shadow of Your Smile"
  subtitle = \instrument
  poet = "Paul Francis Webster"
  composer = "Johnny Mandel"
  copyright = "© 1965 Miller Music Corp."
}

refrainLyrics = \lyricmode {
The sha -- dow of your smile when you are gone __
will col -- or all my dreams and light the dawn. __
Look in -- to my eyes, my love, and see __
all the love -- ly things you are to me. __
Our wist -- ful lit -- tle star was far too high, __
a tear -- drop kissed your lips and so did I. __
Now when I re -- mem -- ber Spring, __
all the joy that love can bring, __
I will be re -- mem -- ber -- ing __
the sha -- dow of your smile.
}

refrainChords = \chordmode {
  r8*5

  fs1:m7 b1:7 e1:m7 a1:9
  a1:m7 d1:7 g1:maj7 c1:maj7

  fs1:m7.5- b1:7 e1:m7 e1:m7/d
  cs1:m7.5- fs1:7 fs1:m7.5- b4:7 r2.
  
  fs1:m7 b1:7 e1:m7 a1:9
  a1:m7 d2:7 c2:dim7 b1:m7.5- e1:7.9-
  
  a1:m7 c2:m7 f2:9 b2:m7 f2:9 e1:7
  a2:9 ef2:9 d2.:sus9 d4:7.9- g1:6 g4:6 r2.
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow Bossa" 4 = 103

  \partial 8*5 b,8 e8 fs8 g8 b8 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  cs2. fs4 | ds2. c4 | b1~ | b4. b,8 e8 fs8 g8 b8 |
  \break
  e,2. a4 | fs2. d4 | b'1~ | b2 c8 b8 a8 g8 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  a2. c,4 | b2. a'4 | g1~ | g2 b8 a8 g8 fs8 |
  \break
  g2. b,4 | as2. g'4 | fs1~ | fs4. b,8 e8 fs8 g8 b8 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  cs,2. fs4 | ds2. c4 | b1~ | b4. b8 e8 fs8 g8 b8 |
  \break
  e,2. c'4 | a2. fs4 | d'1~ | d2 e8 d8 c8 b8 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }
  
  c4. e,8 c'2~ | c2 d8 c8 b8 a8 | b4. d,8 b'2~ | b2 c8 b8 a8 gs8 |
  \break
  a4. cs,8 a'2~ | a8 cs,8 b'8 a8 g4 fs4 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
