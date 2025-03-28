%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "I Wish I Knew How It Would Feel to Be Free"
  subtitle = \instrument
  poet = "Billy Tayor & Dick Dallas"
  composer = "Billy Taylor"
  copyright = \markup \small "© 1964 Duane Music Inc."
}

refrainLyrics = \lyricmode {
I wish I knew how __ it would feel __ to be free. __
I wish I could break __ all these chains __ hold -- ing me. __
I wish I could say __ all the things __ I should say, __
say 'em loud, __ say 'em clear, __ for the whole __ world to hear. __
all
}

refrainChords = \chordmode {
  \chordInsideParens{ c4:sus7 }
  
  f2 a2:7/e d2:m7 f2:7 bf2:maj7 c2:sus7 f2:6 c2:sus7
  f2 bf2/f f1 c2 g2:7 c1:7
  f2 a2:7/e d2:m7 f2:7 bf2:maj7 c2:sus7 f2:6 b2:dim7
  f2/c a2:7/cs d2:m7 b2:dim7 f2/c c2:sus7 f2:6 c2:sus7
  
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Gospel" 4 = 124

  \partial 4 f4 |
  \bar "||"
  
  c'2 a8 g4 f8~ | f2 d8 f4 f8~ | f2 d8 f4 f8~ | f2 r4 f4 |
  \break
  c'2 d8 c4 a8~ | a2 g8 a4 g8~ | g2 e8 d4 c8~ | c2 r4 f4 |
  \break
  c'2 a8 g4 f8~ | f2 d8 f4 f8~ | f2 d8 f4 f8~ | f2 f8 f4 a8~ |
  \break
  a2 g8 g4 f8~ | f2 d8 d4 c8~ | c2 f8 f4 f8~ | f2. r4 |

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
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
\vspace #2
\line { \large { I wish I could share all the love in my heart, } }
\line { \large { Remove all the bars that still keep us apart. } }
\line { \large { I wish you could know what it means to be me, } }
\line { \large { Then you'd see and agree every man should be free. } }
\vspace #1
\line { \large { I wish I could give all I'm longing to give. } }
\line { \large { I wish I could live like I'm longing to live. } }
\line { \large { I wish I could do all the things I can do, } }
\line { \large { Though I'm way overdue, I'd be starting anew. } }
\vspace #1
\line { \large { I wish I could be like a bird in the sky. } }
\line { \large { How sweet it would be if I found I could fly. } }
\line { \large { I'd soar to the sun and look down at the sea, } }
\line { \large { Then I'd sing 'cause I know how it feels to be free. } }
} }