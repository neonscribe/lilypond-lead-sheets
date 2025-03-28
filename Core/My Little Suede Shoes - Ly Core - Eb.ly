%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "My Little Suede Shoes"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Parker"
  copyright = \markup \small "© 1951 Atlantic Music Corp."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2
  
  f2:m7 bf2:7 ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 c2:m7
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7 ef1:6

  f2:m7 bf2:7 ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 c2:m7
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7 ef1:6

  af1:6 g2:m7 c2:7 f2:m7 bf2:7 ef1:6
  af1:6 g2:m7 c2:7 f2:m7 bf2:7 ef1:6

  f2:m7 bf2:7 ef2:6 c2:m7 f2:m7 bf2:7 ef2:6 c2:m7
  f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7 ef1:6
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Latin" 4 = 146

  \partial 2 \invisEighth bf,8 ef8 g8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  f8 f8 f8 f8 ef8 f8 r8 g8 | r2 r8 bf,8 ef8 g8 | f8 f8 f8 f8 ef8 f8 r8 ef8 | r2 r8 bf8 ef8 g8 |
  \break
  f8 f8 f8 f8 ef8 f8 r8 g8 | r8 bf4. a4 af4 | g8 g8 g8 g8 f8 f8 r8 ef8 | r2 r8 bf8 ef8 g8 |
  
  \sect "A2"
  
  f8 f8 f8 f8 ef8 f8 r8 g8 | r2 r8 bf,8 ef8 g8 | f8 f8 f8 f8 ef8 f8 r8 ef8 | r2 r8 bf8 ef8 g8 |
  \break
  f8 f8 f8 f8 ef8 f8 r8 g8 | r8 bf4. a4 af4 | g8 g8 g8 g8 f8 f8 r8 ef8 | r2 r8 bf'8 c8 d8 |
  
  \sect "B"
  
  ef8 ef8 ef8 ef8 c8 af8 r8 d8 | r8 d4. bf8 g8 r4 | c8 c8 c8 c8 af8 f8 r8 bf8~ | bf2 r8 bf8 c8 d8 |
  ef8 ef8 ef8 ef8 c8 af8 r8 d8 | r8 d4. bf8 g8 r4 | c8 c8 c8 c8 af4 f8 ef8~ | ef2 r8 bf8 ef8 g8 |
  
  \sect "A3"

  f8 f8 f8 f8 ef8 f8 r8 g8 | r2 r8 bf,8 ef8 g8 | f8 f8 f8 f8 ef8 f8 r8 ef8 | r2 r8 bf8 ef8 g8 |
  \break
  f8 f8 f8 f8 ef8 f8 r8 g8 | r8 bf4. a4 af4 | g8 g8 g8 g8 f8 f8 r8 ef8 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
