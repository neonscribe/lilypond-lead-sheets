%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Too Marvelous for Words"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Richard A. Whiting"
  copyright = \markup \small { \now " " "© 1937 Warner Bros. Inc." }
}

refrainLyrics = \lyricmode {
You're just too mar -- vel -- ous, too mar -- vel -- ous for words,
like glo -- ri -- ous, __ glam -- our -- ous __ and that old stand -- by, am -- or -- ous.

It's all too won -- der -- ful, I'll nev -- er find the words,
that say e -- nough, __ tell e -- nough, __ I mean they just aren't swell e -- nough.

You're much too much, and just too ver -- y ver -- y
to ev -- er be in Web -- ster's Dic -- tion -- a -- ry.

And so, I'm bor -- row -- ing a love song from the birds,
to tell you that you're mar -- vel -- ous, too mar -- vel -- ous for words.
}

refrainChords = \chordmode {
  s4
  
  bf1:m7 ef1:7 bf1:m7 ef1:7
  af1:maj7 df1:9 af2:maj7 bf2:m7 c2:m7 f2:7

  bf1:m7 ef1:7 bf1:m7 ef1:7
  af1:maj7 df1:9 c2:maj7 g2:7 c1:6

  ef1:m7 af2.:sus7 af4:7 ef1:m7 af2.:sus7 af4:7
  df1:maj7 gf1:7 f2:m7 bf2:7 bf2:m7 ef2:7

  bf1:m7 ef1:7 af2:maj7 gf2:9 f1:7
  bf1:m7 gf1:9 bf2:m7 ef2:7 af2.:6 \chordInsideParens{ f4:7 }
}

refrainKey = af

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
  \tempo "Medium [Nat King Cole 1947]" 4 = 138
  
  \partial 4 ef4 |
  \bar "||"

  \sectStart "A1"
  
  bf'2. f4 | c'8 c8 c2 f,4 | bf4 c4 bf4 f4 | c'2. bf4 |
  \break
  g4 af8 f8~ f2 | g4 af8 f8~ f4. g8 | c,4 ef4 f4 af4 | g8 af8 f2 ef4 |

  \sect "A2"

  bf'2. f4 | c'8 c8 c2 f,4 | bf4 c4 bf4 f4 | c'2. bf4 |
  \break
  g4 af8 f8~ f2 | g4 af8 f8~ f4. g8 | e4 g4 a4 d4 | c8 d8 c2 c4 |

  \sect "B"
  
  ef2. bf4 | df2. c4 | ef4 ef4 ef4 bf4 | df4 df2 af4 |
  \break
  c2. af4 | bf2. af4 | c4 bf4 af4 g4 | f4 g2 ef4 |

  \sect "A3"

  bf'2. f4 | c'8 c8 c2 bf4 | g4 af4 bf4 c4 | ef2. c4 |
  \break
  ef4 d4 df4 f,4 | ef'4 d8 df8~ df4 c4 | bf4 c4 af4 bf4 | af2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
