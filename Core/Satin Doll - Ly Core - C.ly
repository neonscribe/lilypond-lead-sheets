%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Satin Doll"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Duke Ellington and Billy Strayhorn"
  copyright = \markup \small "© 1953 Tempo Music, Inc."
}

refrainLyrics = \lyricmode {
Cig -- a -- rette hol -- der which wigs me,
o -- ver her should -- er, she digs me.
Out cat -- tin' that sat -- in doll. __

Ba -- by shall we go out skip -- pin',
Care -- ful, a -- mi -- go, you're flip -- pin',
speaks Lat -- in that sat -- in doll.

She's no -- bod -- y's fool so I'm play -- ing it cool as can be. __
I'll give it a whirl but I ain't for no girl catch -- ing me, __
% switch -- e -- roo -- ney.

Tel -- e -- phone num -- bers, well, you know,
do -- ing my rhum -- bas with u -- no,
and that 'n' my sat -- in doll. __
}

refrainChords = \chordmode {
  d2:m7 g2:7 d2:m7 g2:7 e2:m7 a2:7 e2:m7 a2:7
  a2:m7 d2:7 af2:m7 df2:7 c2:maj7 d2:m7 e2:m7 a2:7

  d2:m7 g2:7 d2:m7 g2:7 e2:m7 a2:7 e2:m7 a2:7
  a2:m7 d2:7 af2:m7 df2:7 c1:maj7 c1:maj7
  
  g2:m7 c2:7 g2:m7 c2:7 f1:maj7 f1:maj7
  a2:m7 d2:7 a2:m7 d2:7 g2:7 d2:m7 g1:7

  d2:m7 g2:7 d2:m7 g2:7 e2:m7 a2:7 e2:m7 a2:7
  a2:m7 d2:7 af2:m7 df2:7 c2:maj7
  \chordOpenParen{ d2:m7 }
  e2:m7
  \chordCloseParen{ a2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \xTextMark \markup{ \bold \box "A1" }
  
  a8 g8 a8 g8~ g8 a4. | r8 a4. g8 a4. | b8 a8 b8 a8~ a8 b4. | r8 b4. a8 b4. |
  \break
  r8 d4. c8 d4. | r8 bf4. af4 bf8 g8~ | g1~ | g1 |
  
  \sect "A2"
  
  a8 g8 a8 g8~ g8 a4. | r8 a4. g8 a4. | b8 a8 b8 a8~ a8 b4. | r8 b4. a8 b4. |
  \break
  r8 d4. c8 d4. | r8 bf4. af4 bf8 g8~ | g1 | r2 r4 r8 g8 |
  
  \sect "B"
  
  c8 bf8 a8 g8~ g8 a8 bf8 c8~ | c8 bf8 a8 g8~ g8 a8 bf8 c8~ | c1~ | c2. r8 c8 |
  \break
  d8 c8 b8 a8~ a8 b8 c8 d8~ | d8 c8 b8 a8~ a8 b8 c8 d8~ | d1 | r1 |
  
  \sect "A3"

  a8 g8 a8 g8~ g8 a4. | r8 a4. g8 a4. | b8 a8 b8 a8~ a8 b4. | r8 b4. a8 b4. |
  \break
  r8 d4. c8 d4. | r8 bf4. af4 bf8 g8~ | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
