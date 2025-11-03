%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Friend of the Devil"
  subtitle = \instrument
  poet = "Robert Hunter"
  composer = "Jerry Garcia and John Dawson"
  copyright = \markup \small "© 1970 Ice Nine Publishing Co., Inc."
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

I lit out __ from Re -- no, I __ was trailed __ by twen -- ty hounds. __
Did -- n't get __ to sleep __ that night till the morn -- ing came a -- round. __

Set out run -- ning but I take my time. __
A friend of the dev -- il is a friend __ of mine. __
If I get home __ be -- fore __ day -- light, __ I just might get some sleep to -- night. __

-night. __

Got two rea -- sons why I cry __ a -- way __ each lone -- ly night. __
The first one's named sweet Anne Ma -- rie __ and she's __ my heart's de -- light. __
Se -- cond one __ is pri -- son ba -- by, __ sher -- iff's on __ my trail
and if he catch -- es up with me __ I'll spend my life in jail.

}

refrainChords = \chordmode {
  g2 g2/fs g2/e g2/g c2 c2/b c2/a c2/g
  
  g2 g2/fs g2/e g2/g c2 c2/b c2/a c2/g
  g2 g2/fs g2/e g2/g c2 c2/b c2/a c2/g

  d1 d1 a1:m a1:m d1 d1 a1:m a1:m
  
  d1 d1 d1 d1
  
  d1 d1 d1 d1
  
  d1 d1 d1 d1
  c1 c1 c1 c2 cs2
  d1 d1 d1 d1
  a1:m a1:m c1
  c1 c1 c1 c1
}

refrainKey = g

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Grateful Dead 1970]" 4 = 124

  \sectStart "Intro"
  
  \bar ".|:"
  \repeat volta 4 {
  r8_"4x" d'8 g,8 g'8~ g8 d8 d8 d8 | r8 e8 <d g,>8 g8~ g8 d8 <b g>8 <b g>8 |
  r4 <c g e>8 <c g e>8 r8 <b g>8 <g d>8 <b g>8 | r4 a8 e8 r4 d'8 g8 |
  }

  \bar ":..:"
  \repeat volta 6 {
  \sectNoBar "Verse"
  
  b,4_"6x" b8 b8~ b8 b4. | b8 b4 a8~ a8 g4 a8~ | a4 b4 g8 a4 g8~ | g2 r2 |
  \break
  b8 b4 b8~ b8 b4 b8~ | b8 b4. b4 b8 g8 | a4 b4 g4 a8 g8~ | g2 r2 |
  
  \sect "Chorus"
  
  d8 a'4. a8 a8 a8 g8 | a4 a4 a8( b4) b8 | a4 g8 g8 g8 g8 g8 e8 | e8( g4) g8 g8( a4) a8 |
  \break
  a4 a8 a8( g4) g8 a8~ | a8 a4. a8( b4) b8 | a4 g4 g4 e4 | g2 r4 a4 \textToCodaLastTime |
  \break
  \alternative { \volta 1,2,4 {
  a2.( d,4~ | d1) | r1 | r1 |
  } \volta 3,5 {
  a'2.( d,4~ | d1) | r1 | r1 |
  \bar "||"

  \xPageBreak

  \sectNoBarNoBreak "Bridge"
  
  d'4 d4 d4 b4 | c4 c4 c8( b8) a8 d8~ | d4 d4 e4 e8 d8~ | d4 r4 r4 r8 g,8 |
  \break
  c4 c4 c4 c4 | b4. b8 a8( g8) g8 c8~ | c8 b4. a4 a8 g8~ | g4 r4 r2 |
  \break
  b8 d4. d8( c8) b4 | c8 c4 b8~ b8 a8~ a8 r8 | d8 d4 e8~ e8 e4. | d2 r4 r8 e,8 |
  \break
  c'4 c8 c8~ c8 c4. | b4 b8 a8~ a8 g4. | g4. a8 g4 e4 |
  \break
  d2 r2 | r1 | r1 | r1 |
  } } }
}

codaLyrics = \lyricmode {
-night.
}

codaChords = \chordmode {
  d2 r2
}

codaKey = g

codaMelody = \relative f' {
  \time 2/2
  \key \codaKey \major
  \clef \whatClef

  \textCodaBreak
  
  a2\fermata r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

codaRaggedRight = ##t

\include "../Include/coda.ily"

\markup {
  \column {
    \vspace #3
    \line { \large { \bold "2." } }
    \vspace #2
    \line { \large { \bold "3." } }
    \vspace #2
    \line { \large { \bold "4,6." } }
    \vspace #2
    \line { \large { \bold "5." } }
  }
  \column { \hspace #6 }
  \column {
    \vspace #3
    \line { \large { Ran into the devil, babe, and he loaned me twenty bills. } }
    \line { \large { Spent the night in Utah in a cave up in the hills. } }
    \vspace #1
    \line { \large { I ran down to the levee but the devil caught me there. } }
    \line { \large { He took my twenty dollar bill and he vanished in the air. } }
    \vspace #1
    \line { \large { Got a wife in Chino, babe, and one in Cherokee. } }
    \line { \large { First one says she's got my child but it don't look like me. } }
    \vspace #1
    \line { \large { Instrumental solo } }
  }
}
