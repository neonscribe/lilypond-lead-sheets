%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Nature Boy"
  subtitle = \instrument
  poet = ""
  composer = "eden ahbez"
  copyright = "© 1948 Crestview Music Corp."
}

refrainLyricsOne = \lyricmode {
There was a boy, __ a ver -- y strange en -- chant -- ed boy. __
They say he wan -- dered ver -- y far, ver -- y far,
o -- ver land __ and sea.
A lit -- tle shy __ and sad of eye, __ but ver -- y wise __ was he. __

And

just to love __ and be loved in re -- turn.” __
}

refrainLyricsTwo = \lyricmode {
_ then one day, __ a mag -- ic day he passed my way. __
And while we spoke of man -- y things, fools and kings,
this he said __ to me:
“The great -- est thing __ you'll ev -- er learn __
is
}

refrainChords = \chordmode {
  s8
  
  e2.:m9 b2.:7.9- e2.:m9 b2.:7.9- 
  e4:m e2:m7+ e4:m7 e2:m6 a4:m6 e2:m fs2.:m7.5-
  b2.:7 b2.:7 e2.:m e2.:m
  
  fs2.:7 fs2.:7 b2.:7 b2.:7.9-
  
  fs2.:7 b2.:7.5+ e2.:m9 e2.:m9
}

refrainKey = e

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad, Even Eighths" 4 = 100

  \partial 8 b,8 |
  
  \bar ".|:"
  \repeat volta 2 {
  b'8 g8 e2~ | e8 b8 fs'8 g8 a8 c8 | b8 g8 e2~ | e8 b8 fs'8 g8 a8 c8 |
  \break
  b8 e8 ds2 | b8 d8 cs2 | a8 c8 b4~ b8 e,8 | fs2 r8 b,8 |
  \break
  b'8 g8 fs2~ | fs2 r8 b,8 | a'8 g8 e2~ | e2 r8 b8 |
  \break
  \alternative { \volta 1 {
  g'8 fs8 cs2~ | cs2 d4 | ds2.~ | ds2 r8 b8 |
  \break
  } \volta 2 {
  g'8 fs8 cs4~ cs8 b8 | a'8_\markup{ \italic "ritard last time" } g4. b,8 fs'8 | e2.~ | e2 r4 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
