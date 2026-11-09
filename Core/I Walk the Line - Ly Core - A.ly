%% -*- Mode: LilyPond -*-

songID = "2026-11-07T00:35:08.37043Z"

\include "../Include/lead-sheets.ily"

headerTitle = "I Walk the Line"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "John R. Cash"
headerCopyright = "© 1956 House of Cash, Inc."

straightEights = ##t

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _

I keep a close watch on this heart of mine.
I keep my eyes wide o -- pen all the time.
I keep the ends out for the tie __ that binds.
Be -- cause you're mine, I walk the line.
_ _ _ _ _ _ _ _
I find it ve -- ry, ve -- ry eas -- y to be true.
I find my -- self a -- lone when each day's through.
Yes, I'll ad -- mit that I'm a fool for you.
Be -- cause you're mine, I walk the line.
_ _ _ _ _ _ _ _
As sure as night is dark and day is light
I keep you on my mind both day and night.
And hap -- pi -- ness I've known proves __ that it's right.
Be -- cause you're mine, I walk the line.
_ _ _ _ _ _ _ _
You've got a
}

notRefrainLyrics = \lyricmode {
way to keep me on your side
You give me 'cause for love that I can't hide
For you, I know I'd even try to turn the tide
Because you're mine, I walk the line
I keep a close watch on this heart of mine
I keep my eyes wide open all the time
I keep the ends out for the tie that binds
Because you're mine, I walk the line
}

refrainChords = \chordmode {
  s2.

  a1 a1 d1 d1 a1 a1 e1 e1 b1:7 b1:7
  
  e1 e1
  
  b1:7 b1:7 e1 e1
  b1:7 b1:7 e1 e1
  a1 a1 e1 e1
  b1:7 b1:7 e1 e1

  a1 a1
  
  e1 e1 a1 a1
  e1 e1 a1 a1
  d1 d1 a1 a1
  e1 e1 a1 a1
  
  d1 d1
  
  a1 a1 d1 d1
  a1 a1 d1 d1
  g1 g1 d1 d1
  a1 a1 d1 d1

  a1 a1
  
  a1
  
  e1 e1

}

