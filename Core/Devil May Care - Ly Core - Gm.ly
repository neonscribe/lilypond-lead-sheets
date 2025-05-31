%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Devil May Care"
  subtitle = \instrument
  poet = ""
  composer = "Bob Dorough, Terrell Kirk, Jr."
  copyright = \markup \small "© 1953 Sincere Music"
}

refrainLyrics = \lyricmode {
No cares for me, I'm hap -- py as I __ can be,
I've learned to love and to live, __ dev -- il may care. __

No blues __ or woes, what -- ev -- er comes lat -- er goes, __
that's how I take and I give, __ dev -- il may care. __

When the day is through __ I suf -- fer no re -- grets, I know that he who frets los -- es the night. __
For on -- ly a fool __ dreams __ he can hold back the dawn, __
he who is wise nev -- er tries to re -- vise what's past and gone.

Live! Love __ to -- day! __ Let come to -- mor -- row what may. Don't ev -- en stop for a sigh. __
It does -- n't help when you cry. __ That's why I live and I'll die, __ dev -- il may care. __
}

refrainChords = \chordmode {
  g2:m e2:m7.5- a2:7.9- d2:7.9- g2:m e2:m7.5- a2:7.9- d2:7.9-
  g1:m e1:m7.5- ef1:9.11+ d1:7.9-

  g2:m e2:m7.5- a2:7.9- d2:7.9- g2:m g2:m/f e2:dim7 bf2:dim7
  a1:m7.11.5- d1:7.9-.5+ g1:m g2:m df2:9
  
  c1:m7 f1:9 bf1:6 df1:dim7
  c1:m7 f1:9 bf2 bf2:aug bf2:6 bf2:maj7
  bf1:m7.11 ef1:7 af1:maj7 af1:maj7
  a1:m7.5- d1:7.9- g1:maj7 ef2:7 d2:7

  g2:m e2:m7.5- a2:7.9- d2:7.9- g2:m e2:m7.5- a2:7.9- d2:7.9-
  g2:m g2:m/f e1:m7.5- ef1:13.11+ ef1:13.11+
  a1:m7.11.5- d1:7.9-.5+ g2:m
  \chordOpenParen{ e2:m7.5- }
  a2:7.9-
  \chordCloseParen{ d2:7.9- }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Up [Bob Dorough 1957]" 4 = 210

  \sectStart "A1"
  
  d2 d'4 d,4 | e2 \tuplet 3/2 { fs4 g4 a4 } | d,4. d'8~ d4 d,4 | e2 \tuplet 3/2 { fs4 g4 a4 } |
  \break
  \tuplet 3/2 { bf4 bf4 bf4 } bf2~ | bf2 c8 bf8 g8 a8~ | a1~ | a2 r2 |
  
  \sect "A2"

  d,4. d'8~ d4 d,4 | e2 \tuplet 3/2 { fs4 g4 a4 } | d,2 d'8 d,4 e8~ | e4 fs4 g4 a4 |
  \break
  \tuplet 3/2 { d4 d4 d4 } d2~ | d2 \tuplet 3/2 { c4 bf4 d,4 } | g1~ | g2 r8 g4 f8 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "B"
  
  g4 g4 g2~ | g2 \tuplet 3/2 { g4 a4 bf4 } | g4 g4 g2 | r8 g4. a4 bf4 |
  \break
  g4 g4 g2 | r4 r8 a8~ \tuplet 3/2 { a4 bf4 c4 } | d1~ | d2 r8 d4. |
  \break
  ef8 ef8 ef8 ef8~ ef2~ | ef4. f8~ f4 ef8 df8 | \tuplet 3/2 { c4 c4 c4 } c2~ | c2 \tuplet 3/2 { g4 af4 bf4 } |
  \break
  \tuplet 3/2 { c4 c4 c4 } \tuplet 3/2 { c4 c4 c4 } | c4 ef4 d4 c4 | b1 | r1 |
  
  \sect "A3"

  d,4 r8 d'8~ d4 d,8 e8~ e2 \tuplet 3/2 { fs4 g4. a8 } | d,4 d'2 d,4 | e2 \tuplet 3/2 { fs4 g4 a4 } |
  \break
  \tuplet 3/2 { bf4 bf4 bf4 } bf2~ | bf4 g4 a4 bf4 | \tuplet 3/2 { c4 c4 c4 } c2~ | c4 a4 bf4 c4 |
  \break
  \tuplet 3/2 { d4 d4 d4 } d2~ | d2 \tuplet 3/2 { c4 bf4 d,4 } | g1~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
