%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Where or When"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = "© 1937 Chappell & Co."
}

refrainLyricsOne = \lyricmode {
It seems we stood and talked like this be -- fore.
We looked at each oth -- er in the same way then,
But I can't re -- mem -- ber where or when. __ when. __
Some things that hap -- pen for the first time, __
Seem to be hap -- pen -- ing a -- gain. __
And so it seems that we have met be -- fore,
and laughed be -- fore, and loved be -- fore,
But who knows where or when! __
}

refrainLyricsTwo = \lyricmode {
The clothes you're wear -- ing are the clothes you wore.
The smile you are smil -- ing you were smil -- ing them,

}

refrainChords = \chordmode {
  ef1:maj7 ef1:6 ef1:dim7 ef1:maj7
  af1:maj7 af1:maj7 af1:maj7 f2:m7 bf2:sus7
  
  ef2:maj7 c2:m7 f2:m7 bf2:7
  
  ef2:maj7 ef2:6 d2:m7.5- g2:7
  
  c1:m7 f1:m7 d1:m7.5- g1:7
  c1:m7 f1:m7 f2:sus7 b2:7.5- bf2:sus7 bf2:7
  
  ef1:maj7 ef1:6 d2:m7.5- g2:7 c1:m7
  f1:m7 g1:m7 f1:m7 g1:m7
  f1:m7 bf1:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Slow" 4 = 97

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r4 bf,4 bf4 bf4 | c4 c4 c4 c4 | d2. bf4 | d2. bf4 |
  \break
  ef4 ef8 ef8 ef8 ef8 ef8 ef8 | ef4 af4 c,2 | ef8 ef8 ef8 ef8 ef4 af4 | c,2. ef4 |
  \alternative { \volta 1 {
  g1~ | g2 r2 |
  } \volta 2 {
  g1~ | g2 r2 |
  } } }
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 g4 fs4 g4 | bf4 af4 c,4. ef8 | g2 g2~ | g1 |
  \break
  r4 g4 fs4 g4 | c4 af4 c,4. ef8 | f1~ | f1 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }

  r4 bf,4 bf4 bf4 | c4 c4 c4 c4 | d2. d4 | ef2. ef4 |
  \break
  f2. f4 | g2. g4 | af2. af4 | bf2. bf4 |
  \break
  c2 c2 | d2 d2 | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
