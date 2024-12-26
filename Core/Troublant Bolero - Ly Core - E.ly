%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Troublant Bolero"
  subtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = "© 1948 Publications Francis Day S.A."
}

introKey = e

introChords  = \chordmode {
  e1:m7 e1:m7 a1:13 a1:13
  e1:m7 e1:m7 ef1:7.9+/e ef4:7.9+/e r4
}

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef bass
  \tempo "Bolero" 4 = 110

  \xTextMark \markup{ \bold \box "Intro" }

  r4 e,8 e8 ds4 e4 | e,4 e'8 e8 ds4 e4 | e,4 e'8 e8 ds4 e4 | e,4 e'8 e8 ds4 e4 |
   e,4 e'8 e8 ds4 e4 | e,4 e'8 e8 ds4 e4 | e,4 e'8 e8 ds4 e4 |
  \partial 2 e,4 r4 |
  \bar "||"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  f2:7
  
  e2:maj7 e2:7 e1:6 e2:m7+ e2:m7 a1:m7
  d1:6.9 c1:7 b1:sus7/fs b4:7 r4 f2:7

  e2:maj7 e2:7 e1:6 e2:m7+ e2:m7 a1:m7
  d1:6.9 c2:7 b2:7 e1:6.9 e4:6.9 r4 e2:7
  
  a2:m a2:m7 d1:7/a bf2:dim7 g2/b e1:7.9-/gs
  a2:m a2:m/g fs1:m7.5- b1:7 b2:7 f2:7

  e2:maj7 e2:7 e1:6 e2:m7+ e2:m7 a1:m7
  d1:6.9 c2:7 b2:7 e1:6.9 e4:6.9 r2.
}

refrainKey = e

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \partial 2 b,2 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  b'1 | r4 gs8 a8 b4 g8 a8 | b4. b8~ b2 | r4 g8 a8 b4 a8 gs8 |
  a4. a8 a2 | g2.. fs16 e16 | fs1~ | fs4 r4 b,2 |
  
  \sect "A2"
  
  b'1 | r4 gs8 a8 b4 g8 a8 | b4. b8~ b2 | r4 g8 a8 b4 a8 gs8 |
  a4. a8 a2 | fs2.. e16 ds16 | e1~ | e4 r4 e2 |
  
  \sect "B"
  
  <e' c>1~ | <e c>4 <c a>8 <d b>8 <e c>4 <d b>8 <cs as>8 | 
  <cs as>4. <ds b>8 <ds b>2~ | <ds b>4 <b g>8 <c a>8 <d b>4 <c a>8 <b gs>8 |
  <b gs>4. <c a>8 <c a>2 <cs a>4 <a fs>8 <b g>8 <c a>4 <b g>8 <as fs>8 | <b fs>1~ |
  <b fs>4 c4 \tuplet 3/2 { d4 c4 d4 } |
  
  \sect "A3"

  b1 | r4 gs8 a8 b4 g8 a8 | b4. b8~ b2 | r4 g8 a8 b4 a8 gs8 |
  a1 | g2 \tuplet 3/2 { fs4 e4 d4 } | e1~ | e4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/bass-intro.ily"
\include "../Include/refrain.ily"
