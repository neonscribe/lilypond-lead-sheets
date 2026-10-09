%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "singerGender": [ "male", "female" ] } }

%}

\version "2.26.0"

songID = "2026-06-01T22:16:51.13026Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Sometime Ago"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Sergio Mihanovich"
headerCopyright = "© 1963 Second Floor Music"

refrainLyricsM = \lyricmode {
Life be -- gan when you came
Some -- time a -- go
There was love in the game
Some -- time a -- go
So un -- con -- ven -- tion -- al, you and me
And so es -- sen -- tial -- ly young and free

We were both ver -- y smart
Un -- til the end
Lit -- tle boy with no heart
I would pre -- tend
Now I′m dis -- cov -- er -- ing as I'm re -- cov -- er -- ing
Love was -- n′t real -- ly just a game
But we're the on -- ly ones to blame
}

refrainLyricsF = \lyricmode {
Life be -- gan when you came
Some -- time a -- go
There was love in the game
Some -- time a -- go
So un -- con -- ven -- tion -- al, you and me
And so es -- sen -- tial -- ly young and free

We were both ver -- y smart
Un -- til the end
Lit -- tle girl with no heart
I would pre -- tend
Now I′m dis -- cov -- er -- ing as I'm re -- cov -- er -- ing
Love was -- n′t real -- ly just a game
But we're the on -- ly ones to blame
}

refrainLyrics =
#(if (and (defined? 'singerGender)
          (equal? singerGender "female"))
  refrainLyricsF
  refrainLyricsM)

refrainChords = \chordmode {
  c2.:maj7 d2.:m7/c c2.:maj7 d2.:m7/c
  c2.:maj7 d2.:m7/c f2:m7 bf4:7 e2:m7 a4:7
  d2.:m g2.:7 e2:7.5+ e4:7 a2.:m7
  a2.:m7/d d2.:7 ef2:m7 af4:7 d2:m7 g4:7

  c2.:maj7 d2.:m7/c c2.:maj7 d2.:m7/c
  c2.:maj7 d2.:m7/c f2:m7 bf4:7 e2:m7 a4:7
  d2.:m g2.:7 e2.:m7 a2.:7
  d2.:m7 g2:7 g4:7/f e2:7.5+ e4:7 a2:7.9- a4:7
  d2.:m7 d2:m7/g g4:7.9- c2.
  \chordInsideParens{ d2.:m7/c }
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Jazz Waltz [Art Farmer 1963]" 150

  \sectNoBarNoBreak "A1"

  r4 g8 b8 d4 | r4 f,8 a8 c4 | r8 g4 b8~ b8 d8 | f,2. |
  \break
  r4 g8 b8 d4 | r4 f,8 a8 c4 | r8 bf4 d8~ d8 f8 | a,2. |

  \sect "B"

  r8 a4 a'8~ a8 g8 | f8 e8 d2 | e2~ e8 g8 | c,2. |
  \break
  r8 fs,4 e'8~ e8 d8 | c8 b8 a2 | bf2~ bf8 f'8 | a,2. |

  \alwaysPageBreak "A2" "||" "||-||"

  r4 g8 b8 d4 | r4 f,8 a8 c4 | r8 g4 b8~ b8 d8 | f,2. |
  \break
  r4 g8 b8 d4 | r4 f,8 a8 c4 | r8 bf4 d8~ d8 f8 | a,2. |

  \sect "C"

  r8 a4 a'8~ a8 g8 | f8 e8 d2 | r8 b4 b'8~ b8 a8 | g8 f8 e2 |
  \break
  g2 f8 e8 | f8 e4 c8~ c8 d8 | e2.~ | e2.|
  \break
  g2 f8 e8 | f8 e8 c4. d8 | c2.~ | c2. |
  \bar "|."
}

\include "../Include/refrainonly.ily"
