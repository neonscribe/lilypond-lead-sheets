%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Heartaches by the Number"
  subtitle = \instrument
  poet = ""
  composer = "Harlan Howard"
  copyright = \markup \small "© 1959 Pamper Music Inc."
}

refrainLyrics = \lyricmode {
Heart -- ache num -- ber one was when you left me.
I nev -- er knew that I could hurt this way.
And heart -- ache num -- ber two was when you came back a -- gain.
You came back but nev -- er meant to stay.

Now I've got heart -- aches by the num -- ber, troub -- les by the score.
Ev -- 'ry -- day you love me less, each day I love you more.
Yes, I've got heart -- aches by the num -- ber, a love that I can't win.
But the day that I stop count -- ing, that's the day my world will end.
}

refrainChords = \chordmode {
  s2
  
  bf1 bf1 ef1 ef1 f1:7 f1:7 bf1 bf1
  
  bf1 bf1 ef1 ef1 f1:7 f1:7 bf1 bf1
  bf1 bf1 ef1 ef1 f1:7 f1:7 bf1 bf4 r2.
  
  bf1 bf1 ef1 ef1 f1:7 f1:7 f1:7 bf1 bf4 r2.
  bf1 bf1 ef1 ef1 f1:7 f1:7 f1:7
  
  bf1 r1
  
  bf2 ef2 bf4 f4:7 bf2
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Ray Price 1959]" 4 = 128

  \sectStart "Intro - Solo"
  
  \partial 2 \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  
  \sect "Verse"
  
  d'8 ef4. d4 c4 | c4 bf4 f4 d4 | r4 ef4 g2~ | g2 r4 d'4 |
  \break
  ef8 d4 ef8~ ef4. c8 | a8 f4 a8~ a4 g8 f8~ | f1 | r2 r4 d'4 |
  \break
  d8 ef4. d4 c4 | c4 bf4 f4 d4 | r4 ef4 ef4 f8 g8~ | g1 |
  \break
  ef'4 d4 ef4. c8~ | c8 a8 f4 g4 a8 bf8~ | bf1 | r4 f4 bf4 c4 |
  \bar "||"
  
  \xPageBreak
  
  \sectStart "Chorus"
  
  d8 ef4. d4. c8 | c8 bf4.~ bf2 | ef,8 ef4. ef4 f8 g8~ | g1 |
  \break
  c8 d4 c8~ c4 bf4 | bf4 a8 a8~ a4 r8 a8~ | a8 a8 bf4 a4 g4 | f1 |
  \break
  r4 f4 bf4 c4 | d8 ef4. d4. c8 | c8 bf4.~ bf4. ef,8 | ef4. ef8 ef8 f4 g8~ |
  \break
  g2 r4 c8 bf8 c4. d8 c4 bf4 | bf8 a4. r4 a8 g8 | f4 a4 g4 a8 bf8~ \textToCodaLastTime | bf1 | r1 |
  \bar "||-|."
  
  \textCodaBreak
  
  bf1\repeatTie |
  \override NoteHead.style = #'slash
  bf4 f4 bf2\fermata
  \revert NoteHead.style

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \line { \large { Verse 2 } }
   }
  \column
  {
    \hspace #4
    }
  \column {
    \line { \large { Heartache number three was when you called me } }
    \line { \large { And said that you were coming back to stay. } }
    \line { \large { With hopeful heart I waited for your knock on the door. } }
    \line { \large { I waited, but you must have lost your way. } }
  }
}
