%% -*- Mode: LilyPond -*-

songID = "2026-11-11T22:48:53.575531Z"

\include "../Include/lead-sheets.ily"

headerTitle = "I Walk the Line (Vanilla Lead Sheet)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "John R. Cash"
headerCopyright = "© 1956 House of Cash, Inc."

straightEights = ##t

refrainLyrics = \lyricmode {
I keep a close watch on this heart of mine.
I keep my eyes wide o -- pen all the time.
I keep the ends out for the tie that binds.
Be -- cause you're mine, I walk the line.

(I find it)
}

refrainChords = \chordmode {
  s2.

  e1 e1 a1 a1
  e1 e1 a1 a1
  d1 d1 a1 a1
  e1 e1 a1 a1
}

refrainKey = a

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 2/2
  \key a \major
  \clef \whatClef
  \tempoFour "Medium [Johnny Cash 1956]" 204

  \partial 2. a4 a4 a4 |
  
  \sectNoBreak "Verse"
  
  b2 b2 | b4 d4 cs4 b4 |
  a1 | r4 a4 a4 a4 |
  \break
  b2 b2 | b4 d4 cs4 b4 |
  a1 | r4 a4 b4 cs4 |
  \break
  d2 d2 | d4 fs4 e4 d4 |
  cs1 | r4 a4 gs4 fs4 |
  \break
  e1 | r4 b'4 a4 gs4 |
  a1 | r4 
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize a4
  a4
  \endParenthesis \parenthesize a4 |

  \bar "|."
}

afterText =
\markup {
  \column
  {
   \vspace #2
   \line { \large { I keep a close watch on this heart of mine. I keep my eyes wide open all the time. } }
   \line { \large { I keep the ends out for the tie that binds. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { I find it very, very easy to be true. I find myself alone when each day's through. } }
   \line { \large { Yes, I'll admit that I'm a fool for you. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { As sure as night is dark and day is light, I keep you on my mind both day and night. } }
   \line { \large { And happiness I've known proves that it's right. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { You've got a way to keep me on your side. You give me 'cause for love that I can't hide. } }
   \line { \large { For you, I know I'd even try to turn the tide. Because you're mine, I walk the line. } }
   \vspace #1
   \line { \large { I keep a close watch on this heart of mine. I keep my eyes wide open all the time. } }
   \line { \large { I keep the ends out for the tie that binds. Because you're mine, I walk the line. } }
 }
}

\include "../Include/refrainonly.ily"

