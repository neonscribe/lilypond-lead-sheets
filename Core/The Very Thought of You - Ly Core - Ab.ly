%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "The Very Thought of You"
  subtitle = \instrument
  poet = ""
  composer = "Ray Noble"
  copyright = \markup \small { \now " " "© 1934 Campbell Connelly & Co. Ltd." }
}

refrainMaleSingerLyrics = \lyricmode {
The ve -- ry thought of you, __ and I for -- get to do __
the lit -- tle or -- di -- na -- ry things that ev -- 'ry -- one ought to do. __
I'm liv -- ing in a kind of day -- dream, I'm hap -- py as a king;
And, fool -ish tho' it may seem, to me __ that's ev -- 'ry -- thing.
The mere i -- dea of you, __ the long -- ing here for you; __
You'll nev -- er know how slow the mo -- ments go 'til I'm near to you. __
I see your face in ev -- 'ry flow -- er, your eyes in stars a -- bove; __
It's just the thought of you, __ the ver -- y thought of you, my love. __
}

refrainFemaleSingerLyrics = \lyricmode {
The ve -- ry thought of you, __ and I for -- get to do __
the lit -- tle or -- di -- na -- ry things that ev -- 'ry -- one ought to do. __
I'm liv -- ing in a kind of day -- dream, I'm hap -- py as a queen;
And, fool -ish tho' it may seem, to me __ that's ev -- 'ry -- thing.
The mere i -- dea of you, __ the long -- ing here for you; __
You'll nev -- er know how slow the mo -- ments go 'til I'm near to you. __
I see your face in ev -- 'ry flow -- er, your eyes in stars a -- bove; __
It's just the thought of you, __ the ver -- y thought of you, my love. __
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainChords = \chordmode {
  s2
  
  af2:maj7 bf2:m7 c2:m7 bf2:m7 af2:6 bf2:m7 c2:m7 bf2:m7
  af2:6 bf2:m7 b2:dim7 af2:6/c bf1:7 bf1:7

  bf2:m7 ef2:7 g2:m7.5- c2:7.9- f2:m7 f2:m7/ef d2:m7.5- g2:7.9-
  c2:m7 f2:m7.5- bf1:sus bf1:m7 ef1:7

  af2:maj7 bf2:m7 c2:m7 bf2:m7 af2:6 bf2:m7 c2:m7 bf2:m7
  af2:6 bf2:m7 b2:dim7 af2:6/c bf1:7 bf1:7

  bf2:m7 ef2:7 g2:m7.5- c2:7.9- f2:m7 f2:m7/ef d1:dim7
  bf2:m7 a2:dim7 bf2:m7 ef2:7 af1:6
  \chordOpenParen{ bf2:m7 }
  \chordCloseParen{ ef2:7 }
}

refrainKey = af

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
  \tempo "Ballad [Nat King Cole 1958]" 4 = 79

  \partial 2 \invisEighth c8 ef8 c8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  ef8 ef8 ef2.~ | ef2~ ef8 c8 ef8 c8 | f8 f8 f2.~ | f2~ f8 f8 af8 f8 |
  \break
  af4. f8 af4. f8 | af4. f8 \tuplet 3/2 { af4 f4 af4 } |
  c8 c8 c2.~ | c2~ c8 c8 ef8 c8 |
  
  \sect "B"
  
  ef4. c8 ef4. c8 | bf4 bf2 af4 | c4. af8 c4. af8 | g2. f4 |
  \break
  ef4. c8 ef4. f8 | g4 g2 af4 | bf2~ bf8 af8 f8 df8 | bf2 r8 c8 ef8 c8 |
  
  \sect "A2"
  
  ef8 ef8 ef2.~ | ef2~ ef8 c8 ef8 c8 | f8 f8 f2.~ | f2~ f8 f8 af8 f8 |
  \break
  af4. f8 af4. f8 | af4. f8 \tuplet 3/2 { af4 f4 af4 } |
  c8 c8 c2.~ | c2~ c8 c8 ef8 c8 |
  
  \sect "C"

  ef4. c8 ef4. c8 | bf4 bf2 af4 | c4. af8 c4. af8 | f2~ f8 c8 ef8 c8 |
  \break
  ef8 ef8 ef4~ ef8 c8 ef8 c8 | ef8 ef8 ef2 c'4 | af1~ | af2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup { "The" \noteName { \transpose \refrainKey \whatKey f } "note in measure 29 is sometimes sung as"
	   \noteName { \transpose \refrainKey \whatKey g } "instead." }
