%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "I'll Take Romance (3/4)"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Ben Oakland"
  copyright = \markup \small { \now " " "© 1937 Bourne Co." }
}

refrainLyrics = \lyricmode {
I'll take ro -- mance, __
while my heart is young and ea -- ger to fly.
I'll give my heart a try,
I'll take ro -- mance. __

I'll take ro -- mance, __
while my arms are strong and ea -- ger for you.
I'll give my arms their cue,
I'll take ro -- mance. __

So, my lov -- er, when you want me, call me.
In the hush of the eve -- ning,
when you call me. In the hush of the eve -- ning,
I'll rush to my first real ro -- mance. __

While my heart is young
And ea -- ger and gay,
I'll give my heart a -- way,
I'll take ro -- mance. __
}

refrainChords = \chordmode {
  f2.:6 d2.:m7 g2.:m7 c2.:7
  a2.:m7 af2.:7 df2.:maj7 g2.:m7
  c2.:7 d2.:7.9- g2.:m7 c2.:7
  f2.:6 af2.:7 g2.:m7 c2.:7

  f2.:6 d2.:m7 g2.:m7 c2.:7
  a2.:m7 af2.:7 df2.:maj7 g2.:m7
  c2.:7 d2.:7.9- g2.:m7 c2.:7
  f2.:6 g2.:m7 f2.:6 f2.:6
  
  ef2.:m7 af2.:7 df2.:maj7 bf2.:m7
  ef2.:m7 af2.:7 df2.:maj7 bf2.:m7
  gf2.:7 gf2.:7 cf2.:maj7 cf2.:maj7
  a2.:m7 d2.:7.9- g2.:m7 c2.:7

  f2.:6 d2.:m7 g2.:m7 c2.:7
  a2.:m7 af2.:7 df2.:maj7 g2.:m7
  c2.:7 d2.:7.9- g2.:m7 c2.:7
  f2.:6 f2.:6
  \chordOpenParen{ g2.:m7 }
  \chordCloseParen{ c2.:7 }
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
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Waltz [Jeri Southern 1955]" 4 = 118

  \sectStart "A1"
  
  f2. | d2~ d8 f8 | g2.~ | g2 a8 bf8 | c2 c4 | c2 c4 | c4 df4 c4 | bf2. |
  bf4 c4 bf4 | a2 c4 | g2. | g4 f4 e4 | f2.~ | f2.~ | f2. | R2.*1 |
  
  \sect "A2"

  f2. | d2~ d8 f8 | g2.~ | g2 a8 bf8 | c2 c4 | c2 c4 | c4 df4 c4 | bf2. |
  bf4 c4 bf4 | a2 c4 | g2. | g4 f4 e4 | f2.~ | f2.~ | f8 r8 f4 g4 | e8 f8 a4 c4 |

  \sect "B"
  
  df2. | ef2. | c2. | bf2. | r4 df4 df4 | df4 ef4. df8 | c2. | bf2. |
  bf2. | df2. | bf2. | af2. | r4 a4 a4 | a4 c4 bf4 | g4 g4 g4 | g4 bf4 a4 |
  
  \sect "A3"

  f2. | d2~ d8 f8 | g2.~ | g2 a8 bf8 | c2 c4 | c2 c4 | c4 df4 c4 | bf2. |
  bf4 c4 bf4 | a2 c4 | g2. | g4 f4 e4 | f2.~ | f2.~ | f2. | R2.*1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
