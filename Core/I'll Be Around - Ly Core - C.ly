%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "I'll Be Around"
  subtitle = \instrument
  poet = ""
  composer = "Alec Wilder"
  copyright = \markup \small { \now " " "© 1942 Ludlow Music,Inc." }
}

refrainMaleSingerLyrics = \lyricmode {
I'll be a -- round no mat -- ter how you treat me now,
I'll be a -- round from now on, __
Your lat -- est love can nev -- er last, and when it's past,
I'll be a -- round when he's gone. __

Good -- bye a -- gain, and if you find a love like mine,
just now and then drop a line __ to say you're feel -- ing fine, __
and when things go wrong, per -- haps you'll see you're meant for me,
so I'll be a -- round when he's gone. __
}

refrainFemaleSingerLyrics = \lyricmode {
I'll be a -- round no mat -- ter how you treat me now,
I'll be a -- round from now on, __
Your lat -- est love can nev -- er last, and when it's past,
I'll be a -- round when she's gone. __

Good -- bye a -- gain, and if you find a love like mine,
just now and then drop a line __ to say you're feel -- ing fine, __
and when things go wrong, per -- haps you'll see you're meant for me,
so I'll be a -- round when she's gone. __
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainChords = \chordmode {
  c2:maj7 d2:m7 e2:m7 f2:maj7 g2:13 gs2:dim7 f2:6/a g2:7
  c2:maj7 a2:m7 d2:m7 g2:13.9- c2:6 bf4:m7 ef4:7 af2:maj7 d4:m7 g4:7

  c2:maj7 d2:m7 e2:m7 f2:maj7 g2:7 gs2:dim7 f2/a g2:7/b
  c2:maj7 a2:m7 d2:m7 g2:13.9- c4:6 \chordSlash 1 d4:m7 df4:9 c1:maj7
  
  df2:7/af g2:m7 c1:13 df4:7/af g4:m7 c4:sus9 c4:7.9- f1:maj7
  af2:7/ef d2:m7 d2:m9 g2:13 c2:maj7 a2:m7 d2:m7 g2:13.9-

  c2:maj7 d2:m7 e2:m7 f2:maj7 g2:7 gs2:dim7 d2:m7/a g2:7/b
  c2:maj7 a2:m7 d2:m7 g2:7 c4:6 \chordSlash 1
  \chordOpenParen{ bf4:m7 }
  ef4:7 af4:maj7 \chordSlash 1 d4:m7
  \chordCloseParen{ g4:7 }
}

refrainKey = c

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
  \tempo "Ballad [Mills Brothers 1942]" 4 = 86

  \sectStart "A1"
  
  g2 c4 g4 | e2 r8 c8 d8 e8 | e2 r8 d8 e8 f8 | f1 |
  g2 c4 a4 | f4 c4 e2 | c1~ | c4 r4 r2 |
  
  \sect "A2"
  
  g'2 c4 g4 | e2 r8 c8 d8 e8 | e2 r8 d8 e8 f8 | f1 |
  g2 c4 a4 | f4 c4 e2 | c1~ | c4 r4 r4 c4 |

  \sect "B"
  
  df2 d2 | a'2. c,4 | df8 df8 d8 d8 f4 e4 | c'2. a4 |
  af2 a2 | e'1 | d4 c8 a8~ a8 a8 c8 a8 | c8 a4 e8~ e4. f8 |

  \sect "A3"

  g2 c4 g4 | e2 r8 c8 d8 e8 | e2 r8 d8 e8 f8 | d'2. b4 |
  g2 e'4 c4 | a4 c,4 e2 | c1~ | c4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
