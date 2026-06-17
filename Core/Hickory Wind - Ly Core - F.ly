%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:35.119306Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Hickory Wind"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Gram Parsons and Bob Buchanan"
headerCopyright = "© 1969 GPJ Music, Hot Burrito Music"

refrainLyrics = \lyricmode {
In South Car -- o -- li -- na there are man -- y tall pines.
I re -- mem -- ber the oak tree that we used to climb.
But it makes me feel bet -- ter each time it be -- gins
call -- ing me home: hick -- o -- ry wind.

I start -- ed out

wind.

Keeps on call -- in' me home: hick -- o -- ry wind.
}

refrainChords = \chordmode {
  s4 f2.

  c2.:7 c2.:7 bf2. bf2.
  f2. f2. f2. f2.

  c2.:7 c2.:7 bf2. bf2.
  c2.:7 c2.:7 c2.:7 c2.:7

  bf2. bf2. c2.:7 c2.:7
  f2. f2. f2. f2.

  bf2. bf2. c2.:7 c2.:7
  f2. f2. f2. f2.

  f2. f2. f2. f2.
  bf2. bf2. c2.:7 c2.:7
  bf2. bf4 f4/a g4:m7 f2.
}

refrainKey = f

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Byrds 1969]" 105

  \partial 4 f4 | f2 f8 g8 |

  \sectNoBarNoBreak "Verse"

  \bar ".|:"
  \repeat volta 3 {

  f4 e2 | R2.*1 | r4 r4 bf8 bf8 | f'8 f8~ f8 f8( g8 f8) |
  a2. | R2.*1 | r4 r4 a8 a8 | a8 bf8( a4.) f8 |

  f8 e8~ e2 | R2.*1 | r4 r4 r8 f8 | f4 f4. g8 |
  g2 r4 | R2.*1 | r4 r4 c,8 c8 | c'4. bf8 a4 |

  g8 f8~ f4 r4 | R2.*1 | r4 r4 r8 g8~ | g8 g8( f4.) g8 |
  a8 a8~ a2 | R2.*1 | R2.*1 | c4. bf8( a8) g8 |

  g8( f8~ f2) | R2.*1 | R2.*1 | e8 f8 g4.( f8) \textToCodaLastTime |
  f2. | R2.*1 | r4 r4 a4 | bf8( a8~ a8) f8 g4 |

  }
  \bar "||-:|."


  \textCodaBreak

  f2. | R2.*1 | r4 r4 r8 c'8~ | c8 c8 d8 c4 c8 |
  bf2.~( | bf2 a8 g8~ | g8 f8 e2) | e8 f8 g4.( f8 ) |
  f2.~ | f2.~ | f2.\fermata |



  \bar "|."

  \xPageBreak
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
   \vspace #4
   \line { \large { Coda } }
   }
  \column
  {
    \hspace #4
    }
  \column
  {
   \vspace #2
   \line { \large { In South Carolina there are many tall pines. } }
   \line { \large { I remember the oak tree that we used to climb. } }
   \line { \large { But it makes me feel better each time it begins } }
   \line { \large { calling me home: hickory wind. } }
   \vspace #1
   \line { \large { I started out younger at most everything. } }
   \line { \large { All the riches and pleasures, what else could life bring? } }
   \line { \large { But now when I'm lonesome I always pretend } }
   \line { \large { that I'm getting the feel of hickory wind. } }
   \vspace #1
   \line { \large { It's a hard way to find out that our trouble is real. } }
   \line { \large { In a faraway city, with a faraway feel. } }
   \line { \large { But it makes me feel better each time it begins } }
   \line { \large { calling me home: hickory wind. } }
   \vspace #1
   \line { \large { Keeps on callin' me home: hickory wind. } }
 }
}

\include "../Include/refrainonly.ily"
