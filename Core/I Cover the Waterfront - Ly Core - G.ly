%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (and (defined? 'printNoteNames) printNoteNames)
      (not (string=? instrument "Standard Key")))
   (set-global-staff-size 18))

\header {
  title = "I Cover the Waterfront"
  subtitle = \instrument
  poet = "Edward Heyman"
  composer = "Johnny Green"
  copyright = "© 1933 HARMS Incorporated"
}

refrainLyrics = \lyricmode {
I cov -- er the wat -- er -- front, __
I'm watch -- ing the sea.
Will the one I love __ be com -- ing back __ to me? __
I cov -- er the wat -- er -- front, __
In search of my love,
And I'm cov -- ered by __ a star -- less sky __ a -- bove. __
Here am I, __ pa -- tient -- ly wait -- ing,
hop -- ing and long -- ing. Oh, how I yearn!
Where are you? __ Are you for -- get -- ting?
Do you re -- mem -- ber? Will you re -- turn?
I cov -- er the wat -- er -- front, __
I'm watch -- ing the sea,
For the one I love __ must soon come back __ to me. __
}

refrainChords = \chordmode {
  e2:m7 a2:7 a2:m7 d2:7 g2 a2:m7 b2:m7 bf2:dim7
  a1:m7 a2:m7 d2:7 g2 fs2:7 f2:7 e2:7
  
  e2:m7 a2:7 a2:m7 d2:7 g2 a2:m7 b2:m7 bf2:dim7
  a1:m7 a2:m7 d2:7 g2 c2:7 g2:6 e2:m7
  
  a2:m7 d2:7 b2:m7 e2:m7 a2:m7 d2:7 g1
  b2:m7 e2:7 a2 fs2:m7 b2:m7 e2:7 a4:m7 a4:m7/g fs4:m7.5- b4:7
  
  e2:m7 a2:7 a2:m7 d2:7 g2 a2:m7 b2:m7 bf2:dim7
  a1:m7 a2:m7 d2:7 g2 af2:maj7 g1
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 110

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 b4 \tuplet 3/2 { a4 g4 a4 } | b4 b8 b8~ b2 | r4 d4 \tuplet 3/2 { d4 b4 g4 } | fs2. e8 fs8 |
  \break
  g8 g4 g8~ g4. a8 | b8 b4 b8~ b4 a4 | d1~ | d1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  r4 b4 \tuplet 3/2 { a4 g4 a4 } | b4 b8 b8~ b2 | r4 d4 \tuplet 3/2 { d4 b4 g4 } | fs2. e8 fs8 |
  \break
  g8 g4 g8~ g4. a8 | b8 b4 b8~ b4 a4 | g1~ | g4 r4 r2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d'4 d8 d8~ d2 | \tuplet 3/2 { d,4 d4 ds4 } e8 e4. |
  \tuplet 3/2 { d'4 d4 d4 } d8 d4. | \tuplet 3/2 { d,4 d4 ds4 } e2 | 
  \break
  e'4 e8 e8~ e2 | \tuplet 3/2 { e,4 e4 es4 } fs8 fs4. |
  \tuplet 3/2 { e'4 e4 e4 } cs8 cs4. | \tuplet 3/2 { c4 c4 c4 } a2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  r4 b4 \tuplet 3/2 { a4 g4 a4 } | b4 b8 b8~ b2 | r4 d4 \tuplet 3/2 { d4 b4 g4 } | fs2. e8 fs8 |
  \break
  g8 g4 g8~ g4. a8 | b8 b4 b8~ b4 a4 | g1~ | g4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
