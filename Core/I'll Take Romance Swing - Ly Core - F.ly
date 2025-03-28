%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I'll Take Romance (4/4)"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Ben Oakland"
  copyright = \markup \small "© 1937 Bourne Co."
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
  f2:6 d2:m7 g2:m7 c2:7 a2:m7 af2:7 df2:maj7 gf2:7
  a2:7.9+ d2:7.9- g2:m7 c2:7 f2:maj7 af2:7 g2:m7 c2:7

  f2:6 d2:m7 g2:m7 c2:7 a2:m7 af2:7 df2:maj7 gf2:7
  a2:7.9+ d2:7.9- g2:m7 c2:7 f2:maj7 c2:m7 d1:m7

  ef2:m7 af2:7 df2:maj7 bf2:7.9+ ef2:m7 af2:7 df1:maj7
  df2:m7 gf2:7 cf1:maj7 a2:m7 d2:7 g2:m7 c2:7

  f2:6 d2:m7 g2:m7 c2:7 a2:m7 af2:7 df2:maj7 gf2:7
  a2:7.9+ d2:7.9+ g2:m7 c2:7 f1:maj7
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Eydie Gormé 1957]" 4 = 136

  \sectStart "A1"
  
  f2 d4 f8 g8~ | g2. a8 bf8 | c4. c8 c4. c8 | \tuplet 3/2 { c4 df4 c4} bf2 |
  \tuplet 3/2 { bf4 c4 bf4 } a4 c8 g8~ | g2 \tuplet 3/2 { g4 f4 e4 } | f1~ | f2 r2 |
  
  \sect "A2"

  f2 d4 f8 g8~ | g2. a8 bf8 | c4. c8 c4. c8 | \tuplet 3/2 { c4 df4 c4} bf2 |
  \tuplet 3/2 { bf4 c4 bf4 } a4 c8 g8~ | g2 \tuplet 3/2 { g4 f4 e4 } | f1~ | f4 f8 g8 e8 f8 a8 c8 |

  \sect "B"
  
  df2 ef2 | c2 bf2 | \tuplet 3/2 { r4 df4 df4 } \tuplet 3/2 { df4 ef4 df4 } | c2 bf2 |
  bf2 df2 | bf2 af2 | 
  \tuplet 3/2 { r4 a4 a4 } \tuplet 3/2 { a4 c4 bf4 } | \tuplet 3/2 { g4 g4 g4 } \tuplet 3/2 { g4 bf4 a4 } |
  
  \sect "A3"

  f2 d4 f8 g8~ | g2. a8 bf8 | c4. c8 c4. c8 | \tuplet 3/2 { c4 df4 c4} bf2 |
  \tuplet 3/2 { bf4 c4 bf4 } a4 c8 g8~ | g2 \tuplet 3/2 { g4 f4 e4 } | f1~ | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
