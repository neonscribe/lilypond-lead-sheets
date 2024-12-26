%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Lover Man (Oh, Where Can You Be?)"
  subtitle = \instrument
  poet = ""
  composer = "Jimmy Davis, Roger Ramirez and Jimmy Sherman"
  copyright = "© 1941 MCA Music"
}

refrainLyricsOne = \lyricmode {
I don't know why, but I'm feel -- ing so sad, __
I long to try some -- thing I've nev -- er had, __
Nev -- er had no kiss -- in'
Oh, what I've been miss -- in'
Lov -- er man, oh, where can you be?
be?
I've heard it said
that the thrill of ro -- mance
can be like a heav -- en -- ly dream,
I go to bed with a prayer
that you'll make love to me,
strange as it seems.
Some -- day we'll meet
And you'll dry all my tears, __
Then whis -- per sweet
lit -- tle things in my ears, __
Hug -- gin' and a -- kiss -- in',
Oh, what we've been miss -- in',
Lov -- er man, oh, where can you be?}

refrainLyricsTwo = \lyricmode {
The night is cold, and I'm so all a -- lone, __
I'd give my soul just to call you my own, __
Got a moon a -- bove me,
But no one to love me,
}

refrainChords = \chordmode {
  d2:m7 g2:7 d2:m7 g2:7 g2:m7 c2:7 g2:m7 c2:7
  f1:7.9+ bf1:7 bf4:m7 ef4:7 g4:m7 c4:7
  
  f2:6 e4:m7.5- a4:7.9-

  f2:6 b4:m7.5- e4:7.9-

  a2:m a2:m7+ a2:m7 d2:7 g2:maj7 a2:m7 b4:m7 \chordSlash 1 a4:m7 d4:7
  g2:m g2:m7+ g2:m7 c2:7 f2:maj7 ef2:7  e2:m7.5- a2:7.9-

  d2:m7 g2:7 d2:m7 g2:7 g2:m7 c2:7 g2:m7 c2:7
  f1:7.9+ bf1:7 bf4:m7 ef4:7 g4:m7 c4:7 f2:6

  \chordOpenParen{ e4:m7.5- }
  \chordCloseParen{ a4:7.9- }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 110

  \xTextMark \markup{ \bold \box "A1, A2" }

  \bar ".|:"
  \repeat volta 2 {
  r8 d8 e8 d8 g4 d8 e8 | f8 d8 a'8 g8~ g2 | r8 g8 a8 g8 c4 g8 a8 | bf8 g8 d'8 c8~ c2 |
  \break
  af8 f8 g8 f8 af8 f4. | af8 f8 g8 f8 c'8 f,4. | df8 f8 g8 af8 g4 f8 d8 |
  } \alternative { {
  f1 |
  } {
  f1 |
  } }
  
  \sect "B"
  
  c'4 a8 b8 c4 a8 b8 | c4. a8 \tuplet 3/2 { c4 d4 c4 } |
  b4 g8 a8 \tuplet 3/2 { b4 a4 g4 } | b1 |
  \break
  bf4 g8 a8 bf4 g8 a8 | bf4 g8 a8 \tuplet 3/2 { bf4 c4 bf4 } |
  a2 \tuplet 3/2 { a4 g4 f4 } | a1 |
  
  \sect "A3"
  
  r8 d,8 e8 d8 g4 d8 e8 | f8 d8 a'8 g8~ g2 | r8 g8 a8 g8 c4 g8 a8 | bf8 g8 d'8 c8~ c2 |
  \break
  af8 f8 g8 f8 af8 f4. | af8 f8 g8 f8 c'8 f,4. | df8 f8 g8 af8 g4 f8 d8 | f2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
