%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Imagination"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Jimmy Van Heusen"
  copyright = "© 1939 ABC Music Corporation"
}

refrainLyricsOne = \lyricmode {
Im -- ag -- i -- na -- tion is fun -- ny, it makes a cloud -- y day sun -- ny,
makes a bee think of hon -- ey, just as I __

think of you.
Im -- ag -- i
_ _ _ _

Have you ev -- er felt a gen -- tle touch and then a kiss and then,
and then find it's on -- ly your im -- ag -- i -- na -- tion a -- gain? Oh well.

Im -- ag -- i -- na -- tion is sil -- ly, you go a -- round wil -- ly nil -- ly,
for ex -- am -- ple, I go a -- round want -- ing you. __
And yet I can't im -- ag -- ine that you want me, too. __
}

refrainLyricsTwo = \lyricmode {
_ _ _
na -- tion is cra -- zy, your whole per -- spec -- tive gets ha -- zy,
starts you ask -- ing a dais -- y what to do,
_ _ _ _ _ _ _
what to do. __ ""
}

refrainChords = \chordmode {
  s4.

  ef2:maj7 e2:dim7 f2:m7 bf2:7 ef2:maj7 bf2:m7 g2:m7.5- c2:7.9-
  f2:m f2:m7+ f2:m7 bf2:7
  
  g2:m7 c2:7 f2:m7 bf2:7
  
  ef1:maj7 bf2:m7 ef2:7
  
  af2:maj7 f2:m7 a2:m7 d2:7 g2:m7 c2:7 e2:m7.5- a2:7.9-
  d2:m7 g2:m7 c2:m7 f2:7 f2:m7 bf2:7 bf1:7.5+

  ef2:maj7 e2:dim7 f2:m7 bf2:7 ef2:maj7 bf2:m7 g2:m7.5- c2:7.9-
  f2:m f2:m7+ f2:m7 bf2:7 d2:m7 g2:7 g2:m7.5- c2:7.9-
  f2:m7 af2:dim7 f2:m7 bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 100

  \partial 4. d8 ef8 f8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g4 g2 bf4 | af4 af2 c4 | bf4 bf4 \tuplet 3/2 { bf4 c4 df4 } |
  \break
  bf4 bf2. | af4 af4 \tuplet 3/2 { af4 bf4 c4 } | af4 af4 c4 bf8 g8~ |
  \break
  \alternative { \volta 1 {
  g2 bf4 af8 f8~ | f2 r8 d8 ef8 f8 |
  } \volta 2 {
  g2\repeatTie bf4 g8 f8~ | f2. r4 |
  } } }
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 ef8 f8 g8 af8 bf8 c8 | d4 d4 a4. bf8 | c4 c4 g4. a8 | bf4 r8 bf8 e,2 |
  \break
  r4 f8 g8 a8 bf8 c8 d8 | ef4 ef4 \tuplet 3/2 { a,4 bf4 c4 } | bf2. c4 | fs,2 r8 d8 ef8 f8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  g4 g2 bf4 | af4 af2 c4 | bf4 bf4 \tuplet 3/2 { bf4 c4 df4 } | bf4 bf2. |
  \break
  af4 af4 \tuplet 3/2 { af4 bf4 c4 } | af4 af4 \tuplet 3/2 { af4 a4 bf4 } |
  g1~ | g4 bf4 af4 g4 |
  \break
  f4 f4 \tuplet 3/2 { f4 g4 af4 } | f4 f2 g4 | ef1~ | ef2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
