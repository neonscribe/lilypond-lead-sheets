%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Oleo"
  subtitle = \instrument
  poet = ""
  composer = "Sonny Rollins"
  copyright = "© 1954 Prestige Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  bf2:6 g2:m7 c2:m7 f2:7 bf2:6 g2:m7 c2:m7 f2:7
  f2:m7 bf2:7 ef2:maj7 ef2:m6 d2:m7 g2:m7 c2:m7 f2:7

  bf2:6 g2:m7 c2:m7 f2:7 bf2:6 g2:m7 c2:m7 f2:7
  f2:m7 bf2:7 ef2:maj7 ef2:m6 d2:m7 g2:m7 c4:m7 f4:7 bf2:6

  d1:7 d1:7 g1:7 g1:7 c1:7 c1:7 f1:7 f1:7

  bf2:6 g2:m7 c2:m7 f2:7 bf2:6 g2:m7 c2:m7 f2:7
  f2:m7 bf2:7 ef2:maj7 ef2:m6 d2:m7 g2:m7 c4:m7 f4:7 bf2:6
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up" 4 = 162

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 bf4 g8 c4. bf8~ | bf8 g8 d'2 ef8 d8 | r8 bf4 g8 d'8 ef8 d8 c8 | bf8 g8 gs8 a8 r8 bf4 g8 |
  \break
  c4. bf8~ bf8 g8 bf4 | r8 bf4 g8 ef'8 d8 bf8 c8 | r4 r8 g8~ g8 bf4 g8 | d'4 r8 c8 d8 c8 a8 f8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  r8 bf4 g8 c4. bf8~ | bf8 g8 d'2 ef8 d8 | r8 bf4 g8 d'8 ef8 d8 c8 | bf8 g8 gs8 a8 r8 bf4 g8 |
  \break
  c4. bf8~ bf8 g8 bf4 | r8 bf4 g8 ef'8 d8 bf8 c8 | r4 r8 g8~ g8 bf4 g8 | df'8 bf8 c8 bf8 r2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  r8 bf4 g8 c4. bf8~ | bf8 g8 d'2 ef8 d8 | r8 bf4 g8 d'8 ef8 d8 c8 | bf8 g8 gs8 a8 r8 bf4 g8 |
  \break
  c4. bf8~ bf8 g8 bf4 | r8 bf4 g8 ef'8 d8 bf8 c8 | r4 r8 g8~ g8 bf4 g8 | df'8 bf8 c8 bf8 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
