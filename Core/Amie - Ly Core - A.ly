%% -*- Mode: LilyPond -*-

songID = "2026-09-09T14:13:18.110659Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Amie"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Craig Fuller"
headerCopyright = "© 1971 Unichappel Music Inc."

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _
\stanza "1. "
I can see why you think you be -- long __ to me. __
I nev -- er tried to make __ you think or let you see one __ thing for your -- self. __
But now you're off with some -- one else __ and I'm a -- lone. __
You see, I thought that I __ might __ keep you for my own. __

A -- mie, what you wan -- na do? __
I think I could stay with you __ for a while, __ may -- be long -- er if I do. __

do. __
I keep fall -- in' in and out of love __ with you. __
Fall -- in' in and out of love __ with you. __
Don't know what I'm gon -- na do. __
I keep __ fall -- in' in and out __ of love __ with you. __
}

refrainChords = \chordmode {
  a1:5
  
  a1 a1 a1 a1 a1 a1 a1 a1
  
  a1 g2 d2
  
  a1 g2 d2 a1 g2 d2
  a1 g2 d2 a1 a1
  d1 d1 c1 c1
  d1 d1 c1 c1
  e1 e1 e1 e1
  
  a1 a1 g1 d1
  a1 a1 g1 d1
  b1:m b1:m e1 e1
  a1 g2 d2 a1 g2 d2
  
  e1 e1
  a1 a1 g1/a d1/a
  a1 a1 g1/a d1/a
  a1 a1 g1/a d1/a
  a1 a1 d1/a d1/a
  
  d1:1.3-.5.9/a d1:1.3-.5.9/a
  e1:7.9-/a e1:7.9-/a 
  a1:1.3.5.9 a1:1.3.5.9 
}

refrainKey = a

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Moderately Fast [Pure Prairie League 1972]" 186

  \sectNoBar "Intro"
  
  \bar ".|:"
  \repeat volta 4 {
  a4_"4x" <e' a>4 a,4 <e' a>4 |
  }
  \bar ":|."
  e,8( fs8) a8 r8 a4 b8 a8 | b8( cs8) e8 fs8 e8 cs8( b8) a8 |
  e8( fs8) a8 r8 a4 b8 a8 | b8( cs8) b4 b2 |
  e,8( fs8) a8 r8 a4 b8 a8 | b8( cs8) e8 fs8 a8 fs8 a8 fs8 |
  a8 fs8 e8 fs8 e4 e8 e8 | e8 fs8 e8 fs8 b,8 a8 fs4 |
  \bar ".|:"
  \repeat volta 2 {
  r1 | r1 |
  }
  \bar ":|.|:"
  \repeat volta 4 {
  
  \sectNoBar "Verse"
  
  e4_"4x" e4 e4 e4 | a4 a4 a4 b8 a8~ | a4 e8 e8~ e2 | r2 r4 r8 e8 |
  e8 e4. e4 e8 a8~ | a4 a4 a4 fs8 cs'8~ | cs4 cs4 cs4. b8~ | b4 a4 b4 a8 a8~ |
  
  a2 r2 | r4 r8 e8 fs4 a4 | a4 c4 c4 b8 a8~ | a4 g8 a8~ a4 g8 b8~( |
  b4 a4) r2 | r4 r8 d,8 fs8 a4. | c4 c8 c8~ c8 b8( a4) | a4 a8 a8~ a4 b4 |
  b1~ | b2 r2 | r1 | r1 |
  
  \sectSegno "Chorus"
  
  r2 cs2 | cs1 | <b \har e>4 <a \har e'>4 <a \har e'>4 <fs \har e'>8 b8~( | b4 a4) r2 |
  r2 cs2 | cs1 | b4 a4 a4 a8 a8~ | a4 r4 fs4 a8 b8~ |
  b2 b4 b8 b8~ | b4 a4 a8 b4. \textToCodaLastTime | b1~ | b2 r2 |
  r1 | r1 | r1 | r1 \dalSegno |
  }
  \bar ":|."

  \xxPageBreak

  \textCodaBreak
  
  b1~ | b4 r4 a4 a4 |
  
  \sectNoBreak "Outro"
  
  r2 cs4 cs4 | cs8 cs4 cs8~ cs4 a8 a8~ | a2. fs8 b8~( | b4 a4) r2 |
  r2 cs4 cs4 | cs8 e4 b8~ b4 a8 a8~ | a2. fs8 a8( | fs2) r2 | 
  r2 cs'4 cs4 | cs8 cs4. cs8 b8 fs'4~( | fs4 e2. | b8 a4.) a4 fs8( e8) |
  r2 cs'4 cs4 | cs8 cs4 b8~ b4 a8 a8~ | a1~ | a2. e4 |
  c'2~( c8 b8 a4~ | a4. e'8~ e2~ | e1~ | e2) r2^"rit." | r1 | r1\fermata |

  \bar "|."
}

afterText =
\markup {
  \column {
    \vspace #5
    \line { \large { \bold "Verse 1" } }
    \vspace #4
    \line { \large { \bold "Chorus" } }
    \vspace #2
    \line { \large { \bold "Verse 2" } }
    \vspace #6
    \line { \large { \bold "Verse 3" } }
    \vspace #6
    \line { \large { \bold "Outro" } }
  }
  \column { \hspace #6 }
  \column {
    \vspace #3
    \line { \large { \italic { Intro } } }
    \vspace #1
    \line { \large { I can see why you think you belong to me. } }
    \line { \large { I never tried to make you think or let you see one thing for yourself. } }
    \line { \large { But now you're off with someone else and I'm alone. } }
    \line { \large { You see, I thought that I might keep you for my own. } }
    \vspace #1
    \line { \large { Amie, what you wanna do? I think I could stay with you. } }
    \line { \large { For a while, maybe longer if I do. } }
    \vspace #1
    \line { \large { Don't you think the time is right for us to find } }
    \line { \large { all the things we thought weren't proper could be right in time? } }
    \line { \large { And can you see which way we should turn, together or alone? } }
    \line { \large { I can never see what's right or what is wrong. Oh, you take too long to see. } }
    \vspace #1
    \line { \large { \italic { Chorus — Guitar Solo on Verse Form — Chorus } } }
    \vspace #1
    \line { \large { Now it's come to what you want, you've had your way. } }
    \line { \large { And all the things you thought before just faded into gray. } }
    \line { \large { And can you see that I don't know if it's you or if it's me? } }
    \line { \large { If it's one of us, I'm sure we both will see. Won't you look at me and tell me. } }
    \vspace #1
    \line { \large { \italic { Chorus — Chorus } } }
    \vspace #1
    \line { \large { I keep falling in and out of love with you. Falling in and out of love with you. } }
    \line { \large { Don't know what I'm gonna do. I keep falling in and out of love with you. } }
  }
}

\include "../Include/refrainonly.ily"



