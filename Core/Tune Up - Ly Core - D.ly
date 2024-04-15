%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Tune Up"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis/Eddie Vinson"
  copyright = "© 1953 Prestige Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  r1 r1 r1 r1
  
  e1:m7 a1:7 d1:maj7 d1:maj7
  d1:m7 g1:7 c1:maj7 c1:maj7
  c1:m7 f1:7 bf1:maj7 g1:m7
  
  e1:m7 f1:7 bf1:maj7 a1:7
  
  e1:m7 a1:7 d1:maj7 d1:maj7
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 280

  \mark \markup{ \box "Intro" }
  
  r8 <d e>4-. <d e>8 a'4. <d, e>8 | r8 <d e>8 a'4~ a8 <d, e>8 r8 <d e>8 |
  a'2 <d, e>4-. <d e>8 a8 | r1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "Head" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  a'2. g4 | ef2 e4. f8~ | f1 | r1 |
  \break
  g2. f4 | df2 d4. e8~ | e1 | r2 r4 e4 |
  \break
  ef2 ef4. ef8~ | ef2 f8 g4 a8 | d4. d8~ d2 | r2 r8 d4 c8 |
  \break
  \alternative { \volta 1 {
  a4. a8~ a2 | r4 r8 g8 a8 c8 a8 g8 | a4. a8~ a2 | r2 r8 c4 bf8 |
  \break
  } \volta 2 {
  a4. a8~ a2~ | a1 | a4-^ r4 r2 | r1 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
