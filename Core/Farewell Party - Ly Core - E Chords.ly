%% -*- Mode: LilyPond -*-

songID = "2026-08-23T18:19:39.609131Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Farewell Party"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Lawton Williams"
headerCopyright = "© 1962 Western Hills Music Corporation"

refrainLyrics = \lyricmode {
  \time 4/4
  \tempoFour "Slow [Gene Watson 1978]" 86
\sect "Intro"

_1 _ _ _2

\sectNoBar "Verse 1"

When4 the last2 breath4 of life2. is4 gone2 from4 my body2
and4 my lips2 are4 as cold2 as4 the sea.1 _2
\break
When4 my friends2 gather round2. for4 my2 farewell party,
won't2 you2. pretend you4 love me?1 _2

\sectNoBar "Chorus"

There'll4 be flowers2. from4 those2 who'll cry2 when4 I'm gone2.
\break
and4 leave2 you4 in this2 world alone.1 _2.
\break
I4 know2 you'll4 have fun2. at4 my2 farewell party.2.
I4 know2 you'll4 be glad2 when4 I'm gone.1 _1

\sect "Interlude"

_1 _ _ _ _ _ _ _2

\sectNoBar "Verse 2"

Don't4 be mad4 at me for2. wanting2. to4 keep4 you2
'til4 my2 life2 on4 this old2 world4 is through.1 _2
\break
You'll4 be free2 at4 the end2 of my farewell party2.
but4 I'll2 go away2 loving you.1 _2

\sectNoBar "Chorus"

There'll4 be flowers2. from4 those2 who'll cry2 when4 I'm gone2.
\break
and4 leave2 you4 in this2 world alone.1 _2.
\break
I4 know2 you'll4 have fun2. at4 my2 farewell party.2.
\break
I4 know2 you'll4 be glad2 when4 I'm gone.1 _2
\break
Oh,4 I know2 you'll4 be glad2 when4 I'm go1 -- o1 -- one.4*5 _2.
\bar "|."
}

refrainChords = \chordmode {
  b1:7 b1:7 e1 e1
  
  e1 e1:7 a1 e1
  e1 e1 b1:7 b1:7
  e1 e1:7 a1 e1
  b1:7 b1:7 e1 e1:7

  a1 a1 e1 e1
  e1 e1 b1:7 b1:7
  e1 e1:7 a1 e1
  b1:7 b1:7 e1 e1

  e1 e1:7 a1 e1
  b1:7 b1:7 e1 cs1:7

  fs1 fs1:7 b1 fs1
  fs1 fs1 cs1:7 cs1:7
  fs1 fs1:7 b1 fs1
  cs1:7 cs1:7 fs1 fs1:7

  b1 b1 fs1 fs1
  fs1 fs1 cs1:7 cs1:7
  fs1 fs1:7 b1 fs1
  cs1:7 cs1:7 fs1 fs1
  cs1:7 cs1:7 b1 b1:m fs1 fs4 cs4:7 fs4 \chordSlash 1
}

refrainKey = e

whatKey = #(or whatKey refrainKey)

\include "../Include/chordsonly.ily"
