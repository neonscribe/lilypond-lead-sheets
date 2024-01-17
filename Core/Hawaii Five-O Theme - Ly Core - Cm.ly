%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Hawaii Five-O Theme"
  subtitle = \instrument
  poet = ""
  composer = "Mort Stevens"
  copyright = "© 1969 Famous Music LLC and Aspenfair Music"
}

straightEighths = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \chordInsideParens{ g2.:7 }
  c1:m bf1 c1:m ef1
  c1:m bf1 ef1 g1:7
  c1:m c1:m f1 af2 bf2
  c1:m af2 bf2 c2..:m gs8:7 gs1:7
  
  gs1:7
  cs1:m b1 cs1:m e1
  cs1:m b1 e1 gs1:7
  cs1:m cs1:m fs1 a2 b2
  cs1:m a2 b2 cs2..:m a8:7 a1:7
  
  a1:7
  d1:m c1 d1:m f1
  d1:m c1 f1 a1:7
  d1:m d1:m g1 bf2 c2
  d1:m c4 s2. d1:m c1 d1:m
}

refrainKey = c
refrainKeyTwo = cs
refrainKeyThree = d

bandBreak =
#(define-music-function (expr) (ly:music?)
  "mark a break in the music where the band drops out"
  #{ \ottava #1
     \set Staff.ottavation = #"break"
     \transpose c c'' { \relative f' { #expr } }
     \ottava #0 #})

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Straight Eighths" 4 = 168
  
  \mark \markup{ \box "A" }
  \partial 2. g8 g8 bf8 d4 c8~ |
  \bar "||"

  
  c4. g8~ g2 | r4 g8 g8 f8 bf4 g8~ | g1 | r4 g8 g8 bf8 d4 c8~ |
  c4. g'8~ g2 | r4 f8 f8 d8 bf8 r8 g'8~ | g1~ | g1 |
  r4 af4 g8 f8 ef8 c8 | g8 f8 ef8 c8~ c2 | r4 c''4 a8 g8 f8 d8 | c8 bf8 af8 bf8~ bf8 c8 d4 |
  c4. g'8~ g2 | r4 f8 f8 d8 bf4 c8~ | c2~ c8 c8 c8 af8~ | af1 |
  \break
  \mark \markup{ \box "B" }
  \key \refrainKeyTwo \minor
  
  \transpose \refrainKey \refrainKeyTwo {
    \relative f' {
      r4 g8 g8 bf8 d4 c8~ |
      \bar "||"
  c4. g8~ g2 | r4 g8 g8 f8 bf4 g8~ | g1 | r4 g8 g8 bf8 d4 c8~ |
  c4. g'8~ g2 | r4 f8 f8 d8 bf8 r8 g'8~ | g1~ | g1 |
  r4 af4 g8 f8 ef8 c8 | g8 f8 ef8 c8~ c2 | r4 c''4 a8 g8 f8 d8 | c8 bf8 af8 bf8~ bf8 c8 d4 |
  c4. g'8~ g2 | r4 f8 f8 d8 bf4 c8~ | c2. r8 af8~ | af1 |
  } }
  \break
  \mark \markup{ \box "C" }
  \key \refrainKeyThree \minor
  
  \transpose \refrainKey \refrainKeyThree {
    \relative f' {
      r4 g8 g8 bf8 d4 c8~ |
      \bar "||"
  c4. g8~ g2 | r4 g8 g8 f8 bf4 g8~ | g1 | r4 g8 g8 bf8 d4 c8~ |
  c4. g'8~ g2 | r4 f8 f8 d8 bf8 r8 g'8~ | g1~ | g1 |
  r4 af4 g8 f8 ef8 c8 | g8 f8 ef8 c8~ c2 | r4 c''4 a8 g8 f8 d8 | c8 bf8 af8 bf8~ bf8 c8 d4 |
  c4. g'8~ g2 | r4 \bandBreak { f8 f8 d8 bf4 } \relative f'' { c8~ | c1 | r4 f8 f8 d8 f8 bf8 c8~ | c1 | }
  } }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
