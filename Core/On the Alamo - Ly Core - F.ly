%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "On the Alamo"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Isham Jones"
  copyright = \markup \small "© 1922 Tell Taylor Inc."
}

refrainLyrics = \lyricmode {
Where the moon swings low, __
On the Al -- a -- mo, __
In a gar -- den fair where ros -- es grow. __
In the ten -- der light __ of the sum -- mer night, __
I can hear her wan -- der to and fro. __

For she said I'll wait __ by the gar -- den gate, __
On the night I said “I love you so.” __

And in all my dreams it seems I go __
Where the moon swings low, __
On the Al -- a -- mo. __
}

refrainHLChords = \chordmode {
  s2.
  
  f1:maj7 f2:maj7 d2:m7 g1:9 g1:9
  g1:m7 c1:7 a2:m7 d2:7.9- g2:m7 c2:7

  f1:maj7 f1:maj7 a1:m7 a2:m7 g2:m7
  c2:maj7 a2:m7 d2:m7 g2:7 c1:sus7 c1:7

  f1:maj7 f2:maj7 d2:m7 g1:9 g1:9
  g1:m7 c1:7 f1:maj7 f1:maj7

  d1:m7 d1:m7/c b1:dim7 b1:dim7
  g1:m9 c1:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainFirehouseChords = \chordmode {
  r2.
  
  f2:maj7 g2:m7 f1 g2:7 d2:m7 bf2:m g2:7
  g1:m7 c1:7 a2:m7 af2:7 g2:m7 c2:7
  
  f2:maj7 g2:m7 f2 e2:7 a1:m7 d2:7 d2:m7
  g1:7 g1:7 g1:m7 c4:7 r2.

  f2:maj7 g2:m7 f1 g2:7 d2:m7 bf2:m g2:7
  g1:m7 c1:7 a2:m7 af2:7 g2:m7 a2:7
  
  d1:m f1 b1:dim7 b1:dim7
  g1:7 g2:m7 c2:7 f2 bf2:7 f4 r2.
}

refrainChords =
$(if (and (defined? 'firehouseChords) firehouseChords)
  refrainFirehouseChords
  refrainHLChords)

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Isham Jones 1922]" 4 = 180
  
  \partial 2. f8 e8 g4 f4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  a1~ | a4 f8 e8 g4 f4 | a1~ | a4 g8 fs8 a4 g4 |
  \break
  d'2. d4 | e2. e4 | c1~ | c4 f,8 e8 g4 f4 |

  \sect "B"
  
  a1~ | a4 c8 b8 d4 c4 | e1~ | e4 e8 ds8 f4 e4 |
  \break
  g2. e4 | d2. e4 | c1~ | c4 f,8 e8 g4 f4 |

  \sect "A2"
  
  a1~ | a4 f8 e8 g4 f4 | a1~ | a4 g8 fs8 a4 g4 |
  \break
  d'2. d4 | e2. e4 | c1~ | c4 d8 e8 f4 g4 |

  \sect "C"
  
  a2. a4 | f2. f4 | d1~ | d4 f,8 e8 g4 f4 |
  \break
  a1 | a2. a4 | a8 g8 f2.~ | f4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
