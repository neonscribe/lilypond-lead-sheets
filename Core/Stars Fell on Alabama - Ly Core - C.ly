%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Stars Fell on Alabama"
  subtitle = \instrument
  poet = "Mitchell Parish"
  composer = "Frank Perkins"
  copyright = "© 1934 by Mills Music Inc., 1619 Broadway, New York, N.Y."
}

firehouseIntroChords = \chordmode {
  f2 f2:dim7 c2 a4:m c4:5+ c2:6 g2:7 c1:7
}

sheetIntroChords = \chordmode {
  d2:m7 g2:7.9- c2 a4:m c4:5+ a2:m7 d2:7 e2:m7 a2:7.9-
}

rbthreeIntroChords = \chordmode {
  d2:m7 g2:7 c2:maj7 f2:maj7 a2:m7 d2:7 e2:m7 a2:7
}

introLyrics = \lyricmode {
}

introChords = \rbthreeIntroChords

introKey = c

introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 92

  \mark \markup{ "Intro" }
  
  f8 f8 d8 d8 af'8 af4. | g8 g8 e8 e8 c'2 | c8 c8 a8 a8 d4 b4 | g1 |
  \bar "||"
  \break
}

verseLyrics = \lyricmode {
Moon -- light and mag -- no -- lia,
star -- light in your hair,
All the world, a dream come true.
Did it real -- ly hap -- pen,
was I real -- ly there,
was I real -- ly there with you?
}

firehouseVerseChords = \chordmode {
  f2 f2:dim7 c2 c2:dim7 f2 g2:7 c1:7
  f2 f2:dim7 c2 a2:m c2 d2:7 g2:7 g2:7.9+
}

sheetVerseChords = \chordmode {
  d2:m7 g2:7 c2 a2:7 d2.:m7 g4:7 c2 cs2:dim7
  d2:m7 g2:7 c2 a4:m c4:5+ a2:m7 d2:7 g2:7sus g2:7
}

rbthreeVerseChords = \chordmode {
  d2:m7 g2:7 c2:maj7 a2:7 d2.:m7 g4:7 c2 cs2:dim7
  d2:m7 g2:7 c2:maj7 a4:m c4:5+ a2:m7 d2:7 g2:sus7 g2:7
}

verseChords = \rbthreeVerseChords

verseKey = c

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 92

  \mark \markup{ "Verse" }
  
  f8 f8 d8 d8 af'8 af4. | g8 g8 e8 e8 bf'2 |
  \break
  a8 a8 f8 f8 c'4 b4 | g1 |
  \break
  f8 f8 d8 d8 af'8 af4. | g8 g8 e8 e8 c'2 |
  \break
  c8 c8 a8 a8 d4 b4 | g1 |

  \bar "||"
  \pageBreak
}

refrainLyrics = \lyricmode {
We lived our lit -- tle dra -- ma,
we kissed in a field of white,
and stars fell on Al -- a -- ba -- ma last night,

I can't for -- get the glam -- our,
your eyes held a ten -- der light,
and stars fell on Al -- a -- ba -- ma last night,

I nev -- er planned in my im -- a -- gi -- na -- tion
a sit -- u -- a -- tion so hea -- ven -- ly,
A fair -- y land that no one else could en -- ter,
and in the cen -- ter just you and me, dear,

My heart beat like a ham -- mer,
my arms wrapped a -- round you tight,
and stars fell on Al -- a -- ba -- ma last night.
}

realBookOfBluesRefrainChords = \chordmode {
  c2 a2:7 d2:9 g2:9 c1 e2:m ef2:dim7
  d1:m7 d2:9 g2:13 e2:m ef2:7 d2:m7 g2:7

  c2 a2:7 d2:9 g2:9 c1 e2:m ef2:dim7
  d1:m7 d2:9 g2:13 c2 f2:7 c1
  
  d2:m7 g2:7 e2:m7 ef2:dim d2:m7 g2:7 c2 cs2:dim7
  d2:m7 g2:7 a2:m a2:m7 fs2:m7 b2:7 e2 d4:m7 g4:7

  c2 a2:7 d2:9 g2:9 c1 e2:m ef2:dim7
  d1:m7 d2:9 g2:13 c2 f2:7 c1
}

