%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Rosetta"
  subtitle = \instrument
  poet = ""
  composer = "Earl Hines and Henri Woode"
  copyright = "© 1933 Morley Music Co., Inc."
}

refrainLyrics = \lyricmode {
Ro -- set -- ta, __ my Ro -- set -- ta, __
in my heart, dear, there's no one but you. __
You told me __ that you loved me. __
Nev -- er leave me for some -- bod -- y new.
You've made my whole life a dream; __
I pray you'll make it come true.
Ro -- set -- ta, __ my Ro -- set -- ta, __
please say I'm just the one, dear, for you.
}

refrainChords = \chordmode {
  s4

  f1:6 e1:7 ef1:7 d1:7
  g1:7 c1:7 a2:m7 d2:7 g2:m7 c2:7

  f1:6 e1:7 ef1:7 d1:7
  g1:7 c1:7 f1:6 b2:m7.5- e2:7
  
  a1:m b2:m7.5- e2:7 a1:m d2:m7 g2:7
  c2:maj7 a2:m7 d2:m7 g2:7 g1:m7 c1:7

  f1:6 e1:7 ef1:7 d1:7
  g1:7 c1:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 4 a4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c4 c2.~ | c2 e4 d4 | a4 a2.~ | a2 e'4 d4 |
  \break
  a4 a2 d,4 | a'4 a2 e4 | d1~ | d2. a'4|
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  c4 c2.~ | c2 e4 d4 | a4 a2.~ | a2 e'4 d4 |
  \break
  a4 a2 d,4 | a'4 a2 d,4 | f1 | r1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  a2 a4 a4 | b2 b4 b4 | c1~ | c2 r2 |
  \break
  e2 e4 e4 | d2 g,4 g4 | c1 | r2 r4 a4 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  c4 c2.~ | c2 e4 d4 | a4 a2.~ | a2 e'4 d4 |
  \break
  a4 a2 d,4 | a'4 a2 d,4 | f1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
