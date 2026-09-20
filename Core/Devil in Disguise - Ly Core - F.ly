%% -*- Mode: LilyPond -*-

songID = "2026-09-16T14:35:25.106543Z"

\include "../Include/lead-sheets.ily"

headerTitle = "(You're the) Devil in Disguise"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Bill Giant, Bernie Baum & Florence Kaye"
headerCopyright = "© 1963 Elvis Presley Music"

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _
You look like an an -- gel, _ _ _ _ _ walk like an an -- gel, _ _ _ _ _
talk like an an -- gel, but I got wise.

_ _ _ _ _ _

You're the de -- vil in dis -- guise, oh yes you are,
the de -- vil in dis guise, Mmm.

\stanza "1. "
You fooled me __ with your kiss -- es.
You cheat -- ed and you schemed. __
Hea -- ven knows __ how you lied to me. __
You're not the way you seemed.

_ _ _ _ _ _

You

You're the de -- vil in dis -- guise,
oh yes you are the de -- vil in dis -- guise.
}

refrainChords = \chordmode {
  bf2 c2 f4 r2.

  f1 f1 f1 f1
  bf1 bf1 c1 c4 r2.
  
  f1 d1:m f1 d1:m

  f1 f1 d1:m d1:m
  f1 d1:m bf2 c2
  
  f1
  
  f1
  
  f1 d1:m
  
  f1
}

refrainKey = f

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Elvis Presley 1963]" 120

  \sectNoBar "Intro"
  
  bf8 bf16 bf16 r16 bf16 bf8 c8 c16 c16 r16 c16 c8 | f,8 c8 c8 c8 c8 c8 c8 c8 |

  \sectNoBar "Chorus"
  
  \bar ".|:-||"
  \repeat volta 3 {

  a'4_"3x"^\markup { Half Time Feel } a8 a8 bf4 a4 | a4 a8 a8 bf4 a4 | a4 a8 a8 bf4 a4 | a4 a8 a8 bf4 a4 |
  bf4 bf8 bf8 c4 bf4 | r4 bf4 c4 d4 | c4 r8 c8 e8 c8 g8 e8 | c8 f'4 f8  c8 f,8 g8 f8 |
  
  a2^\markup { Double Time Feel } r8 a8 a8 g8 | f8( d4) d8 d8 f8 g8 f8 |
  f2 r4 f4( | d2~ d8) r8 r4 |
  
  \sect "Verse"
  
  r4 c'4 c4 c8( a8) | c4 a8 d8~ d8 c4. |
  r4 d4 d4 e4 | d4 c8 a8~ a4. r8 |
  c4 a8 a8~ a8 a4 g8 | a4 g8 f8~ f4 r8 d8 |
  f4 f4 e4 g4 |
  \alternative { \volta 1,2 {
  f8 c8 c8 c8 c8 c8 c8 c8 |
  } \volta 3 {
  r4 f'8 f8 c8 f,8 g8 f8 |
  } } }
  \sectNoBar "Outro"
  
  \bar ".|:-||"
  \repeat volta 4 {
  a2_"4x" r8 a8 a8 g8 | f8( d4) d8 d8 f8 g8 f8 |
  }
  
  f2\fermata r2 |

  \bar "|."
}

afterText =
\markup {
  \column
  \bold
  {
   \vspace #3
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Chorus } }
   \vspace #3
   \line { \large { Verse 1 } }
   \vspace #2
   \line { \large { Chorus } }
   \vspace #3
   \line { \large { Verse 2 } }
   \vspace #2
   \line { \large { Chorus } }
   \vspace #3
   \line { \large { Verse 3 } }
   \vspace #1
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column
  {
   \vspace #5
   \line { \large { You look like an angel, (look like an angel) walk like an angel, (walk like an angel). } }
   \line { \large { Talk like an angel, but I got wise, you're the devil in disguise } }
   \line { \large { Oh, yes you are the devil in disguise, Mmm. } }
   \vspace #1
   \line { \large { You fooled me with your kisses, you cheated and you schemed. } }
   \line { \large { Heaven knows how you lied to me, you're not the way you seemed. } }
   \vspace #1
   \line { \large { You look like an angel, (look like an angel) walk like an angel, (walk like an angel). } }
   \line { \large { Talk like an angel, but I got wise, you're the devil in disguise } }
   \line { \large { Oh, yes you are the devil in disguise, Mmm. } }
   \vspace #1
   \line { \large { I thought that I was in heaven, but I was sure surprised. } }
   \line { \large { Heaven help me, I didn't see the devil in your eyes. } }
   \vspace #1
   \line { \large { You look like an angel, (look like an angel) walk like an angel, (walk like an angel). } }
   \line { \large { Talk like an angel, but I got wise, you're the devil in disguise } }
   \line { \large { Oh, yes you are the devil in disguise, Mmm. } }
   \vspace #1
   \line { \large { \italic { Guitar solo } } }
   \vspace #1
   \line { \large { You're the devil in disguise, oh, yes you are the devil in disguise, } }
   \line { \large { oh, yes you are the devil in disguise, oh yes, you are... } }
 }
}

\include "../Include/refrainonly.ily"
