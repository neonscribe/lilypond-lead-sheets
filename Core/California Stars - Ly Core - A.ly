%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "California Stars"
  subtitle = \instrument
  poet = ""
  composer = "Jay Bennett, Woody Guthrie and Jeff Tweedy"
  copyright = \markup \small { \now " " "© 1998 Titanic Majesties Music, Woody Guthrie Publications, Words Ampersand Music" }
}

refrainLyrics = \lyricmode {
I’d like to rest my heav -- y head to -- night, on a bed of Cal -- i -- for -- nia stars.
I’d like to lay my wear -- y bones to -- night, on a bed of Cal -- i -- for -- nia stars.
I’d love to feel your hand touch -- ing mine, and tell me why I must keep work -- ing on.
Yes, I’d give my life to lay my head to -- night, on a bed of Cal -- i -- for -- nia stars.
}

refrainChords = \chordmode {
  a1 a1 e1 e1 d1 d1 a1 a1
  
  s2

  a1 a1 e1 e1 d1 d1 a1 a1
  a1 a1 e1 e1 d1 d1 a1 a1

  a1 a1 e1 e1 d1 d1 a1 a1
  a1 a1 e1 e1
}

refrainKey = a

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Billy Bragg & Wilco 1998]" 4 = 110

  \sectStart "Intro, Solo, Outro"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  
  \sect "Verse"
  
  \partial 2 \invisEighth a8 a8 b8 |
  \bar "||"
  
  
  a4 r4 r8 a8 cs8 d8 | cs8( b8) a8 a8~ a8 a8 b8 gs8~ | gs4 r4 r8 gs8 b8 cs8 | d8( cs8) cs8 b8~ b8 a8 a8 fs8 |
  \break
  a4 a8( fs8) a8 b4 cs8~( | cs8 b8) b8 a8~ a8 a8 b8 a8~ | a4 r4 r8 a8 cs8 d8 | cs8( b8) b8 a8~ a8 a8 a8 b8 |
  \break
  a4 r4 r8 a8 d4 | cs8 b8( a8) a8~ a8 a8 a8 b8 | gs4 r4 r8 gs8 b8 cs8 | d8 cs4 b8~ b8 a8 fs8 a8~ |
  \break
  a8 a4 a8~ a4 r8 a8 | cs8 b8 b8 a8 a8 a8 b8 a8~ | a4 r4 r8 a8 cs8 d8 | cs8( b8) b8 a8~ a4 r4 |
  
  \sect "Piano Solo"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

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
  \column {
   \vspace #2
   \line { \large { \bold Intro } }
   \vspace #1
   \line { \large { \bold Verse 1 } }
   \vspace #1
   \line { \large { I’d like to rest my heavy head tonight on a bed of California stars } }
   \line { \large { I’d like to lay my weary bones tonight on a bed of California stars } }
   \line { \large { I’d love to feel your hand touching mine and tell me why I must keep working on } }
   \line { \large { Yes, I’d give my life to lay my head tonight on a bed of California stars } }
   \vspace #1
   \line { \large { \bold Solo } }
   \vspace #1
   \line { \large { \bold Verse 2 } }
   \vspace #1
   \line { \large { I’d like to dream my troubles all away on a bed of California stars } }
   \line { \large { Jump up from my starbed and make another day underneath my California stars } }
   \line { \large { They hang like grapes on vines that shine and warm the lovers' glass like friendly wine } }
   \line { \large { So I’d give this world just to dream a dream with you on our bed of California stars } }
   \vspace #1
   \line { \large { \bold Solo } }
   \vspace #1
   \line { \large { \bold Verse 3 } }
   \vspace #1
   \line { \large { I’d like to rest my heavy head tonight on a bed of California stars } }
   \line { \large { I’d like to lay my weary bones tonight on a bed of California stars } }
   \line { \large { I’d love to feel your hand touching mine and tell me why I must keep working on } }
   \line { \large { Yes, I’d give my life to lay my head tonight on a bed of California stars } }
   \vspace #1
   \line { \large { \bold Solo } }
   \vspace #1
   \line { \large { \bold Verse 4 } }
   \vspace #1
   \line { \large { I’d like to dream my troubles all away on a bed of California stars } }
   \line { \large { Jump up from my starbed, make another day underneath my California stars } }
   \line { \large { They hang like grapes on vines that shine and warm the lovers' glass like friendly wine } }
   \line { \large { So I’d give this world just to dream a dream with you on our bed of California stars } }
   \vspace #1
   \line { \large { \bold Piano Solo } }
   \vspace #1
   \line { \large { \bold Tag } }
   \vspace #1
   \line { \large { So I’d give this world just to dream a dream with you on our bed of California stars } }
   }
}
