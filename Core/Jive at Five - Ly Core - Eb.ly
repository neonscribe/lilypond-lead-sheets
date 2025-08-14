%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Jive at Five"
  subtitle = \instrument
  poet = ""
  composer = "Harry Edison & Count Basie"
  copyright = \markup \small "© 1941 Hallmark Music Publishing Company"
}

refrainChords = \chordmode {
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7
  ef2:7 d4.:7 df4.:7 c2.:7 b2:7 bf2:7 ef1:6
  
  ef2 gf2:dim7 f4:m7 bf4:7 ef2:6 ef2:6 gf2:dim7 f4:m7 bf4:7 ef2:6
  ef2:6 gf2:dim7 f4:m7 bf4:7 ef2:6 f1:9 bf1:7.5+
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7
  ef2:7 d4.:7 df4.:7 c2.:7 b2:7 bf2:7 ef2.:6
  
  \chordInsideParens{ bf4:7 }

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7
  ef2:7 d2:7 df2:7 c2:7 b2:7 bf2:7 ef1:6
  
  ef2 gf2:dim7 f2:m7 bf2:7 ef2 gf2:dim7 f2:m7 bf2:7
  ef2 gf2:dim7 f2:m7 bf2:7 f1:9 bf1:7.5+
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:maj7 c2:m7 f2:m7 bf2:7
  ef2:7 d2:7 df2:7 c2:7 b2:7 bf2:7 ef1:6
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Count Basie 1939]" 4 = 170

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g8 bf8 r4 bf2 | r8 bf4 gf8 f8 ef8 c8 bf8 | g'8 bf8 r4 bf2 | r8 bf4 gf8 f8 ef8 c8 bf8 |
  \break
  r8 bf'8 bf4 a8 a4 af8 | af4 g8 g8~ g4 r4 | gf4 gf4 f8 ef8 f8 gf8 | f8 ef4 ef8~ ef4 r4 |
  }
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  bf'8 ef4 bf8 a8 ef'8 a,4 | af4 g8 ef8~ ef4 r4 | bf'8 ef4 bf8 a8 ef'8 a,4 | af4 g8 ef8~ ef4 r4 |
  \break
  bf'8 ef4 bf8 a8 ef'8 a,4 | af4 g8 ef8~ ef4 r4 | g4 g4 d'4 d8 d8 | c8 fs,4 fs8~ fs4 r4 |
  
  \sect "A3"
  
  g8 bf8 r4 bf2 | r8 bf4 gf8 f8 ef8 c8 bf8 | g'8 bf8 r4 bf2 | r8 bf4 gf8 f8 ef8 c8 bf8 |
  \break
  r8 bf'8 bf4 a8 a4 af8 | af4 g8 g8~ g4 r4 | gf4 gf4 f8 ef8 f8 gf8 | f8 ef4 ef8~ ef4 r4 |
  \break 
  
  \xTextMark \markup{ \bold \box "Solos" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
