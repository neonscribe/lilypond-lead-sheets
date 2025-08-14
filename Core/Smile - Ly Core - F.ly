%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Smile"
  subtitle = \instrument
  poet = "John Turner and Geoffrey Parsons"
  composer = "Charlie Chaplin"
  copyright = \markup \small "© 1936, 1954 Bourne Co."
}

refrainLyrics = \lyricmode {
Smile, though your heart is ach -- ing.
Smile, e -- ven though it's break -- ing.
When there are clouds in the sky, you'll get by.
If you smile through your fear and sor -- row.
Smile and may -- be to -- mor -- row,
you'll see the sun comes shin -- ing through for you.

you'll just smile. __
}

refrainLyricsTwo = \lyricmode {
Light up your face with glad -- ness.
Hide ev -- 'ry trace of sad -- ness.
Al -- though a tear may be ev -- er so near,
that's the time you must keep on try -- ing.
Smile, what's the use of cry -- ing?
You'll find that life is still worth -- while
if you
}

refrainRBFourChords = \chordmode {
  f1 f1 e1/f f2 bf2:9
  a1:m7 af1:dim7 g1:m7 d1:7
  g1:m7 g1:m7 bf1:m7 ef1:9
  f1:maj7 d2:7 a4:m7 af4:9 g1:13 c1:sus9
  
  c2:sus9 c2:7.9- f1:6 f1:6
}

refrainRealDixielandChords = \chordmode {
  f1 f1 f1 f1
  f1 af1:dim7 g1:m fs1:dim7
  g1:m g1:m bf1:m bf1:m
  f1 f1 g1:m c1:7
  
  c1:7 f1 f1
}

refrainDFBChords = \chordmode {
  f1 f1 f1 f1
  f1/a af1:dim7 g1:m7 d1:7
  g1:m7 g1:m7 bf1:m7 ef1:7
  f1 d1:7 g1:m7 c1:7
  
  c1:7 f1 f1
}

refrainChords = $(if (and (defined? 'useDFBChords) useDFBChords)
		  refrainDFBChords
		  refrainRBFourChords)

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Nat King Cole 1954]" 4 = 80

  \bar ".|:"
  \repeat volta 2 {
  f2 g4 a4 | g4 f4 e4 d4 | e2 f4 g4 | f4 e4 d4 c4 |
  \break
  d2 e4 f4 | d2 e4 f4 | g2 a4 bf4 | fs2 g4 a4 |
  \break
  bf2 c4 d4 | c4 bf4 a4 g4 | bf2 c4 df4 | c4 bf4 a4 g4 |
  \break
  a2 bf4 a4 | bf4 a4 g4 f4 | g2. d4 \textToCodaLastTime | a'2. r4 |
  }
  \bar "||-:|."
  
  \textCodaBreak

  a2 a2 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
