%% -*- Mode: LilyPond -*-

songID = "2026-10-17T03:14:12.062823Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Funny How Time Slips Away"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Willie Nelson"
headerCopyright = "© 1961 Tree Publishing Co. Inc."

refrainLyrics = \lyricmode {
Well, hel -- lo there. __ My it's been a long, long time. __
“How'm I do -- in'?” __ Oh, I guess that I'm do -- in' fine. __
It's been so long now __ and it seems that it was on -- ly yes -- ter -- day. __
Gee, ain't it fun -- ny __ how time slips a -- way. __
(How's your)
}

refrainChords = \chordmode {
  s4
  
  f1 bf1 f1 f1
  f1 bf1 f1 f1
  f1 f1:7 bf1 g1:7
  c1:7 c1:7 f2 bf2 f2 
  \chordInsideParens{ c2:7 }
}

refrainKey = f

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Slow [Willie Nelson 1965]" 80

  \partial 4 c'8 a8 |
  
  \sectNoBreak "Verse"
  
  c8 a8~ a2. | g8 f8 g8 f8 g4. f8 | d8( c8~ c2.~ | c2.) c'8 a8 |
  \bar "||-||"
  \break
  c8 a8~ a2. | g8 f8 g8 f8 g4. f8 | d8 c8~ c2.~ | c2 r8 a'8 a8 c8 |
  \bar "||-||"
  \break
  c8 a8~ a2 c8 a8 | c4 a2 f8 f8 | g2~ g8 a8 g8 a8 | g2~ g8 e'8 e8 d8 |
  \bar "||-||"
  \break
  d8 c4.~ c4. c,8 | bf'2. a8 a8 | f1~ | f2 r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize c'8
  \endParenthesis \parenthesize a8 |
  \bar "|."
}

afterText =
\markup {
  \column
  \bold
  {
   \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Verse 3 } }
   }
  \column
  {
    \hspace #4
    }
  \column
  {
   \vspace #2
   \line { \large { Well, hello there. My, it's been a long, long time } }
   \line { \large { “How'm I doin'?” Oh, I guess that I'm doin' fine. } }
   \line { \large { It's been so long now and it seems that it was only yesterday. } }
   \line { \large { Gee, ain't it funny, how time slips away. } }
   \vspace #1
   \line { \large { How's your new love? I hope that he's doin' fine. } }
   \line { \large { Heard you told him that you'd love him till the end of time. } }
   \line { \large { Now, that's the same thing that you told me, seems like just the other day. } }
   \line { \large { Gee, ain't it funny, how time slips away. } }
   \vspace #1
   \line { \large { I gotta go now, I guess I'll see you around. } }
   \line { \large { Don't know when though, never know, when I'll be back in town. } }
   \line { \large { But remember what I tell you, that in time you're gonna pay. } }
   \line { \large { And it's surprising how time slips away. } }
 }
}

\include "../Include/refrainonly.ily"
