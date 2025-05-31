%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bessie's Blues"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small "© 1964 Jowcol Music"
}

refrainChords = \chordmode {
  ef1:7 af1:7 ef1:7 ef1 :7
  af1:7 af1:7 ef1:7 df2:7 c2:7
  bf1:7 af1:7 ef1:7 ef2:7 bf2:7

  ef1:7 af1:7 ef1:7 ef1 :7
  af1:7 af1:7 ef1:7 df2:7 c2:7
  bf1:7 af1:7 ef1:7 ef2:7 bf2:7
  
  af1:7 s8 ef4:7/g af4:6 a4:dim7 ef8:7/bf s4 s8 ef8*5:9
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing [John Coltrane 1964]" 4 = 184

  \sectStart "A1"
  
  g'4 ef8 df8 r4 r8 c'8~ | c4 af8 ef8 gf4-. r8 bf,8 | g'8 ef8 g4-. g4 g8 g8 | r8 ef8 d8 df8~ df2 |
  \break
  r8 c'4 ef,8 c'8 bf8 r8 c8~ | c4. af8 r8 gf8 r8 bf,8 | g'8 ef8 g4-. g4 g8 g8 | r8 ef8 d8 df8 r4 g8 f8~ |
  \break
  f4 d8 c8 bf8 c8 d8 f8 | ef8 c8 af8 \parenthesize f8 c'8 \parenthesize af8 ef'8 ef8~ |
  ef4. f8 ef8 c8 r4 | r4 r8 bf8 f'8 g8 af8 bf8 |
  
  \sect "A2"

  g4 ef8 df8 r4 r8 c'8~ | c4 af8 ef8 gf4-. r8 bf,8 | g'8 ef8 g4-. g4 g8 g8 | r8 ef8 d8 df8~ df2 |
  \break
  r8 c'4 ef,8 c'8 bf8 r8 c8~ | c4. af8 r8 gf8 r8 bf,8 | g'8 ef8 g4-. g4 g8 g8 | r8 ef8 d8 df8 r4 g8 f8~ |
  \break
  f4 d8 c8 bf8 c8 d8 f8 \textToCodaLastTime | ef8 c8 bf8 af8 gf8 ef8 gf8 af8 | gf8 ef4 ef8~ ef2 | r1 |
  
  \bar "|."

  \textCodaBreak

  ef'8 c8 af8 \parenthesize f8 c'8 \parenthesize af8 ef'8 ef8~ | ef1~ | ef1 |
  
  \bar "|."  
}

refrainKicksOverTime = \relative f' {
  s1*25 r8 ef4 ef8~ ef8 ef4 ef8 r4 r8 ef8~ ef2\fermata
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
