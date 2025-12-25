%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Long Ago (and Far Away)"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "Jerome Kern"
  copyright = \markup \small { \now " " "© 1944 T.B. Harms Co." }
}

refrainLyrics = \lyricmode {
Long a -- go and far a -- way, I dreamed a dream one day
And now that dream is here be -- side me.
Long the skies were o -- ver -- cast, But now the clouds have passed:
You're here at last! __
Chills run up and down my spine, A -- lad -- din's lamp is mine,
The dream I dreamed was not de -- nied me.
Just one look and then I knew __
That all I longed for long a -- go was you.
}

refrainChords = \chordmode {
  f2:6 d2:m7 g2:m7 c2:7 f1:maj7 g2:m7 c2:7
  f1:6 g2:m7 c2:7 a2:m7 d2:7 g2:m7 c2:7

  af2:6 f2:m7 bf2:m7 ef2:7 af1:maj7 g1:7
  c1:maj7 a2.:m7 d4:7 g1:m7 c1:7

  f2:6 d2:m7 g2:m7 c2:7 f1:maj7 g2:m7 c2:7
  f1:6 g2:m7 c2:7 a2:m7 d2:7 g2:m7 c2:7

  c1:m7 f1:7 bf1:maj7 bf2:maj7 ef2:9
  f2:6/a af2:dim7 g2:m7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c:7 }
}

refrainKey = f

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
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up [Chet Baker 1955]" 4 = 180

  \xTextMark \markup{ \bold \box "A1" }
  
  f2. f4 | f4 a4 e4. d8 | e2. e4 | e4 f4 d4 bf4 |
  d2. c4 | d2. c4 | d4 e4 f4 fs4 | a2 g2 |

  \sect "B"
  
  af2. af4 | af4 bf4 g4 f4 | g2. g4 | g4 b4 f4 e4 |
  g2. e4 | a2. bf4 | c1~ | c2. r4 |

  \sect "A2"
  
  f,2. f4 | f4 a4 e4. d8 | e2. e4 | e4 f4 d4 bf4 |
  d2. c4 | d2. c4 | d4 e4 f4 fs4 | a2 g2 |
  
  \sect "C"

  c2. c4 | c4 ef4 bf4 a4 | d1~ | d4 bf4 a4 g4 |
  f2. f4 | f4 a4 e4 g4 | f1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
