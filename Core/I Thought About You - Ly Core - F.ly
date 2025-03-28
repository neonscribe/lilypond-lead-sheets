%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "I Thought About You"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Jimmy Van Heusen"
  copyright = \markup \small "© 1939 Lewis Music Publishing Co."
}

verseLyrics = \lyricmode {
  Seems that I read, or some -- bod -- y said
  that out of sight is out of mind.
  May -- be that's so, but I tried to go
  and leave you be -- hind. What did I find?
}

verseChords = \chordmode {
  f1:6 a2:sus7 a2:7.5+ a2:sus7 a2:7.5+
  d2:m c2:7.5+ f1:6
  a2 a4:6 bf4:dim7 b2:m7 e2:9 g2:m7 c2:13
}

verseKey = f

verseMelody = \relative g'' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 119

  \xTextMark \markup{ "Verse" }
  
  d8 c8 a8 f2 g8 | a8 bf8 a8 a2 f8 |
  a8 bf8 a8 bf8 a4 e'8 d8~ | d1 |
  d8 c8 a8 f2 f8 | e8 fs8 a8 cs4. d4 |
  e8 e8 e8 cs8~ cs2 | c8 c8 c8 a8~ a2 |

  \bar "||"
}

refrainLyrics = \lyricmode {
I took a trip on a train __
And I thought a -- bout you. __
I passed a shad -- ow -- y lane __
And I thought a -- bout you, __
Two or three cars parked un -- der the stars,
a wind -- ing stream, __
Moon shin -- ing down on some lit -- tle town
And with each beam, __ same old dream. __
At ev -- 'ry stop that we made, __
Oh, I thought a -- bout you, __
But when I pulled down the shade, __
then I real -- ly felt blue, __
I peeked through the crack
and looked at the track,
the one go -- ing back to you,
And what did I do? __ I thought a -- bout you. __
}

refrainChords = \chordmode {
  f2:6 bf2:7 a2:7 d2:7 g2:7 af2:7 g1:7
  g1:m7 e2:m7.5- a2:7.9- d2:m7 df2:7 c2:m7 f2:7
  
  bf1:maj7 bf2:m7 ef2:7 f2:maj7 c2:7 f1:maj7
  b2:m7.5- e2:7.9- b2:m7.5- e2:7.9- a2:m7 d2:7 g2:m7 c2:7
 
  f2:6 bf2:7 a2:7 d2:7 g2:7 af2:7 g1:7
  g1:m7 e2:m7.5- a2:7.9- d2:m7 df2:7 c2:m7 f2:7
  
  bf1:maj7 bf2:m7 ef2:7 f2:maj7 d2:m7 b2:m7.5- bf2:7.11+
  a2:m7 d2:7 g2:m7 c2:7 f2:6
  d2:7.9-
  g2:m7
  c2:7
  
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad"

  \xTextMark \markup{ "Refrain" \bold \box "A1" }
  \set Score.currentBarNumber = #1
  
  r8 f8 a8 c8 e8 ef8 d8 a8~ | a2 bf4 a4 | a8 f8 f8 f8~ f2~ | f2. r4 |
  r8 d8 f8 a8 c8 b8 bf8 a8~ | a2 g4 a4 | g8 gf8 f8 f8~ f2~ | f2. r4 |

  \sect "B"
  
  d'8 c8 d8 c4. bf4 | df8 c8 df8 c2 bf8 | a4 c4 c2~ | c1 |
  e8 f8 e8 c4. b4 | e8 f8 e8 c4. b4 | a4 c8 c8~ c2 | g4 a8 a8~ a2 |
  
  \sect "A2"

  r8 f8 a8 c8 e8 ef8 d8 a8~ | a2 bf4 a4 | a8 f8 f8 f8~ f2~ | f2. r4 |
  r8 d8 f8 a8 c8 b8 bf8 a8~ | a2 g4 a4 | g8 gf8 f8 f8~ f2~ | f2. r8 f8 |

  \sect "C"

  d'8 c8 d8 c4. bf4 | df8 c8 df8 c2 bf8 | a8 c8 d8 f4. g4 | e2. d4 |
  c8 c8 c8 c8~ c2 \textToCodaLastTime | r4 f,4 a8 a8 a8 f8~ | f1~ | f2. r4 |

  \bar "|."
}

codaLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
  What did I do?
  \skip 1 \skip 1 \skip 1 \skip 1
  What did I do?
  I thought a -- bout you. __
}

codaChords = \chordmode {
  a2:m7 d2:7 bf2:m7 ef2:7 bf2:m7 ef2:7 a2:m7 d2:7 g4:m7 r2. f1:6 f1:6
}

codaKey = f

codaMelody = \relative f'' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  \textCoda
  c8 c8 c8 c8~ c2 | df8 df8 df8 df8~ df2 | df8 df8 df8 df8~ df2 |
  \break
  c8 c8 c8 c8~ c2 | r4 f,4 a8 f8 a4 | f1~ | f2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\pageBreak

\include "../Include/refrain.ily"

\markup {
  % Leave a gap before the coda
  \vspace #2
}

\include "../Include/coda.ily"
