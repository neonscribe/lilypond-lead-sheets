%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Witchcraft"
  subtitle = \instrument
  poet = "Carolyn Leigh"
  composer = "Cy Coleman"
  copyright = \markup \small "© 1957 Morley Music Co."
}

refrainLyrics = \lyricmode {
Those fin -- gers in my hair, __ that sly come hith -- er stare, __
that strips my con -- science bare, __ it's witch -- craft. __

And I've got no de -- fense for it, the heat is too in -- tense for it,
what good would com -- mon sense for it do? __

'Cause it's witch -- craft, __ wick -- ed witch -- craft, __
and al -- though I __ know __ it's strict -- ly ta -- boo, __
when you a -- rouse the need in me, my heart says, “Yes, in -- deed” in me,
“Pro -- ceed with what you're lead -- in' me to.” __

It's such an an -- cient pitch, __ but one I would -- n't switch, __
'cause there's no nic -- er witch than you. __
}

refrainChords = \chordmode {
  f1:6 f1:6 af1:dim7 af1:dim7
  g1:m7 c1:7 f1:maj7 c2:m7 f2:7

  bf1:maj7 bf1:maj7 bf1:m7 ef1:7
  af1:6 g1:7.5+ c1:7 g2:m7 c2:7
  
  f1:maj7 f1:maj7 bf1:7.11+ bf1:7.11+
  f1:maj7 f1:maj7 b1:m7.5- e1:7.9-
  
  a1:m7 f1/a a1:m6 f1/a
  g1:m7 ef1/g g1:m7 c1:7

  f1:6 f1:6 af1:dim7 af1:dim7
  g1:m7 c1:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Frank Sinatra 1957]" 4 = 114

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 d4. d4 e4 | e8 f4 f8~ f2 | r8 d4. d4 e4 | e8 f4 f8~ f2 | 
  \break
  r8 d4. d4 e4 | e8 f4 f8~ f4 e4 | e4. d8~ d2~ | d2 r2 |
  
  \sect "A2"
  
  r8 f4. f4 g4 | g4 a8 a8~ a8 af8 g4 | r8 f4. f4 g4 | g4 af8 af8~ af8 g8 gf4 | 
  \break
  r8 f4. f4 g4 | g4 af8 af8~ af8 g8 f4 | e1 | r4 r8 c8~ c4 d4 |
  
  \sect "B"
  
  c'4. g8~ g2 | r4 r8 c,8~ c4 d4 | c'4. g8~ g2 | r4 r8 c,8~ c4 d4 |
  \break
  c'4. g8~ g4 c4~ | c8 g4. \tuplet 3/2 { f4 a4 c4 } | d1~ | d2 r2 |
  \break
  r8 c4. c4 b4 | b4 a8 a8~ a8 gs8 a4 | r8 c4. c4 b4 | b4 a8 a8~ a8 gs8 a4 |
  \break
  r8 bf4. bf4 a4 | a4 g8 g8~ g8 fs8 g4 | bf1~ | bf2 r2 |
  
  \sect "A3"
  
  r8 d,4. d4 e4 | e8 f4 f8~ f2 | r8 d4. d4 e4 | e8 f4 f8~ f2 |
  \break
  r8 d4. d4 e4 | e8 f4 d'8~ d4 e,4 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
