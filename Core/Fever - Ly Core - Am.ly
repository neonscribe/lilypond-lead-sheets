%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Fever"
  subtitle = \instrument
  poet = ""
  composer = "Eddie Cooley, Otis Blackwell"
  copyright = \markup \small { \now " " "© 1956 Fort Knox Music Inc." }
}

refrainLyrics = \lyricmode {
}

refrainKey = a
refrainKeyTwo = bf
refrainKeyThree = b

refrainChords = \chordmode {
  a1:m a1:m e1:7 a1:m
  a1:m a1:m a1:m a1:m a1:m a1:m e1:7 a1:m a1:m a1:m a1:m a1:m a1:m a1:m e1:7 a1:m
  a1:m a1:m a1:m a1:m a1:m a1:m e1:7 a1:m

  \transpose \refrainKey \refrainKeyTwo {
  a1:m a1:m e1:7 a1:m
  a1:m a1:m a1:m a1:m a1:m a1:m e1:7 a1:m a1:m a1:m a1:m a1:m a1:m a1:m e1:7 a1:m
  }
  \transpose \refrainKey \refrainKeyThree {
  a1:m a1:m e1:7 a1:m
  a1:m a1:m a1:m a1:m a1:m a1:m e1:7 a1:m a1:m a1:m a1:m a1:m a1:m a1:m e1:7 a1:m
  e1:7 a1:m e1:7 a1:m e1:7 a1:m e1:7 a1:m 
  }
}

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \tempo "Medium" 4 = 120

  \sectStart "Intro"
  \clef "bass_8"
  \bar ".|:"
  \repeat volta 2 {
  a,,2_"(Bass)" c2 | a4. c8~ c4 a4 | e'2 gs,4. a8~_"(Continues similar)" | a2. e4 |
  }
  \bar ":|.|:"
  \clef \whatClef
  \sectNoBar "Verse 1 & 2"

  \repeat volta 2 {
  d'''8 c8 d8 c8 d4 a8 c8~ | c8 d4. r2 | d8 c8 d8 c8 d8 c8 a8 a8~ | a4 r4 r2 | 
  d8 c8 d8 c8 d4 a8 c8~ | c8 d4. r8 a8 a8 a8 | d8 c8 d8 c8 d8 c8 a8 a8~ | a8 a8 a8 a8 c4 a4 |
  r1 | r8 ef'4 c8 d4 c4 | d8 c8 d8 c8 d8 c8 a8 a8~ | a4 r4 r2 |
  gs'8 a8 r4 r4 d,8 c8 | d8 c8 r4 r2 | d8 c8 d4 d8 c8 a8 a8~ | a4 r4 r2 |
  }
  \bar "||-:|."

  \sectNoBar "Bridge"

  r8 c4 a8 a4 g4 | r8 a4 g8 a4 c4 | r8 c8 a4 a4 g4 | a8 g4 a8~ a4 r4 |
  \break
  r8 c4 a8 a4 g4 | g8 a4 g8 a4 c4 | d8 c8 d8 c8 d8( c8) a8 a8~ | a4 r4 r2 |
  
  \transpose \refrainKey \refrainKeyTwo {
    \relative f' {
  \key \refrainKey \minor
  \sect "Interlude"
  \clef "bass_8"
  
  a,,2 c2 | a4. c8~ c4 a4 | e'2 gs,4. a8~ | a8 e'8 d4 c4 b4 |
  \bar "||"

  \xPageBreak

  \clef \whatClef
  \sectNoBar "Verse 3"

  d''8 c8 d8 c8 d4 a8 c8~ | c8 d4. r2 | d8 c8 d8 c8 d8 c8 a8 a8~ | a4 r4 r2 | 
  d8 c8 d8 c8 d4 a8 c8~ | c8 d4. r8 a8 a8 a8 | d8 c8 d8 c8 d8 c8 a8 a8~ | a8 a8 a8 a8 c4 a4 |
  r1 | r8 ef'4 c8 d4 c4 | d8 c8 d8 c8 d8 c8 a8 a8~ | a4 r4 r2 |
  gs'8 a8 r4 r4 d,8 c8 | d8 c8 r4 r2 | d8 c8 d4 d8 c8 a8 a8~ | a4 r4 r2 |
  } }
  
  \transpose \refrainKey \refrainKeyThree {
    \relative f' {
  \sect "Interlude"
  \key \refrainKey \minor
  \clef "bass_8"
  
  a,,2 c2 | a4. c8~ c4 a4 | e'2 gs,4. a8~ | a2. e4 |


  \clef \whatClef
  \sectNoBar "Verse 4 & 5"
  \bar ".|:-||"
  \repeat volta 2 {
  d'''8 c8 d8 c8 d4 a8 c8~ | c8 d4. r2 | d8 c8 d8 c8 d8 c8 a8 a8~ | a4 r4 r2 | 
  d8 c8 d8 c8 d4 a8 c8~ | c8 d4. r8 a8 a8 a8 | d8 c8 d8 c8 d8 c8 a8 a8~ | a8 a8 a8 a8 c4 a4 |
  r1 | r8 ef'4 c8 d4 c4 | d8 c8 d8 c8 d8 c8 a8 a8~ | a4 r4 r2 |
  gs'8 a8 r4 r4 d,8 c8 | d8 c8 r4 r2 | d8 c8 d4 d8 c8 a8 a8~ | a4 r4 r2 |
  }
  \bar "||-:|."
  \sectNoBar "Outro"
  \clef "bass_8"
  
  e,2 gs,4. a8~ | a4. c8~ c4 a4 | e'2 gs,4. a8~ | a4. c8~ c4 a4 | 
  e'2 gs,4. a8~ | a4. c8~ c4 a4 | e'2 gs,4. a8~ | a1\fermata |


  } }

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
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Bridge } }
   \vspace #2
   \line { \large { Interlude } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Interlude } }
   \vspace #1
   \line { \large { Verse 4 } }
   \vspace #4
   \line { \large { Verse 5 } }
   \vspace #4
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #4
   \line { \large { Never know how much I love you, never know how much I care. } }
   \line { \large { When you put your arms around me, I get a fever that's so hard to bear. } }
   \line { \large { You give me fever, when you kiss me, fever when you hold me tight. } }
   \line { \large { Fever! In the mornin', a-fever all through the night. } }
   \vspace #1
   \line { \large { Sun lights up the daytime, moon lights up the night } }
   \line { \large { I light up when you call my name and you know I'm gonna treat you right. } }
   \line { \large { You give me fever, when you kiss me, fever when you hold me tight. } }
   \line { \large { Fever! In the mornin', a-fever all through the night. } }
   \vspace #1
   \line { \large { Everybody's got the fever. That is something you all know. } }
   \line { \large { Fever isn't such a new thing. Fever started long ago. } }
   \vspace #3
   \line { \large { Romeo loved Juliet. Juliet, she felt the same. } }
   \line { \large { When he put his arms around her, he said, “Julie, baby, you're my flame.” } }
   \line { \large { Thou giveth fever when we kisseth, fever with thy flaming youth. } }
   \line { \large { Fever! I'm a fire, fever, yeah, I burn forsooth. } }
   \vspace #3
   \line { \large { Captain Smith and Pocahontas had a very mad affair. } }
   \line { \large { When her daddy tried to kill him, she said, “Daddy, oh, don't you dare. } }
   \line { \large { He gives me fever with his kisses, fever when he holds me tight. } }
   \line { \large { Fever! I'm his missus, daddy, won't you treat him right?” } }
   \vspace #1
   \line { \large { Now you've listened to my story. Here's the point that I have made. } }
   \line { \large { Chicks were born to give you fever, be it Fahrenheit or Centigrade. } }
   \line { \large { They give you fever when you kiss them, fever if you live and learn. } }
   \line { \large { Fever! 'Til you sizzle. What a lovely way to burn. } }
   \vspace #1
   \line { \large { What a lovely way to burn. } }
   \line { \large { What a lovely way to burn. } }
   \line { \large { What a lovely way to burn. } }
 }
}
