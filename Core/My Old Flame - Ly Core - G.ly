%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
   (set-global-staff-size 18))

\header {
  title = "My Old Flame"
  subtitle = \instrument
  poet = ""
  composer = "Arthur Johnson and Sam Coslow"
  copyright = \markup \small "© 1934 Famous Music Corporation"
}

refrainLyrics = \lyricmode {
My old flame, __ I can't ev -- en think of his name, but it's fun -- ny now and then
how my thoughts go flash -- ing back a -- gain to my old flame.

_

I've met so man -- y who had fas -- cin -- a -- ting ways. __
A fas -- cin -- a -- ting gaze in their eyes, __ some who took me up to the skies. __
But their at -- tempts at love were on -- ly im -- i -- ta -- tions of my old flame. __
I can't ev -- en think of his name. But I'll nev -- er be the same
un -- til I dis -- cov -- er what be -- came of my old flame.
}

refrainLyricsTwo = \lyricmode {
My old flame, my new lov -- ers all seem so tame.
For I have -- n't met a gent so mag -- nif -- i -- cent or el -- e -- gant as my old _ flame.
}

refrainChords = \chordmode {
  g1:maj7 b2:m7.5- e2:7.9- a1:m7 a2:m7.5- d2:7
  g2:6 c4:7 f4:7 bf2:6 ef2:7 d2:7 ef2:7
  
  a2:m7 d2:7
  
  c2:m7 f2:7
  
  bf1:maj7 c2:m7 f2:7 af2:7 g2:7 c1:7
  c2:m7 f2:7 bf2:maj7 ef2:7 e2:m7 a2:7 a2:m7 d2:7

  g1:maj7 b2:m7.5- e2:7.9- a1:m7 a2:m7.5- d2:7
  g2:6 c4:7 f4:7 bf2:6 ef2:7 a2:m7 d2:7 g2:6
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Billie Holiday 1947]" 4 = 74

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  b2 d2 | f,2~ f4. e8 | a8 a8 a8 a8~ a8 b8 c4 | ef,2. d8 e8 |
  \break
  g8 g8 d8 e8 g4 g8 a8 | bf8 bf8 f8 g8 \tuplet 3/2 { bf8 g8 bf8~ } bf8 c8 | d2 a2 |
  \alternative { \volta 1 {
  a2. r4 |
  } \volta 2 {
  a2. r4 |
  } } }
  \sect "B"
  
  r8 d8 d8 bf8 bf8 f8 f8 e8 | ef8 f8 \tuplet 3/2 { ef8 f8 ef8~ } ef4. d8 |
  ef8 f8 \tuplet 3/2 { ef8 f8 ef8~ } ef8 cs8 d8 a'8~ | a2. r4 |
  \break
  g8 a8 \tuplet 3/2 { g8 a8 g8~ } g8 e8 f8 c'8~ | c2~ c4. bf8 |
  a8 a8 g8 g8 e4. a8 | d8 d8 c8 c8 a8 a8 as4 |
  
  \sect "A3"
  
  b2 d2 | f,2~ f4. e8 | a8 a8 a8 a8~ a8 b8 c4 | ef,2. d8 e8 |
  \break
  g8 g8 d8 e8 g4 g8 a8 | bf8 bf8 f8 g8 \tuplet 3/2 { bf8 g8 bf8~ } bf8 c8 | 
  d2 bf2 | g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
