%% -*- Mode: LilyPond -*-

songID = "2026-09-19T15:41:29.400127Z"

\include "../Include/lead-sheets.ily"

headerTitle = "(Sittin' on) The Dock of the Bay"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Steve Cropper, Otis Redding"
headerCopyright = "© 1968 East/Memphis Music Corp."

straightEighths = ##t

introKey = g

introChords = \chordmode {
  g1 g1 g1 g1
}

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef "bass"
  \tempoFour "Medium Slow Straight Eighths [Otis Redding 1968]" 104

  \sectNoBar "Intro"
  
  g,,4. g8 d'4 d4 | g,4. g8 d'4 d4 | g,4. g8 d'4 d4 | g,4. g8 d'4 d4 |

  \bar "||"
}

refrainChords = \chordmode {
  g8*7 b8*9 c8*5 b8 bf8 a8*9
  g8*7 b8*9 c8*5 b8 bf8 a8*9

  g8*7 e8*9 g8*7 e8*9
  g1 a1 g1
  
  e1
  
  e1
  
  g2 d4. c8*9 
  g2 d4. c8*9 
  g2 d4. c8*5 g2
  f1 d1
  
  e1 g1 g1 g1 e1
}

refrainLyrics = \lyricmode {
Sit -- tin' in the morn -- ing sun __
I'll be sit -- tin' when the eve -- nin' comes. __
Watch -- ing the ships roll in, __
then I watch 'em roll a -- way __ a -- gain.

Yeah, __ I'm sit -- tin' on the dock of the bay,
watch -- ing the tide __ roll __ a -- way. __
Ooh, __ I'm just sit -- tin' on the dock of the bay __
wast -- in' time. __

I
_

Looks like noth -- ing's gon -- na change. __
Ev -- 'ry -- thing still __ re -- mains the same. __
I can't do what ten peo -- ple tell me to do, __
so I guess I'll re -- main  __ the same, yes
I'm
_
}

refrainKey = g

whatKey = #(or whatKey refrainKey)
bassKey = #(or bassKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \sectNoBar "Verse"
  
  \bar ".|:"
  \repeat volta 2 {
  
  g8 g8 g8 g8 a4 g8 b8~ | b2 r4 b8 b8 | c8 c8 c8 c8 c8( b8) bf8 a8~ | a2 r2 |
  g8 g4 g8 a4 g8 b8~ | b2 r4 b8 b8 | c8 c8 c8 c8 d8( b8) bf8 a8~ | a4 r8 b8( a4) r8 e8 |
  
  \sect "Chorus"
  
  g8 g8 g8 e8 g8 g8 g8 a8( | e2) a8 b8 b8 e8( | d8 b16 a16 g4) b8( a8) g8 a8( | e4.) e'8~ e8 a,8 a4 |
  e8 g8 g8 e8 g8 g8 g8 a8( | e2) a8( g8) e8 g8~( | g4. b16 a16 g4. e8~ \textToCodaLastTime |
  \alternative { \volta 1 {
  e2) r4 r8 e8 |
  } \volta 2 {
  e2\repeatTie r2 |
  } } }
  \sect "Bridge"
  
  r4 r8 g'8 e4 r8 g8 | e8 e8 d8 b16( a16 g4) r4 | r4 r8 e'8~ e8 d8 d4 | b16( a16 g8) g8 b8 a8 a8( g4) |
  r4 r8 g'8 e8 e8 d4 | g8 e8 d8 e8 d8 b8 a8( g8) | r4 f'8 f8 f8 f8 d8 f8~ | f8 b,8 f'8( e8 d8)
  \override NoteHead.style = #'cross
  b8
  \revert NoteHead.style
  r8 e,8 \dalSegno |

  \textCodaBreak

  e2\repeatTie r4 r8 e'8_"(whistle)" |
  
  \repeat volta 2 {
  g4 e4 d8 b8 r8 a8 | b8 a8 b4 a8 g8 r8 a8 | b8 a8 b4 a8 g8 a8 a8 | b8 d8 d4~ d4.
  \override Parentheses.font-size = #5
  \parenthesize e8
  }
}

afterText =
\markup {
  \column
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Bridge } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column
  {
   \vspace #4
   \line { \large { Sittin' in the morning sun, } }
   \line { \large { I'll be sittin' when the evenin' comes. } }
   \line { \large { Watching the ships roll in, } }
   \line { \large { then I watch 'em roll away again. } }
   \vspace #1
   \line { \large { Yeah, I'm sittin' on the dock of the bay, } }
   \line { \large { watching the tide roll away. } }
   \line { \large { Ooh, I'm just sittin' on the dock of the bay, } }
   \line { \large { Wastin' time. } }
   \vspace #1
   \line { \large { I left my home in Georgia } }
   \line { \large { headed for the Frisco bay. } }
   \line { \large { I have nothin' to live for, } }
   \line { \large { It looks like nothin's gonna come my way. } }
   \vspace #1
   \line { \large { So I'm just gon' sit on the dock of the bay, } }
   \line { \large { watching the tide roll away. } }
   \line { \large { Ooh, I'm just sittin' on the dock of the bay, } }
   \line { \large { Wastin' time. } }
   \vspace #1
   \line { \large { Looks like nothing's gonna change. } }
   \line { \large { Everything still remains the same. } }
   \line { \large { I can't do what ten people tell me to do, } }
   \line { \large { so I guess I'll remain the same, yes. } }
   \vspace #1
   \line { \large { I'm sittin' here restin' my bones, } }
   \line { \large { And this loneliness won't leave me alone. } }
   \line { \large { Yes, two thousand miles I roamed } }
   \line { \large { just to make this dock my home. } }
   \vspace #1
   \line { \large { Now, I'm just gon' sit at the dock of the bay, } }
   \line { \large { watching the tide roll away. } }
   \line { \large { Ooh, I'm just sittin' on the dock of the bay, } }
   \line { \large { Wastin' time. } }
 }
}

 \include "../Include/bassintrorefrain.ily"
