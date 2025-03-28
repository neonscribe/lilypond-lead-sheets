%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Bluesette"
  subtitle = \instrument
  poet = "Norman Gimbel"
  composer = "Toots Thielmans"
  copyright = \markup \small "© 1961 Duchess Music Corporation"
}

refrainLyricsOne = \lyricmode {
Poor lit -- tle, sad lit -- tle blue Blues -- ette.
Don't you cry, don't you fret.
You can bet one luck -- y day you'll wak -- en
and your blues will be for -- sak -- en.
One luck -- y day love -- ly love will come your way. __
}

refrainLyricsTwo = \lyricmode {
Long as there's love in your heart to share,
dear Blues -- ette, don't des -- pair.
Some blue boy is long -- ing just like you,
to find a some -- one to be true to.
Two lov -- ing arms he can nes -- tle in and stay. __
}

refrainChords = \chordmode {
  bf2.:maj7 bf2.:maj7 a2.:m7.5- d2.:7 
  g2.:m7 c2.:7 f2.:m7 bf2.:7
  ef2.:maj7 ef2.:maj7 ef2.:m7 af2.:7
  df2.:maj7 df2.:maj7 df2.:m7 gf2.:7
  cf2.:maj7 cf2.:maj7 c2.:m7 f2.:7
  d2.:m7 df2.:7 c2.:m7 f2.:7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Jazz Waltz [Toots Thielmans 1963]" 4 = 186

  \bar ".|:"
  \repeat volta 2 {
  f4 g4 a4 | bf4 c4 d4 | ef2 g,4 | fs2. |
  \break
  d'2 f,4 | e2. | c'2 ef,4 | d2. |
  \break
  bf'2 d,4 | ef4. f8 gf8 af8 | bf2 gf'4 | f2 ef4 |
  \break
  af,2 f'4 | ef2 df4 | af2 ff'4 | ef2 df4 |
  \break
  gf,4 af4 bf4 | cf4 df4 ef4 | f2 ef4 | d2 c4 |
  \break
  f,2.~ | f2.~ | f2. | R2.*1 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
