%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Just You, Just Me"
  subtitle = \instrument
  poet = "Raymond Klages"
  composer = "Jesse Greer"
  copyright = "© 1929 Metro-Goldwyn Mayer Inc."
}

refrainLyrics = \lyricmode {
Just you, just me.
Let's find a co -- zy spot
To cud -- dle and coo.
Just us, just we.
I've missed an aw -- ful lot,
My trou -- ble is you.
Oh, gee.
What are your charms for?
What are my arms for?
Use your im -- ag -- i -- na -- tion.
Just you, just me.
I'll tie a lov -- er's knot
'Round won -- der -- ful you.
}

refrainChords = \chordmode {
  c1:6.9 a1:7 d1:m7 g1:7
  c2 c2:7 f2:maj7 bf2:7 c2:6/g g2:7 c2
  \chordInsideParens{ g2:7 }

  c1:6.9 a1:7 d1:m7 g1:7
  c2 c2:7 f2:maj7 bf2:7 c2:6/g g2:7 c1:6.9
  
  g1:m7 c1:9 f1:6 bf2:9.11+ bf2:7
  c1:6.9 e2:7 a2:m7 d1:13 g1:7

  c1:6.9 a1:7 d1:m7 g1:7
  c2 c2:7 f2:maj7 bf2:7 c2:6/g g2:7 c2:6
  \chordInsideParens{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key c \major
  \clef \whatClef
  \tempo "Fast" 4 = 200

  \mark \markup{ \box "A1" }
  
  r2 g2 | a1 | r2 f2 | g1 |
  \break
  r4 e4 e4 e4 | e4 g4 f2 | r4 e4 d8 c8 d4 | c1 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  r2 g'2 | a1 | r2 f2 | g1 |
  \break
  r4 e4 e4 e4 | e4 g4 f2 | r4 e4 d8 c8 d4 | c1 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r2 c'2 | d1 | r4 c4 a4 f4 | e2 d2 |
  \break
  r4 c'4 g4 e4 | d2 c2 | r4 b'4 a4 b4 | d4 b4 a4 af4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  r2 g2 | a1 | r2 f2 | g1 |
  \break
  r4 e4 e4 e4 | e4 g4 f2 | r4 e4 d8 c8 d4 | c2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
