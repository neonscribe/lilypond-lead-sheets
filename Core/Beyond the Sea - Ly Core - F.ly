%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Beyond the Sea"
  subtitle = \instrument
  poet = "Jack Lawrence"
  composer = "Albert Lasry, Charles Trenet"
  copyright = \markup \small { \now " " "© 1945 France Music Corp." }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Some -- where, be -- yond the sea
some -- where, wait -- ing for me,
my lov -- er stands on gol -- den sand
and watch -- es the ships that go sail -- ing.

Some -- where, be -- yond the sea
she's there watch -- ing for me.
If I could fly like birds on high
Then, straight to her arms, I'll go sail -- ing.

It's far be -- yond the stars.
It's near be -- yond the moon.
I know be -- yond a doubt
my heart will lead me there soon.

We'll meet be -- yond the shore.
We'll kiss just like be -- fore.
Hap -- py we'll be be -- yond the sea
and nev -- er a -- gain, I'll go sail -- ing.
}

refrainObjectGenderMaleLyrics = \lyricmode {
Some -- where, be -- yond the sea
some -- where, wait -- ing for me,
my lov -- er stands on gol -- den sand
and watch -- es the ships that go sail -- ing.

Some -- where, be -- yond the sea
he's there watch -- ing for me.
If I could fly like birds on high
Then, straight to his arms, I'll go sail -- ing.

It's far be -- yond the stars.
It's near be -- yond the moon.
I know be -- yond a doubt
my heart will lead me there soon.

We'll meet be -- yond the shore.
We'll kiss just like be -- fore.
Hap -- py we'll be be -- yond the sea
and nev -- er a -- gain, I'll go sail -- ing.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  s4
  
  f2:6 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  f2:maj7 a2:7 d2:m7 c2:7 f2:maj7 d2:m7 bf2:maj7 d2:m7
  g2:m7 c2:7 d2:m7 bf2:maj7 g1:7 g2:m7 c2:7

  f2:6 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  f2:maj7 a2:7 d2:m7 c2:7 f2:maj7 d2:m7 bf2:maj7 d2:m7
  g2:m7 c2:7 d2:m7 bf2:maj7 g2:m7 c2:7 f2:6 e2:7
  
  a2:6 fs2:m7 b2:m7 e2:7 a2:maj7 fs2:m7 b2:m7 e2:7
  a1:maj7 d2:m7 g2:7 c2:6 a2:m7 d2:m7 g2:7
  c2:maj7 a2:m7 d2:m7 g2:7 a2:m7 d2:7 g2:m7 c2:7

  f2:6 d2:m7 g2:m7 c2:7 f2:maj7 d2:m7 g2:m7 c2:7
  f2:maj7 a2:7 d2:m7 c2:7 f2:maj7 d2:m7 bf2:maj7 d2:m7
  g2:m7 c2:7 d2:m7 bf2:maj7 g2:m7 c2:7 f2:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Bobby Darin 1958]" 4 = 136

  \partial 4 c4 |
  \bar "||"

  \sectStart "A1"
  
  f1 | r2 \tuplet 3/2 { e4 f4 g4 } | a2. f4 | g2 \tuplet 3/2 { e4 d4 c4 } |
  \break
  a'1 | r2 \tuplet 3/2 { g4 a4 bf4 } | c4. f,8 f4. f8 | d'1 |
  \break
  r4 d4 \tuplet 3/2 { c4 a4 g4 } | f2 d4 f4 | g1 | c,2 r4 c4 |
  
  \sect "A2"

  f1 | r2 \tuplet 3/2 { e4 f4 g4 } | a2. f4 | g2 \tuplet 3/2 { e4 d4 c4 } |
  \break
  a'1 | r2 \tuplet 3/2 { g4 a4 bf4 } | c4. f,8 f4. f8 | d'1 |
  \break
  r4 d4 \tuplet 3/2 { c4 a4 g4 } | f2 d4 f4 | g1 | f2 r4 e4 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "B"
  
  a1 | r2 \tuplet 3/2 { gs4 a4 b4 } | cs2. a4 | b2 \tuplet 3/2 { gs4 fs4 e4 } |
  \break
  e1 | r2 r4 g4 | c1 | r2 \tuplet 3/2 { b4 c4 d4 } |
  \break
  e2. c4 | d4. b8 \tuplet 3/2 { b4 a4 g4 } | c1 | r2 r4 c,4 |

  \sect "A3"

  f1 | r2 \tuplet 3/2 { e4 f4 g4 } | a2. f4 | g2 \tuplet 3/2 { e4 d4 c4 } |
  \break
  a'1 | r2 \tuplet 3/2 { g4 a4 bf4 } | c4. f,8 f4. f8 | d'1 |
  \break
  r4 d4 \tuplet 3/2 { c4 a4 g4 } | f2 d4 f4 | g1 | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