firehouseRefrainChords = \chordmode {
  c4 bf4:6 a2:7 d2:7 g2:7.5+ c1 e2:m ef2:dim7
  d1:m7 g1:7 c2 a2:7 d2:m7 g4:7 g4:7.5+

  c4 bf4:6 a2:7 d2:7 g2:7.5+ c1 e2:m ef2:dim7
  d1:m7 g1:7 c2 f2:m6 c1

  d2:m7 g2:7 e2:m ef2:dim7 d2:m7 g2:7 c2 a2:7
  d2:m7 g4:7 gs4:dim7 a2:m a2:m7/g fs2:m7 b2:7 e2 g2:7

  c4 bf4:6 a2:7 d2:7 g2:7.5+ c1 e2:m ef2:dim7
  d1:m7 g1:7 c2 
  \chordOpenParen{ f2:m6 }
  c2
  \chordCloseParen{ g2:7.5+ }
}

realBookVolThreeRefrainChords = \chordmode {
  c2:maj7 a2:7 d2:m7 g2:7 c2:maj7 f2:maj7 e2:m7 ef2:dim7
  d1:m7 g2:7 g2:7/f e2:m7 a2:7 d2:m7 g2:7

  c2:maj7 a2:7 d2:m7 g2:7 c2:maj7 f2:maj7 e2:m7 ef2:dim7
  d1:m7 g1:7 c2:maj7 f2:7 e2:m7 a2:7
  
  d2:m7 g2:7 e2:m7 a2:m7 d2:m7 g2:7 c2:maj7 a2:7
  d2:m7 b4:m7.5- e4:7 a2:m7 a2:m7/g fs2:m7 b2:7 e2:maj7 g2:7

  c2:maj7 a2:7 d2:m7 g2:7 c2:maj7 f2:maj7 e2:m7 ef2:dim7
  d1:m7 g1:7 c1:maj7
  \chordOpenParen{ d4:m7 }
  \chordCloseParen{ g4:7 }

  \chordOpenParen{ e4:m7 }
  \chordCloseParen{ a4:7 }
}

newRealThreeRefrainChords = \chordmode {
  c2:maj7 a2:7.9- d2:7 g2:7.5+ c2:maj7 d2:m7 e2:m7 a2:7.9-
  d1:m7 g1:13 c2:maj7 a2:7.9- d2:m7 g2:7.9-

  c2:maj7 a2:7.9- d2:7 g2:7.5+ c2:maj7 d2:m7 e2:m7 a2:7.9-
  d1:m7 g1:13 c2:6 bf2:9 c2:6 a2:7.9-
  
  d2:m7 g2:7 e2:m7 ef2:dim7 d2:m7 g2:7 c2:6 a2:7.9-
  d2:m7 g2:7 a2:m7 a2:m7/g f2:m11 b2:9 e4:maj7 cs4:m7 d4:m7 g4:7

  c2:maj7 a2:7.9- d2:7 g2:7.5+ c2:maj7 d2:m7 e2:m7 a2:7.9-
  d1:m7 g1:13 c2:6
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainChords = \realBookVolThreeRefrainChords

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 92

  \mark \markup{ "Refrain" \box "A1" }
  \set Score.currentBarNumber = #1
  
  e2 ds8 e8 ds8 e8 | a4 a2 g4 | e'2 ds8 e8 ds8 e8 | b2. bf4 |
  a2 gs8 a8 gs8 a8 | e4 e2 d4 | g1 | r1 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  e2 ds8 e8 ds8 e8 | a4 a2 g4 | e'2 ds8 e8 ds8 e8 | b2. bf4 |
  a2 gs8 a8 gs8 a8 | e4 e2 d4 | c1 | r2 r8 e8 f8 g8 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  a4. a8 g8 f8 e8 d8 | b'4 b4. c8 d8 c8 | g4 g4. a8 b8 g8 | e2 r8 e8 f8 g8 |
  a4. a8 g8 f8 e8 d8 | c'4 c4. d8 e8 c8 | b4 b4. cs8 ds8 b8 | gs2 g2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "C" }

  e2 ds8 e8 ds8 e8 | a4 a2 g4 | e'2 ds8 e8 ds8 e8 | b2. bf4 |
  a2 gs8 a8 gs8 a8 | e4 e2 d4 | c1 | r2^\markup{ "to " \box "A1" } r2^\markup{ "to " \box "B" } |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"
\include "../Include/verse.ily"
\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { Clarinet intro 4 bars, vocal verse, vocal chorus } }
    \line { \huge { Guitar solo A1, A2. Clarinet solo B, C. Turnaround to B } }
    \line { \huge { Vocal B to end, at tempo, hold last note } }
  }
}

\include "../Include/notes.ily"
