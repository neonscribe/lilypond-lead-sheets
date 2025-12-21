%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Cash on the Barrelhead"
  subtitle = \instrument
  poet = ""
  composer = "Charles Louvin and Ira Louvin"
  copyright = \markup \small { \now " " "© 1956 Acuff-Rose Music, Inc." }
}

refrainLyrics = \lyricmode {
Got in a lit -- tle trou -- ble at the coun -- ty seat.
Lord, they put me in the jail -- house, for loaf -- ing on the street.
When the judge heard the ver -- dict, I was a guil -- ty man.
He said for -- ty -- five dol -- lars, or thir -- ty days in the can.

That -- ’ll be cash on the bar -- rel -- head, son.
You can take your choice, you’re twen -- ty -- one.
No mon -- ey down, no cred -- it plan,
no time to chase you, ’cause I’m a bus -- y man.
}

refrainChords = \chordmode {
  s2.
  
  f1 f1 f1 f1
  f1 \chordInsideParens{ c1 } f1 f1
  f1 f1 f1 f1
  f1 \chordInsideParens{ c1 } f1 f1

  bf1 bf1 f1 f1
  c1 c1 f1 f1
  bf1 bf1 f1 f1
  c1 c1 f1 f1
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast [Gram Parsons 1973]" 4 = 235

  \partial 2. c'8 c8~ c8 c8 c8 bf8 |
  \bar "||"

  \sectStart "Verse"
  
  a8 f4.~ f2 | r8 c'4 c8 c4 c8 c8~( | c8 a4.~ a2) | r8 c4 c8 c8 c8 c8 bf8 |
  \break
  a8 f4.~ f2 | r8 c8 d8 f8 af4 g8 f8~ | f1 | r8 c'4 c8 c8 c4 bf8 |
  \break
  a8 f4.~ f2 | r8 a8 a8 c8 c4 c8 c8~( | c8 a4.~ a2) | r8 c8 c4 c8 c8 c8( bf8) |
  \break
  a8 f4.~ f2 | r8 c8 d8 f8 af4 g8 f8 | f1 | r2 bf8 bf8 d4 |
  
  \sect "Chorus"
  
  f1~ | f4 ef8 d8 c8 bf8 a4 | f1 | r4 c'8 c8 c4 c4 |
  \break
  g'1~ | g4 e4 c8 a4. | f1 | r4 bf4 bf8 bf4. |
  \break
  f'1~ | f4 ef4 c8 a4. | f1 | r4 c'4 e4. e8 |
  \break
  e4 c2.~ | c8 a8 a8 a8 c8( bf8) a4 | f1 | r1 |

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
   \line { \large { Chorus 1 } }
   \vspace #4
   \line { \large { Solo 1 } }
   \vspace #1
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus 2 } }
   \vspace #4
   \line { \large { Solo 2 } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus 3 } }
   \vspace #4
   \line { \large { Solo 3 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Got in a little trouble at the county seat. } }
   \line { \large { Lord, they put me in the jailhouse, for loafing on the street. } }
   \line { \large { When the judge heard the verdict, I was a guilty man. } }
   \line { \large { He said fortyfive dollars, or thirty days in the can. } }
   \vspace #1
   \line { \large { That’ll be cash on the barrelhead, son. } }
   \line { \large { You can take your choice, you’re twentyone. } }
   \line { \large { No money down, no credit plan, } }
   \line { \large { no time to chase you, ’cause I’m a busy man. } }
    \vspace #1
    \line { \large { \italic { (Chorus form) } } }
    \vspace #1
   \line { \large { Found a telephone number, on a laundry slip } }
   \line { \large { Had a kind-hearted jailer, with a six-gun hip } }
   \line { \large { He let me call long-distance, She said, “Number, please?” } }
   \line { \large { No sooner than I told her, she hollered out at me } }
   \vspace #1
   \line { \large { That’ll be cash on the barrelhead, son } }
   \line { \large { Not part, not half, but the entire sum } }
   \line { \large { No money down, no credit plan } }
   \line { \large { ‘Cause a little bird tells me that you’re a traveling man } }
    \vspace #1
    \line { \large { \italic { (Chorus form) } } }
    \vspace #1
   \line { \large { Thirty days in the jailhouse, four days on the road } }
   \line { \large { I was feeling mighty hungry, my feet a heavy load } }
   \line { \large { Saw a Greyhound a coming, stuck up my thumb } }
   \line { \large { Just as I’d been seated, the driver caught my arm } }
   \vspace #1
   \line { \large { That’ll be cash on the barrelhead son } }
   \line { \large { This old gray dog, gets paid to run } }
   \line { \large { When engine starts, oh the wheels won’t roll } }
   \line { \large { That’ll be cash on the barrelhead, I’ll take you down the road } }
    \vspace #1
   \line { \large { \italic { (Chorus form) } } }
 }
}

