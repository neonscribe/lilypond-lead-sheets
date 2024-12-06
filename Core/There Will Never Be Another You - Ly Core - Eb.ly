%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "There Will Never Be Another You"
  subtitle = \instrument
  poet = "Harry Warren"
  composer = "Mack Gordon"
  copyright = "© 1942 Twentieth Century Music Corporation."
}

refrainLyrics = \lyricmode {
  There will be man -- y oth -- er nights like this, __
  And I'll be stand -- ing here with some -- one new, __
  There will be oth -- er songs to sing,
  an -- oth -- er fall, an -- oth -- er spring.
  But there will nev -- er be an -- oth -- er you. __
  There will be oth -- er lips that I may kiss, __
  But they won't thrill me like yours used to do, __
  Yes, I may dream a mil -- lion dreams,
  but how can they come true,
  if there will nev -- er ev -- er be an -- oth -- er you?
}

refrainChords = \chordmode {
  s4

  ef1:maj7 ef1:maj7 d1:m7.5- g1:7
  c1:m7 
  \chordInsideParens{ f1:7 }
  bf1:m9 ef1:3.5.13

  af1:maj7 df1:9.11+ ef1:maj7 c1:m7
  f1:9 f1:9 f1:m7 bf1:7

  ef1:maj7 ef1:maj7 d1:m7.5- g1:7
  c1:m7
  \chordInsideParens{ f1:7 }
  bf1:m9 ef1:3.5.13

  af1:maj7 df1:9.11+ ef1:maj7 a2:m7.5- d2:7
  ef2:6 af2:9.11+ g2:m7 c2:7 f2:m7 bf2:3.5.13 ef2:6

  \chordInsideParens{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up" 4 = 155

  \xTextMark \markup{ \bold \box "A1" }
  
  \partial 4 bf4 |
  \bar "$"
  
  c4 d4 ef4 f4 | g4 bf4 f4. ef8 | f1~ | f2. g4 |
  \break
  ef4 f4 g4 bf4 | c4 ef4 c4. bf8 | c1~ | c2. bf4 |
  \break
  
  \xTextMark \markup{ \bold \box "B1" }
  
  ef4 c4 bf4 af4 | g4 f4 g4 af4 | bf4 g4 f4 ef4 | f4 ef4 f4. ef8 |
  \break
  d'4 c4 bf4 a4 | g4 f4 g4 f4 | af1~ | af2. bf,4 |
  \bar "$"
  \break
  
  \xTextMark \markup{ \bold \box "A2" }

  c4 d4 ef4 f4 | g4 bf4 f4. ef8 | f1~ | f2. g4 |
  \break
  ef4 f4 g4 bf4 | c4 ef4 c4. bf8 | c1~ | c2. bf4 |
  \break

  \xTextMark \markup{ \bold \box "B2" }

  ef4 c4 bf4 af4 | g4 f4 g4. af8 | bf4 g4 f4 ef4 | d'2. c4 |
  \break
  bf4 ef4 d4 c4 | bf4 ef,4 bf'4 af4 | f2 g2 | ef1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { rubato guitar & vocal first 16, a tempo vocal to end, scat chorus, } }
    \line { \huge { accordion chorus, guitar chorus, vocal chorus with 29&30 3x tag, ritard on 31 } }
  }
}

\include "../Include/notes.ily"
