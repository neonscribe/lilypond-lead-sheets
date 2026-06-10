%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:56.226304Z"

\include "../Include/lead-sheets.ily"

headerTitle = "This Can't Be Love"
headerSubtitle = \subtitle
headerPoet = "Lorenz Hart"
headerComposer = "Richard Rodgers"
headerCopyright = "© 1938 Chappell & Co."

refrainLyrics = \lyricmode {
  This can't be love be -- cause I feel so well. __
  No sobs, no sor -- rows, no sighs. __
  This can't be love, I get no diz -- zy spell. __
  My head is not in the skies. __
  My heart does not stand still __ just hear it beat!
  This is too sweet to be love.
  This can't be love be -- cause I feel so well __
  But still I love to look __ in your eyes. __
}

refrainChords = \chordmode {
  g1:maj7 g1:maj7 c1:7 c1:7
  b1:m7 e1:m7 a1:m7 d1:7
  g1:maj7 g1:maj7 c1:7 c1:7
  b2:m7 e2:m7 a2:m7 d2:7
  g2:maj7 c2:7 g1:maj7

  fs1:m7 b1:7 e1:m7 e1:m7
  b1:m7.5- e1:7.9- a1:m7 d1:7

  g1:maj7 g1:maj7 c1:7 c1:7
  b2:m7 e2:m7 a2:m7 d2:7
  g1:maj
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative c'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium or Up [Stan Getz, Gerry Mulligan 1957]" 260

  r4 g4 fs4 g4 | d4. g8 fs4 g4 | e2 g4 a4~ | a2. g4 |
  \break
  b4 r4 d,4 d4~ | d4 e4 g2 | a1~ | a2. r4 |
  \bar "||-||"
  \break
  r4 g4 fs4 g4 | d4 g4 fs4 g4 | e2 g4 a4~ | a2. g4 |
  \break
  d'4 r4 g,4 g4~ | g4 b4 a2 | g1~ | g4 b4 b4 b4 |
  \bar "||-||"
  \break
  cs,4 r4 e4 ds4~ | ds4 b'4 b8 b4. | d1 | r4 b4 b4 b4 |
  \break
  d1 | c1 | b1 | a1 |
  \bar "||-||"
  \break
  r4 g4 fs4 g4 | d4 g4 fs4 g4 | e2 g4 a4~ | a4 g4 a4 g4 |
  \break
  e'4 r4 g,4 g4~ | g4 b4 a2 | g1~ | g4 r4 r2 |
  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