refrainKey = a

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 2/2
  \key a \major
  \clef \whatClef
  \tempoFour "Medium [Johnny Cash 1956]" 204

  \ambitusOff

  \partial 2. e,4 fs4 gs4 |

  \sectNoBreak "Intro"

  a4  <a' cs e>4 e,4 <a' cs e>4 | a,4 a4 b4 cs4 | d4 <a' d fs>4 a,4 <a' d fs>4 | d,4 d4 cs4 b4 |
  \break
  a4  <a' cs e>4 e4 <a cs e>4 | a,4 a4 gs4 fs4 | e4 <gs' b e>4 b,4 <gs' b e>4 | b,4 e,4 fs4 e4 |
  \break
  b'4 <a' b fs'>4 ds,4 <a' b fs'>4 | b,4 a4 gs4 fs4 |

  \sectNoBarNoBreakSegnoSegno "Interlude"
  
  \key e \major
  
  \repeat volta 8 {
  e4 <gs' b e>4 b,4 <gs' b e>4 |
  \xTextEndMark "8x"
  }

  \ambitusOn

  r4 e4 e4 e4 |
  
  \sect "Verse"
  
  fs2 fs2 | fs4 a4 gs4 fs4 |
  e1 | r4 e4 e4 e4 |
  \break
  fs2 fs2 | fs4 a4 gs4 fs4 |
  e1 | r4 e4 fs4 gs4 |
  \break
  a2 a2 | a4 cs8 b8~ b4 a4 | 
  gs1 | r4 e4 ds4 cs4 |
  \break
  b1 | r4 fs'4 e4 ds4 |
  e1 \textToCodaII |

  \ambitusOff

  e,4 e4 fs4 gs4 |
  
  \sectNoBarNoBreak "Interlude"
  
  \key a \major
  
  \repeat volta 7 {
  a4  <a' cs e>4 e4 <a cs e>4 |
  \xTextEndMark "7x"
  }

  \ambitusOn

  r4 a,4 a4 a4 |
  
  \sectNoBarSegno "Verse"
  
  b4 b4 b4 b4 | b4 d4 cs4 b4 |
  a1 | r4 a4 a4 a4 |
  \break
  b2. b4 | b4 d4 cs4 b4 |
  a1 | r4 a4 b4 cs4 |
  \break
  d2 r4 d4 | d4 fs4 e4 d4 |
  cs1 | r4 a4 gs4 fs4 |
  \break
  e1 | r4 b'4 a4 gs4 |
  a1 \textToCodaI |

  \ambitusOff

  a4 a4 b4 cs4 |

  \sectNoBarNoBreak "Interlude"
  
  \key d \major
  
  \repeat volta 7 {
  d4 <a' d fs>4 a,4 <a' d fs>4 |
  \xTextEndMark "7x"
  }

  \ambitusOn

  r4 d,4 d4 d4 |
  
  \sect "Verse"  

  e2 e2 | e4 g4 fs4 e4 |
  d1 | r4 d4 d4 d4 |
  \break
  e2 e2 | e4 g4 fs4 e4 |
  d1 | r4 d4 e4 fs4 |
  \break
  g2 g2 | g4 b4~ b8 a8 g4 |
  fs1 | r4 d4 cs4 b4 |
  \break
  a1 | r4 e'4 d4 cs4 |
  d1 |

  \ambitusOff

  d4 a4 cs4 b4 |

  \sectNoBar "Interlude"
  
  \key a \major
  
  \repeat volta 8 {
  a4  <a' cs e>4 e4 <a cs e>4 |
  \xTextEndMark "8x"
  }

  \ambitusOn

  r4 a,4 a4 a4 \dalSegnoI |
  \bar "||"

  \ambitusOff

  
  \textCodaI
  
  a4 a4 gs4 fs4 \dalSegnoSegnoII |

  \textCodaII
  
  \sectNoBarNoBreak "Outro"

  \repeat volta 2 {
  e4 <gs' b e>4 b,4 <gs' b e>4 | e,4 <gs' b e>4 b,4 <gs' b e>4 |
  }
}

afterText =
\markup {
  \column
  {
   \vspace #2
   \line { \large { \bold { Intro } \italic { (in { \tpNote { a } }) } } }
   \vspace #1
   \line { \large { \italic { (Modulate to { \tpNote { e } } ) } \bold { Interlude } } }
   \vspace #1
   \line { \large { I keep a close watch on this heart of mine. I keep my eyes wide open all the time. } }
   \line { \large { I keep the ends out for the tie that binds. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { \italic { (Modulate to { \tpNote { a } } ) } \bold { Interlude } } }
   \vspace #1
   \line { \large { I find it very, very easy to be true. I find myself alone when each day's through. } }
   \line { \large { Yes, I'll admit that I'm a fool for you. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { \italic { (Modulate to { \tpNote { d } } ) } \bold { Interlude } } }
   \vspace #1
   \line { \large { As sure as night is dark and day is light, I keep you on my mind both day and night. } }
   \line { \large { And happiness I've known proves that it's right. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { \italic { (Modulate to { \tpNote { a } } ) } \bold { Interlude } } }
   \vspace #1
   \line { \large { You've got a way to keep me on your side. You give me 'cause for love that I can't hide. } }
   \line { \large { For you, I know I'd even try to turn the tide. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { \italic { (Modulate to { \tpNote { e } } ) } \bold { Interlude } } }
   \vspace #1
   \line { \large { I keep a close watch on this heart of mine. I keep my eyes wide open all the time. } }
   \line { \large { I keep the ends out for the tie that binds. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { \bold { Outro } } }
 }
}

\include "../Include/refrainonly.ily"

