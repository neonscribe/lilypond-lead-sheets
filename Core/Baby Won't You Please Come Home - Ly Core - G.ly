%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Baby, Won't You Please Come Home"
  subtitle = \instrument
  poet = ""
  composer = "Chas. Warfield and Clarence Williams"
  copyright = "© 1923 Clarence Williams Music Pub. Co., Inc."
}

refrainLyrics = \lyricmode {
Ba -- by, won't you please come home, 'cause your mom -- ma's all a -- lone.
I have tried in vain, nev -- er no more to call your name.
When you left, you broke my heart, 'cause I nev -- er thought we'd part.
Ev -- 'ry hour in the day, you will hear me say, ba -- by won't you please come home.
home, Dad -- dy needs mam -- ma, ba -- by won't you please come home. __
}

refrainChords = \chordmode {
  g2 b2:7 e1:7 a1:7 a1:7
  b1:7 e1:m a1:7 d1:7
  
  g2 b2:7 e1:7 c1:7 b1:7
  c2 cs2:dim7 g2 e2:7 a2:7 d2:7 g2:6 d2:7
  
  g4 b4:7 e2:7 a2:7 d2:7 g1:6
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Slow" 4 = 90

  \xTextMark \markup{ \bold \box "A" }
  
  b8 as8 b8 as8 b4 fs4 | b1 | b8 as8 b8 as8 b4 fs4 | fs8( e4.~ e2) |
  \break
  f8 fs4 b8~ b4 a4 | g2. \tuplet 3/2 { e8 fs8 g8 } | a4 e4 a8 a4 a8~ | a1 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  b8 as8 b8 as8 b4 fs4 | fs8( e4.~ e2) | a8 g8 a8 g8 a4 bf4 | b2. fs8 g8 |
  \break
  a8 gs8 a8 bf8~ bf4 a8 g8 | b4 b8 b8~ b2 | b8 as8 b8 as8 b8 d,4. \textToCodaLastTime | g2. r4 |
  

  \bar "||-|." 

  \textCodaBreak
  
  g4 \tuplet 3/2 { a8 as8 b8 } fs8 e4. | a8 b8 c8 cs8 d4 b8 g8~ | g2. r4 |

  \bar "|." 
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
