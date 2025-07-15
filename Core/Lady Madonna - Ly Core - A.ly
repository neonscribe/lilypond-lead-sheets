%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Lady Madonna"
  subtitle = \instrument
  poet = ""
  composer = "John Lennon/Paul McCartney"
  copyright = \markup \small "© 1968 Northern Songs"
}

keepWeirdAccidentals = ##t

refrainLyrics = \lyricmode {
La -- dy Ma -- don -- na, chil -- dren at your feet.
Won -- der how you man -- age to make ends meet.

Who finds the mon -- ey when you pay the rent?
Did you think that mon -- ey was Hea -- ven sent?

Fri -- day night ar -- rives with -- out a suit -- case.
Sun -- day morn -- ing creep -- ing like a nun.
Mon -- day's child has learned to tie his boot -- lace.
See how they run.
make ends meet.
}

introChords = \chordmode {
  a2 d2 a2 d2 a2 d2 f4 g4 a2
}

refrainChords = \chordmode {
  a2 d2 a2 d2 a2 d2 f4 g4 a2
  a2 d2 a2 d2 a2 d2 f4 g4 a2

  d1:m7 g1:7 c1 a1:m7
  d1:m7 g1:7 c2 b2:m7 e2:sus7 e2:7
  
  f4 g4
}

outroChords = \chordmode {
    a2 g2/b c4:m g8/b a8*5
    a2 g2/b c4:m g8/b a8*5
}

introKey = a
refrainKey = a
outroKey = a

introBass = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass

  a,,8 a'8 c,8 cs8 d8 d'8 d,8 d'8 | a,8 a'8 c,8 cs8 d8 d'8 d,8 d'8 |
  a,8 a'8 c,8 cs8 d8 d'8 e,8 e'8 | f,8 f'8 g,8 g'8 a,,8 a'8 a8 a8 |
}

outroBass = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass

  a,,8 a'8 a,8 a'8 b,8 b'8 b,8 b'8 | c,8 c'8 b,8 a8~ a2 |
  a8 a'8 a,8 a'8 b,8 b'8 b,8 b'8 | c,8 c'8 b,8 a8~ a2 |
}

introMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Beatles 1968]" 4 = 109

  \sectStart "Piano Intro"
  
  <a bs cs>8 <a bs cs>4 <a bs>8 <gs b>8 a8~ a16 a8. | <a bs cs>8 <a bs cs>8 <a bs>8 <gs b>8 a2 |
  <a bs cs>8 <a bs cs>8 <a bs>8 <gs b>8 a4 a4 | a4 <a b>4 <a bs cs>2 |

  \bar "||"
}

refrainMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \sect "Verse 1"
  
  \bar ".|:"
  \repeat volta 4 {
  cs'8 cs8~ cs8 cs16 b16~ b16 a8. r4 | cs8 cs16 b16~ b8 fs8 a4 r4 |
  cs8 cs8 e8 cs8 fs8 e8 cs8 a8~ \textToCodaLastTime | a8 a4 c8( a4) r4 |
  
  cs8 cs8~ cs8 cs16 b16~ b16 a8. r4 | cs8 cs8 b8 fs16 a16~ a4 r4 |
  cs8 cs8 e8 cs8 fs16 e8 cs16~ cs4 | a4 g8 c8( a4) r4 |
  
  \sect "Bridge 1"
  
  d8 d16 d16~ d8 c16 d16~ d8 c16 d16~ d8 c8 | d4 g,2 r4 |
  c8 c16 c16~ c8 a8 c8 c8 d8 e8 | c8( a8) r4 r2 |
  
  d8 d8 d8 c8 d8 c16 d16~ d8 c8 | d4 b16( a16 g8~ g4) r4 |
  <c e>2 <b d fs>4 <b d fs>4 |
  <b d e>2. r4 |
  }

  \textCoda
  
  \time 2/4
  a8\repeatTie a4 c8\laissezVibrer
}

outroMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \sectStart "Piano Outro"
  
  \numericTimeSignature
  \time 4/4
  \bar "||"
  <a cs>8 <a cs>8~ <a cs>16 <a cs>8. <b d>8 <b d>8~ <b d>16 <b d>8. | <c ef>4 <b d>8 <a cs>8~ <a cs>2 |
  <a cs>8 <a cs>8~ <a cs>16 <a cs>8. <b d>8 <b d>8~ <b d>16 <b d>8. | <c ef>4 <b d>8 <a cs>8~ <a cs>2\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"
\include "../Include/refrain.ily"
\include "../Include/outro.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 2 } }
   \vspace #3
   \line { \large { Bridge 2 } }
   \vspace #2
   \line { \large { Verse 3 } }
   \vspace #3
   \line { \large { Bridge 3 } }
   \vspace #4
   \line { \large { Verse 4 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { Lady Madonna, baby at your breast. } }
   \line { \large { Wonder how you manage to feed the rest. } }
   \line { \large { \italic { Second four bars instrumental } } }
   \vspace #1
   \line { \large { \italic { First six bars instrumental } } }
   \line { \large { See how they run. } }
   \vspace #1
   \line { \large { Lady Madonna, lying on the bed. } }
   \line { \large { Listen to the music playing in your head. } }
   \line { \large { \italic { Second four bars instrumental } } }
   \vspace #1
   \line { \large { Tuesday afternoon is never ending. } }
   \line { \large { Wednesday morning papers didn't come. } }
   \line { \large { Thursday night, your stockings needed mending. } }
   \line { \large { See how they run. } }
   \vspace #1
   \line { \large { Lady Madonna, children at your feet. } }
   \line { \large { Wonder how you manage to make ends meet. } }
 }
}

