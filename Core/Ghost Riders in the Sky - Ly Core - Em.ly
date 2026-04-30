%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

subtitle =
#(if (and (defined? 'subtitle) subtitle)
  subtitle
  "Standard Key")

\header {
  title = "(Ghost) Riders in the Sky (A Cowboy Legend)"
  subtitle = \subtitle
  poet = ""
  composer = "Stan Jones"
  copyright = \markup \small { \now " " "© 1949 Edwin H. Morris & Company, Inc." }
}

refrainLyrics = \lyricmode {
An old cow -- poke went rid -- in' out one dark and wind -- y day.
Up -- on a ridge he rest -- ed as he rode a -- long his way.
When all at once a might -- y herd of red -- eyed cows he saw
a plow -- ing through the rag -- ged sky, and up a cloud -- y draw.

Yip -- pee yie aye,
Yip -- pee yie oh,
ghost herd in the sky.

Their

sky. Their

sky.

Yip -- pee yie aye,
Yip -- pee yie oh,
ghost ri -- ders in the sky.

}

refrainChords = \chordmode {
  s4
  
  e1:m g1 g1 e1:m
  e1:m e1:m e1:m c1
  c1 a2:m e1:m e1:m
  
  g1 g1 e1:m e1:m
  c1 a1:m 
  
  e1:m e8*3:m7 e8*5:m6
  
  e1:m e4:m/b a4:m e4:m/g b4:m/fs
  
  e1:m e1:m
  g1 g1 e1:m e1:m
  c1 c1 g1 g1
  e1:m e1:m
  e1:m6 e1:m6
}

refrainKey = e

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium [Sons of the Pioneers 1949]" 115

  \partial 4 \invisEighth b,8 |

  \sectStart "Verse"
  
  \bar ".|:-||"
  \repeat volta 3 {
  
  b8 e8 e8 fs8 g8 g8 g8 e8 | d8 d8 d8 b8 d2 | r2 r4 r8 b8 | b8 e16 e16~ e8 fs8 g8 g16 g16~ g8 a8 |
  b8 b16 b16~ b8 g8 b4 r8 b8 | b8 b8 e8 e8 e8 b16 b16~ b8 b8 |
  b16 b8. a8 g8 e4 r8 b8 | c8 c8 c8 c8 g'16 g8 g16~ g4 |
  r2 r4 r8 fs8 |
  \time 2/4
  g8 e8 e8 d8 |
  \numericTimeSignature
  \time 4/4
  e1 |
  
  \sect "Chorus"
  
  r2 <b' \har g \har e>8 <b \har g \har e>8 <b \har g \har e>4 |
  <d \har b \har g>1~ | <d \har b \har g>2  <e \har b \har g>8 <e \har b \har g>8 <e \har b \har g>4 |
  <e \har b \har g>2( <b \har g \har e>2~ | <b \har g \har e>2) r2 |
  <c, \har e \har g >2 <c \har e \har g >4( <c \har e \har g >4) |
  <g' \har e \har c'>2. <g \har e \har c'>4 |

  \alternative { \volta 1 {

  <e \har g \har b>1 |
  r2 r4 r8 b8 |  
  } \volta 2 {
  <e \har g \har b>1 |
  r2 r4 r8 b8 |  
  } \volta 3 {
  <e \har g \har b>2( <b \har e \har g>2~ | <b \har e \har g>4) r4
  <b' \har g \har e>8 <b \har g \har e>8 <b \har g \har e>4 |
  <d \har b \har g>1~ | <d \har b \har g>2  <e \har b \har g>8 <e \har b \har g>8 <e \har b \har g>4 |
  <e \har b \har g>2( <b \har g \har e>2~ | <b \har g \har e>2) r2 |
  <c, \har e \har g >2 <c \har e \har g >4 <c \har e \har g >4 |
  <g' \har e \har c'>2 r4 <g \har e \har c'>4 |
  <g \har b \har d>1~( | <g \har b \har d>1 | <e \har g \har b>1~ | <e \har g \har b>2) r2 | r1 | r1 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column 
  \bold
  {
    \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Verse 4 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Chorus } }
   }
  \column {
    \hspace #5
  }
  \column
  {
    \vspace #2
    \line { \large { An old cowpoke went ridin' out one dark and windy day } }
    \line { \large { Upon a ridge he rested as he went along his way } }
    \line { \large { When all at once a mighty herd of red-eyed cows he saw } }
    \line { \large { Plowin' through the ragged skies and up a cloudy draw } }
    \vspace #1
    \line { \large { Yippie-yi-yay, Yippie-yi-oh, ghost herd in the sky } }
    \vspace #1
    \line { \large { Their brands were still on fire and their hooves were made of steel } }
    \line { \large { Their horns were black and shiny and their hot breath he could feel } }
    \line { \large { A bolt of fear went through him as they thundered through the sky } }
    \line { \large { For he saw the riders coming hard and he heard their mournful cry } }
    \vspace #1
    \line { \large { Yippie-yi-yay, Yippie-yi-oh, ghost riders in the sky } }
    \vspace #1
    \line { \large { Their faces gaunt, their eyes were blurred, their shirts all soaked with sweat } }
    \line { \large { He's riding hard to catch that herd but he ain't caught 'em yet } }
    \line { \large { 'Cause they've got to ride forever on that range up in the sky } }
    \line { \large { On horses snorting fire as they ride on, hear their cry } }
    \vspace #1
    \line { \large { Yippie-yi-yay, Yippie-yi-oh, ghost riders in the sky } }
    \vspace #1
    \line { \large { As the riders loped on by him he heard one call his name } }
    \line { \large { 'If you wanna save your soul from hell a-riding on our range } }
    \line { \large { Then, cowboy, change your ways today or with us you will ride } }
    \line { \large { Trying to catch the devil's herd across these endless skies } }
    \vspace #1
    \line { \large { Yippie-yi-yay, Yippie-yi-oh, ghost riders in the sky } }
    \vspace #1
    \line { \large { Yippie-yi-yay, Yippie-yi-oh, ghost riders in the sky } }
 }
}

