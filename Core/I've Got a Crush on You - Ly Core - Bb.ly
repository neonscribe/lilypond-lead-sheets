%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "singerGender": [ "male", "female" ] } }

%}

songID = "2026-10-24T22:24:38.533099Z"

\include "../Include/lead-sheets.ily"

headerTitle = "I've Got a Crush on You"
headerSubtitle = \subtitle
headerPoet = "Ira Gershwin"
headerComposer = "George Gershwin"
headerCopyright = "© 1930 New World Music Corporation"

leadingEighth = ##t

verseMaleSingerLyrics = \lyricmode {
How glad the man -- y mil -- lions of An -- na -- belles and Lill -- ians would be __
to cap -- ture me!
But you had such per -- sist -- ence, you broke down my re -- sist -- ance.
I fell, __ and it was swell.
I'm your big and brave and hand -- some Ro -- me -- o.
How I won you I shall nev -- er, nev -- er know.
It's not that you're at -- trac -- tive, but oh, my heart grew ac -- tive when you __ came in -- to view. __
}

verseFemaleSingerLyrics = \lyricmode {
How glad the man -- y mil -- lions of Tim -- o -- thys and Will -- iams would be __
to cap -- ture me!
But you had such per -- sist -- ence, you broke down my re -- sist -- ance.
I fell, __ and it was swell.
You're my big and brave and hand -- some Ro -- me -- o.
How I won you I shall nev -- er, nev -- er know.
It's not that you're at -- trac -- tive, but oh, my heart grew ac -- tive when you __ came in -- to view. __
}

verseLyrics =
#(if (and (defined? 'singerGender)
          (equal? singerGender "female"))
  verseFemaleSingerLyrics
  verseMaleSingerLyrics)

verseChords = \chordmode {
  \partial 8 \chordInsideParens{ f8:7 }
  
  bf1:6 c2:m7 f2:7 bf2:maj7 c4:m7 f4:7 bf2:maj7 f2:13
  bf1:6 c2:m7 f2:7 d2:maj7 e4:m7 a4:7 d1:maj7
  c4:m7 f4:13 bf4/d df4:dim7 c4:m7 f4:7 bf2:6
  c4:m7 f4:13 bf4:6 bf4:6/a g4:m7 c4:13 f2:13
  bf1:6 c2:m7 f2:7 c1:9 c2:m7 f8:9
}

verseKey = bf

whatKey = #(or whatKey verseKey)


verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempoFour "Freely"

  \partial 8 f8 |

  \sectNoBreak "Verse"
  
  bf8 c8 d8 c8 ef8 d4 c8 | bf8 a8 c8 bf8 a8 g4 f8 | d2~ d8 g8 f8 ef8 | f2. r8 f8 |
  \break
  bf8 c8 d8 c8 ef8 d8 r8 c8 | bf8 a8 c8 bf8 a8 g8 r8 f8 | fs2~ fs8 b8 a8 g8 | a1 |

  \break
  \bar "||-||"

  c4 d4 bf8 bf8 bf8 bf8 | bf8 bf8 c8 c8 d2 | c4 d4 bf8 bf8 bf8 bf8 | bf8 bf8 a8 a8 f4. f8 |
  \break
  bf8 c8 d8 c8 ef8 d4 c8 | bf8 a8 c8 bf8 a8 g4 f8 | e2~ e8 d'8 c8 bf8 |
  \partial 8*5 c2~ c8\fermata |

  \bar "||"
  \xxPageBreak
}

refrainLyrics = \lyricmode {
I've got a crush on you, __ sweet -- ie pie. __
All the day and night -- time hear me sigh. __
I nev -- er had __ the least no -- tion __ that I could fall with __ so much e -- mo -- tion.
Could you coo, __ could you care, __ for a cun -- ning cot -- tage we could share? __
The world will par -- don my mush, 'cause I've got a crush, my ba -- by on you.

(I've got a)
}

refrainChords = \chordmode {
  \chordInsideParens{ f4.:9 }
  
  bf2:maj7 df2:dim7 c2:m7 f2:13.9- bf2:maj7 df2:dim7 c2:m7 f2:13.9-
  bf2:maj7 g2:m7 c1:13 g2:m9 c2:13 c2:m9 f2:9
  
  bf2:maj7 df2:dim7 c2:m7 f2:13.9- bf2:maj7 df2:dim7 c2:m7 af2:9
  bf2:maj7 g2:m7 c2:13 d4:m7 g4:m7 c2:9 f2:13 bf2:6 
  \chordInsideParens{ f2:7 }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Ella Fitzgerald 1950]" 104

  \partial 4. f8 g8 gs8 |

  \bar ".|:"
  \repeat volta 2 {

  \sectStartRefrainNoBreak "A1"
  
  a4 c8 a8~ a2 | g8 bf4 d8~ d2 | a8 a8 c8 c8 a8 a4. | g8 bf4 d8~ d4. c8 |
  \break
  f4 d8 c8~ c8 bf8 d4 | a4 g4~ g8 c8 d8 c8 | a4. g8~ g8 c8 d8 c8 | d4 c2 r4 |
  
  \sect "A2"

  a4 c8 a8~ a2 | g8 bf4 d8~ d2 | a8 a8 c8 c8 a8 a4. | g8 bf4 ef8~ ef4. d8 |
  \break
  f4 d8 c8~ c8 bf8 d4 | a4 r4 d,8 f8 g8 bf8 | d4 cs8 d8~ d8 cs8 d4 | bf2
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  r8 f8 g8
  \endParenthesis \parenthesize gs8 |
  }
  \bar ":|."
}

\include "../Include/verserefrain.ily"
