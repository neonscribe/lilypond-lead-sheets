%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Squeeze Me"
  subtitle = \instrument
  poet = ""
  composer = "Clarence Willians and Fats Waller"
  copyright = \markup \small { \now " " "© 1926 Clarence Williams Music Co., Inc." }
}

refrainLyrics = \lyricmode {
Oh, dad -- dy squeeze me and squeeze me a -- gain. __
Oh, ho -- ney don't stop, 'till I tell you when. __
Now, ba -- by, squeeze me and kiss me some more, __
just like you did be -- fore.
Your ba -- by Cu -- pid is stand -- ing close by. __
Oh dad -- dy don't let your sweet ba -- by cry.
Just pick me up __ on your knee. __
I feel so good -- y good -- y when __ you kiss me. __
}

refrainChords = \chordmode {
  s2
  
  ef2:7 af2:7 df2:6 bf2:7 ef2:7 af2:7 df2:6 bf2:7
  ef2:7 af2:7 f2:7 bf2:m ef2:sus7 ef2:7 ef2:m7 af4:7 bf4:7
  
  ef2:7 af2:7 df2:6 bf2:7 ef2:7 af2:7 df1:7
  g8:dim7 gf4:dim7 f4:dim7 e8:dim7 ef4:dim7
  d8:dim7 df4:dim7 c4:dim7 b8:dim7 bf4:dim7
  ef1:7 af2:7 df4:6
  \chordInsideParens{ bf4:7 }
}

refrainKey = df

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
  \tempo "Medium Slow [Louis Armstrong 1928]" 4 = 95

  \partial 2 \invisEighth af8 a8 bf8 |
  \bar "||"

  \sectStart "A"
  
  f8 f4 bf8 f8 f4 c8 | df8( bf4.) r8 af'8 a8 bf8 | f8 f4 bf8 f8 f4 c8 | df8( bf4.) r8 af'8 a8 bf8 |
  \break
  f8 f4 bf8 f8 f4 f8 | ef4( c8 df8~ df2) | ef8 ef4 ef8 ef4 ef4 | ef2 r8 af8 a8 bf8 |
  
  \sect "B"
  
  f8 f4 bf8 f8 f4 c8 | df8( bf4.) r8 af'8 a8 bf8 | f8 f4 bf8 f8 f4 bf8 | ef,2. df4 |
  \break
  bf'8 a4 af8~ af8 r8 r4 | f8 e4 ef8~ ef8 r8 bf'4 | f8 ef8 f8 ef8 f8 ef8 f8( ef8) | af8 f4 df8~ df4 r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
