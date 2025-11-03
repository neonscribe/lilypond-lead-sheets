%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Time Changes Everything"
  subtitle = \instrument
  poet = ""
  composer = "Tommy Duncan"
  copyright = \markup \small "© 1941 Red River Songs, Inc."
}

refrainLyrics = \lyricmode {
There was a time when I thought of no oth -- er,
and we sang our own love's re -- frain,
and our hearts beat as one as we had our fun,
but time chang -- es ev -- 'ry -- thing.
(And when you)
}

refrainChords = \chordmode {
  s2.
  
  f1:6 f1:6 c1:7 c1:7
  c1:7 c1:7 f1:6 f1:6 
  f1:6 f1:7 bf1:6 bf1:6
  f1:6 c1:7 f1:6 f1:6
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Fast [Bob Wills 1940]" 4 = 190

  \partial 2. c4 f4 g4 |
  \bar "||"
  
  a2 a4 g4 | f2 c4 f4 | e4 g2.~ | g2 e4 f4 |
  \break
  g2 g4 g4 | c2~ c4 c4 | a1~ | a2 a4 bf4 |
  \break
  c2 c4 c4 | a2 g4 f4 | bf2 bf4~ bf4 | f2. g4 |
  \break
  a2 bf4 a4 | g2. e4 | f1~ f4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  c4 f4
  \endParenthesis \parenthesize g4 |  
  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Verse 4 } }
   \vspace #4
   \line { \large { Verse 5 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { And when you left me my poor heart was broken. } }
   \line { \large { Our romance seemed all in vain. } }
   \line { \large { The dark clouds are gone and there's blue skies again. } }
   \line { \large { Yes, time changes everything. } }
   \vspace #1
   \line { \large { The time has passed and I have forgotten you. } }
   \line { \large { Mother Nature does wonderful things. } }
   \line { \large { I guess it is true for me and for you } }
   \line { \large { 'cause time changes everything. } }
   \vspace #1
   \line { \large { Oh, you can change the name of an old song. } }
   \line { \large { Rearrange it and make it swing. } }
   \line { \large { I thought nothing could stop me from loving you } }
   \line { \large { but time changes everything. } }
   \vspace #1
   \line { \large { So good luck to you and may God bless you. } }
   \line { \large { I can't say we won't love again. } }
   \line { \large { You have gone your way and I'll go mine, } }
   \line { \large { 'cause time changes everything } }
 }
}
