%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Alone Together"
  subtitle = \instrument
  poet = ""
  composer = "Howard Dietz and Arthur Schwartz"
  copyright = "© 1932 HARMS Incorporated"
}

refrainLyricsOne = \lyricmode {
A -- lone __ to -- ge -- ther, __ be -- yond the crowd __
A -- bove the world, __ we're not too proud
to cling __ to -- ge -- ther, __ we're strong
as long as we're __ to -- ge -- ther. __

"A -" get -- ther. __ Our

love __ is as deep as the sea. __
Our love __ is as great as a love __ can be,
And we __ can wea -- ther __ the great un -- known __
If we're a -- lone __ to -- ge -- ther. __
}

refrainLyricsTwo = \lyricmode {
_ lone __ to -- ge -- ther, __ the blind -- ing rain, __
The star -- less night, __ were not in vain. __
For we're __ to -- ge -- ther __ and what is there
To fear __ "to -"
}

refrainChords = \chordmode {
  s8

  d1:m6 e2:m7.5- a2:7.9- d1:m6 e2:m7.5- a2:7.9-
  d1:m6 a2:m7.5- d2:7.9- g2:m7 d2:7.9- g1:m7
  
  b2:m7 e2:7 g2:m7 c2:7 f1
  e2:m7.5- a2:7.9-.5-
  
  d1:maj7 e2:m7 a2:7.9-
  
  d1:maj7 d1:maj7
  
  a1:m7.5- d1:7.9- g1:m7 g1:m7
  g1:m7.5- c1:7.9- f1:maj7 e2:m7.5- a2:7.9-

  d1:m6 e2:m7.5- a2:7.9- d1:m6 e2:m7.5- a2:7.9-
  d2:m6 b2:m7.5- bf2:9 a2:7.9-.5+ d1:m6

  \chordOpenParen{ bf2:9 }
  \chordCloseParen{ a2:7.9- }
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 110

  \partial 8 d8 |

  \mark \markup{ \box "A1,A2" }
  
  \repeat volta 2 {
    f2~ f4. d8 | e8 e4.~ e2~ | e4 r8 d8 e4. f8 | a1~ |
    \break
    a4 r8 d,8 e4. f8 | a1~ | a4 r8 g8 a4. bf8 | d2~ d4. d8 |
    \break
    e2~ e4. d8 | c8 c4.~ c4. bf8 | a4. g8 a4. g8 | a2~ a4. g8 |
    \break
    
  } \alternative { {
    fs8 fs4.~ fs2~ | fs2 r4 r8 d8 |
    } {
    fs8 fs4.~ fs2~ | fs2. d4 | } }
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  c'1~ | \tuplet 3/2 { c4 a4 bf4 } \tuplet 3/2 { c4 ef4 d4 } | bf1~ | bf2. d,4 |
  \break
  bf'1~ | \tuplet 3/2 { bf4 g4 a4 } \tuplet 3/2 { bf4 df4 c4 } | a2~ a4. f8 | g2~ g4. d8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }
  
  f2~ f4. d8 | e8 e4.~ e2~ | e4 r8 d8 e4. f8 | a1~ |
  \break
  a4 r8 a8 b4. d8 | f2~ f4. cs8 | d8 d4.~ d2~ | d4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
