%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Moonglow"
  subtitle = \instrument
  poet = "Eddie DeLange"
  composer = "Will Hudson and Irving Mills"
  copyright = "© 1934 Mills Music, Inc."
}

refrainLyricsOne = \lyricmode {
It must have been moon -- glow,
way up in the blue.
It must have been moon -- glow
that led me straight to you. __

We __ seemed to float right through the air. __
Hea -- ven -- ly songs __ seemed to come from ev -- 'ry where.

And now when there's moon -- glow,
way up in the blue,
I al -- ways re -- mem -- ber
that moon -- glow gave me you. __
}

refrainLyricsTwo = \lyricmode {
I still hear you say -- ing,
“Dear one, hold me fast.”
And I start in pray -- ing,
“Oh Lord, please let this last.” __
}

refrainHLChords = \chordmode {
  c1:maj7 f1:7.11+ g1:6 a1:7
  a1:m7 d1:7 g2:6 ef2:7 a4:m7 ef8:7 g8*5:6

  g1:7 g2:7 fs4:7 f4:7 e1:7 e1:7
  a1:7 a1:7 d2.:7 ef4:7 d1:7

  c1:maj7 f1:7.11+ g1:6 a1:7
  a1:m7 d1:7 g2:6 ef2:7 a4:m7 ef8:7 g8*5:6

  c1:maj7 f1:7.11+ g1:6 a1:7
  a1:m7 d1:7 g2:6 ef2:7 a2:m7 g2:6

  g1:7 g2:7 fs4:7 f4:7 e1:7 e1:7
  a1:7 a1:7 d2.:7 ef4:7 d1:7

  c1:maj7 f1:7.11+ g1:6 a1:7
  a1:m7 d1:7 g2:6 ef2:7 a2:m7 g2:6
}

refrainNRChords = \chordmode {
  c1:6 f1:9.11+ g2:6 \chordInsideParens{ e2:m7 } a1:9
  a1:m7 d1:13 g2:6 g2:dim7 a4:m7.5-/g g8:dim7 g8*5:6

  c1:6 f1:9.11+ g2:6 \chordInsideParens{ e2:m7 } a1:9
  a1:m7 d1:13 g2:6 g2:dim7 a4:m7.5-/g g8:dim7 g8*5:6

  g1:7 g2:7 fs4:7 f4:7 e1:7 e1:7
  a1:7 a1:7 d2.:7 ef4:7 d1:7

  c1:6 f1:9.11+ g2:6 \chordInsideParens{ e2:m7 } a1:9
  a1:m7 d1:13 g2:6 g2:dim7 a4:m7.5-/g g8:dim7 g4.:6 \chordInsideParens{ g4:7 }
}

refrainChords = \refrainHLChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 120

  \mark \markup{ \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r4 r8 e8 g8 e8 g4 | b4 b2. | r4 r8 e,8 g8 e8 g4 | b1 |
  \break
  r4 r8 e,8 g8 e8 g4 | b4 b2. | r8 g4. g4 g4 | g4 g8 g8~ g2 |
  }
  \break

  \mark \markup{ \box "B" }
  
  d'1~ | d4 d8 d8 cs8 cs8 c8 c8 | b1~ | b1 |
  \break
  b8 b8 b8 b8~ b2~ | b2 cs,8 e8 g8 b8 | b2. bf4 | a1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  r4 r8 e8 g8 e8 g4 | b4 b2. | r4 r8 e,8 g8 e8 g4 | b1 |
  \break
  r4 r8 e,8 g8 e8 g4 | b4 b2. | r8 g4. g4 g4 | g4 g8 g8~ g2 |
  
  \break

  \mark \markup{ \box "Solos" }

  \bar ".|:-|."
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "||"
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

\include "../Include/refrain-two-verses.ily"
