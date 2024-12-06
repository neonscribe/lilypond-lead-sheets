%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Lover, Come Back to Me!"
  subtitle = \instrument
  poet = "Oscar Hammerstein II"
  composer = "Sigmund Romberg"
  copyright = "© 1928 T.B. Harms, Inc."
}

verseLyrics = \lyricmode {
You went a -- way,
I let you.
We broke the ties that bind.
I want -- ed to for -- get you
and leave the past be -- hind.
Still, the mag -- ic of the night I met you
Seems to stay for -- ev -- er in my mind.
}

verseChords = \chordmode {
  ef1:maj7 f1:9 f2:m9 bf2:9
  ef2:6 a4:m7.5- d4:7.9- g2:m6 d4:9 df4:9.11+ c2:9 gf2:9.5-
  bf2:maj7/f f2:sus7 bf2:maj7 bf2:6 gf1:6
  af2:m7 df2:7 ef4:m ef4:m/df c4:m7.5- f4:7.9-.5+ bf2:sus9 bf2:7.9-
}

verseKey = ef

verseMelody = \relative f' {
  \time 2/2
  \key \verseKey \major
  \clef \whatClef
  \xTextMark \markup{ "Verse" }
  \tempo "Freely"

  r8 g8 f8 ef8 d4 ef4 | g2 c,2 | r8 g'8 f8 ef8 bf4 c4 |
  ef2. r4 | r8 bf'8 a8 g8 fs4 g4 | bf2 c,2 |
  r8 d8 d8 ef8 f4 c4 | f2. r4 | gf8 df8 gf8 af8 cf8 bf8 af8 gf8 |
  af2 df,2 | ef8 bf8 ef8 f8 gf8 bf8 gf8 ef8 | f2. r4 |
  \bar "$"
}

refrainLyricsPreOne = \lyricmode {
}

refrainLyricsOne = \lyricmode {
The sky was blue,
And high a -- bove,
The moon was new,
And so was love.
This eag -- er heart of mine was sing -- ing, 
Lov -- er, where can you
}

refrainLyricsRepOne = \lyricmode {
be?
}

refrainLyricsTwo = \lyricmode {
You came at last,
Love had its day.
That day is past,
You've gone a -- way.
This ach -- ing heart of mine is sing -- ing,
Lov -- er, come back to
}

refrainLyricsRepTwo = \lyricmode {
me!
When
}

refrainLyricsBridge = \lyricmode {
I re -- mem -- ber ev -- 'ry lit -- tle thing
you used to do,
I'm so lone -- ly.
Ev -- 'ry road I've walked a -- long
I've walked a -- long with you,
No won -- der I'm so lone -- ly
}

refrainLyricsThree = \lyricmode {
The sky is blue,
The night is cold.
The moon is new,
But love is old.
And while I'm wait -- ing here,
This heart of mine is sing -- ing,
Lov -- er, come back to
}

refrainLyricsRepThree = \lyricmode {
me!
}

refrainChords = \chordmode {
  ef1:6 ef1:6 d1:m7.5- g1:7.9-
  c1:m7 c1:m7 f1:7 fs1:dim7
  ef1:6/g c1:m7 f1:9 bf1:7
  ef2:6 ef2:6/g af2:6 a2:dim7

  ef2:6/bf c2:m7 f2:m7 bf2:7

  ef1:6/bf d2:m7.5- g2:7.9-
  
  c1:m7 c1:m7 d2:m7.5- g2:7.9-
  c1:m7 d1:m7.5- g1:7 af1:7 g1:7 c1:m7
  c1:m7 d2:m7.5- g2:7.9- c1:m7 f1:9 f1:9 f1:m7 bf1:7

  ef1:6 ef1:6 d1:m7.5- g1:7.9-
  c1:m7 c1:m7 g1:m7.5- c1:7.9-
  f1:m7 f1:m7 g2:m7 c2:m7 f2:m7 bf2:13.9- ef2:6 ef2:6/g af2:6 a2:dim7 ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bright"

  \xTextMark \markup{ "Refrain" \bold \box "A" }

  \bar ".|:"

  \repeat volta 2 {
  r4 ef4 ef4 f4 | g1 | r4 d4 d4 ef4 | f1 |
  \break
  r4 ef4 ef4 f4 | g1 |
  r4 c,4 c4 d4 | ef1 |
  \break
  r4 bf4 bf4 c4 | ef4 f4 g4 bf4 |
  g1 | f1 |
  \break
  bf,4 c4 ef2 | ef2 ef2 |
  } \alternative { {
  ef1 |
  r1 |
  } {
  ef1 | d1 |
  } }

  \bar "$"

  \xTextMark \markup{ \bold \box "B" }

  \set Score.currentBarNumber = #33

  c4 d4 ef4 f4 | g4 c4 b4 c4 | af4 c4 b4 c4 | g1 |
  g1 | d1 | ef1 | d1 |
  \break
  c4 d4 ef4 f4 | g4 c4 b4 c4 | af4 c4 b4 c4 | g1 |
  \break
  g1 | c,4 d4 ef4 g4 | bf1 | f1 |
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }

  r4 ef4 ef4 f4 | g1 | r4 d4 d4 ef4 | f1 | 
  r4 ef4 ef4 f4 | g1 |
  \break
  r4 g4 g4 af4 | bf1 |
  r4 af4 af4 bf4 | c4 ef4 c4 af4 |
  g4 bf4 g4 ef4 | f2 g2 |
  \break
  bf,4 c4 ef2 | ef2 ef2 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

%%% \include "../Include/verse.ily"

\include "../Include/refrain-a1-a2-repeat.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { band last four bars, vocal full chorus } } 
    \line { \huge { accordion solo A1, A2, guitar solo A1,A2 } }
    \line { \huge { vocal full chorus, repeat last four bars 3x, end short on ''me'' } }
  }
}

\include "../Include/notes.ily"
