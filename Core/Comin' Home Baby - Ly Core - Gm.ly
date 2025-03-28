%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Comin' Home Baby"
  subtitle = \instrument
  poet = "Bob Dorough"
  composer = "Ben Tucker"
  copyright = \markup \small "© 1960 Cotillion Music Inc."
}

refrainLyricsOne = \lyricmode {
Come on home, you know I'm wait -- in' here for you.
You been gone, you don't know what I'm go -- in' through.
Since you went a -- way, I've been blue. Come on home,
}

refrainLyricsTwo = \lyricmode {
_ _ _ you know I'm pray -- in' ev -- 'ry night.
Please come on, I want to feel you hold me tight.
When I'm in your arms, I'm all right.
}

refrainChords = \chordmode {
  s2

  g1:m7 g1:m7 g1:m7 g1:m7
  ef1:7 ef1:7 g1:m7 g1:m7
  bf1:7 a2:7 af2:7 g1:m7 g1:m7
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Soul Jazz [Mel Tormé 1962]" 4 = 143

  \partial 2 \invisEighth g8 bf8 d8 |
  
  \bar ".|:"
  \repeat volta 2 {
  r1 | r8 g,8 bf8 df8 c8 bf8 g8 f8 | g4 r4 r2 | r2 r8 g8 bf8 c8 |
  \break
  r1 | r8 g8 bf8 df8 c8 bf8 g8 f8 | g4 r4 r2 | r2 g8 bf8 c8 bf8 |
  \break
  <d f>1 | <cs e>2 <c ef>2 | <bf d>4 r4 r2 | r2 r8
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  g8
  bf8
  \endParenthesis \parenthesize
  d8 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 3 } }
   \vspace #3
   \line { \large { Verse 4 } }
   \vspace #3
   \line { \large { Verse 5 } }
   \vspace #3
   \line { \large { Verse 6 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Come on home, you know I'm countin' ev-'ry day. } }
   \line { \large { Use the phone, and baby, let me hear you say. } }
   \line { \large { That you're comin' home right away. } }
   \vspace #1
   \line { \large { Come on home, the clock is tickin' on the shelf. } }
   \line { \large { Can't go on, I got to have you for myself. } }
   \line { \large { I can't love-a nobody else. } }
   \vspace #1
   \line { \large { Come on home, you know I'm waitin' at the door. } }
   \line { \large { All alone, and pacin' up and down the floor. } }
   \line { \large { Say you'll be with me evermore. } }
   \vspace #1
   \line { \large { Come on home, oh, baby say you're comin' home. } }
   \line { \large { Something's wrong, you ought to either write or phone. } }
   \line { \large { Baby, tell me you're comin' home. } }
   \vspace #1
   }
}
