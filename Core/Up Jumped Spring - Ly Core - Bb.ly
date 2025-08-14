%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Up Jumped Spring"
  subtitle = \instrument
  poet = "Abbey Lincoln"
  composer = "Freddie Hubbard"
  copyright = \markup \small "© 1962 Hubtones Music Co."
}

refrainLyrics = \lyricmode {
I was out pro -- me -- na -- din'
when high hopes were fa -- din'
That dreams ev -- er real -- ly come true __
When up jumped spring time
I got a look at you __
All at once I was head -- y
A gaze strong and stead -- y
Made sounds of the pat -- ter grow dim __
For up jumped spring -- time \skip 1 \skip 1
And love came on in
Now my heart wants to cheer
Life's sweet pro -- mise is here
And life is a love -- ly thing __
Now we're sweet -- hearts to -- geth -- er
Like bird and a feath -- er
Our love is as free as the wind __
For up jumped spring time \skip 1 \skip 1
So, hel -- lo my friend
I was
friend __
}

refrainChords = \chordmode {
  s4
  
  bf2.:maj7 g2.:7.5+ c2.:m7 f2:7 fs4:dim7
  g2.:m7 f2.:m7 e2.:m7 a2.:7
  d2.:m7 ef2.:m7 d2.:m7 ef2.:m7
  
  b2.:m7.5- e2.:7 c2.:m7.5- f2.:7

  bf2.:maj7 g2.:7.5+ c2.:m7 f2:7 fs4:dim7
  g2.:m7 f2.:m7 e2.:m7 a2.:7
  d2.:m7 ef2.:m7 d2.:m7 ef2.:m7
  
  c2.:m7 f2.:7 bf2.:6 a4:m7.5- d2:7
  
  g2.:m7 c2.:7 f2.:maj7 d2.:m7
  af2.:m7 df2.:7 c2.:m7 f2.:7

  bf2.:maj7 g2.:7.5+ c2.:m7 f2:7 fs4:dim7
  g2.:m7 f2.:m7 e2.:m7 a2.:7
  d2.:m7 ef2.:m7 d2.:m7 ef2.:m7
  
  c2.:m7 f2.:7 bf2.:6 f2.:7
  
  b2.:maj7 b2.:maj7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Jazz Waltz [Art Blakey 1962]" 4 = 192

  \partial 4 f8 bf8 |
  \bar ".|:"
  \repeat volta 2 {
  \sectStart "A1"
  
  d4 r4 d8 cs8 | d8 ef4. b4 | c4 r4 c8 b8 | c8 d4. a4 |
  bf2 bf8 a8 | bf8 c4. bf4 | a2.~ | a2 g4 |
  f2. | bf2. | f2. | bf2. |
  
  f2 d8 f8 | gs2 g4 | gf2.( | f!2) f8 bf8 |

  \sectNoBreak "A2"

  d4 r4 d8 cs8 | d8 ef4. b4 | c4 r4 c8 b8 | c8 d4. a4 |
  bf2 bf8 a8 | bf8 c4. bf4 | a2.~ | a2 g4 |
  f2. | bf2. | f2. | bf2. |
  
  f4 f4 f4 | ef'4 c4 a4 | bf2. | r4 r4 g8 a8 |

  \sectNoBreak "B"

  bf2 g8 bf8 | d2 c8 bf8 | a2 f8 a8 | c2 b4 |
  bf2 df8 bf8 | af2 gf4 | f!2.~ | f4 r4 f8 bf8 |

  \sectNoBreak "A3"

  d4 r4 d8 cs8 | d8 ef4. b4 | c4 r4 c8 b8 | c8 d4. a4 |
  bf2 bf8 a8 | bf8 c4. bf4 | a2.~ | a2 g4 |
  f2. | bf2. | f2. | bf2. |
  
  f4 f4 f4 | ef'4 c4 a4 |
  }
  \alternative {
  { bf2. | r2 f8 bf8 | }
  { as2.~ | as4 r2 | }
  }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
