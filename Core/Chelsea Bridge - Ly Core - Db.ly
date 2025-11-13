%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Chelsea Bridge"
  subtitle = \instrument
  poet = ""
  composer = "Billy Strayhorn"
  copyright = \markup \small { \now " " "© 1941 Billy Strayhorn Songs, Inc." }
}

refrainChords = \chordmode {
  s2.
  
  ef1:7.11+ df1:7.11+ ef2:7 df2:7 bf1:7 
  ef1:m7 af1:7 df1:6
  
  df4:6 c4:7 b4:7 bf4:7
  
  df4 \chordSlash 2 b4:7
  
  f2:m7 b2:7 af2:m7 g2:dim7 fs2:m7 f2:7 b2:m7/e e2:7
  a2:maj7 a4:m7 d4:7 g1:maj7 g1:m7 df4:7 c4:7 b4:7 bf4:7
  
  

  ef1:7.11+ df1:7.11+ ef2:7 df2:7 bf1:7 
  ef1:m7 af1:7 df1:6
  df4:6
  \chordOpenParen{ c4:7 }
  b4:7
  \chordCloseParen{ bf4:7 }
}

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key df \major
  \clef \whatClef
  \tempo "Medium Ballad [Duke Ellington 1941]" 4 = 98

  \partial 2. bf,8 c8 df8 ef8 \tuplet 3/2 { f8 g8 af8 } |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  a2. bf4 | g2. af4 | a4 bf4 g4 af4 | d,1 | 
  \break
  f8 df4.~ df2 | f8 af4.~ af2 | f8 df4.~ df2~ |
  \break
  \alternative { \volta 1 {
  df4 bf8 c8 df8 ef8 \tuplet 3/2 { f8 g8 af8 } |
  } \volta 2 {
  df,2.\repeatTie af'8 a8 |
  } } }
  \sect "B"
  
  \key e \major
  
  b8 b8 b8 b8~ b2 | b8 ds,8 \tuplet 3/2 { e8 gs8 b8 } ds4 e8 cs8 | b8 gs'8 e8 cs8 c8 g'4 ef8 | d2. e,8 fs8 |
  \break
  gs4. a8 e'4 d8 c8 | b8 d4.~ d4 g,8 a8 | bf4 g8 bf8 d4 bf8 d8 | f4 bf,,8 c8 df8 ef8 \tuplet 3/2 { f8 g8 af8 } |
  
  \sect "A3"
  
  a2. bf4 | g2. af4 | a4 bf4 g4 af4 | d,1 |
  \break
  f8 df4.~ df2 | f8 af4.~ af2 | f8 df4.~ df2~ | df2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
