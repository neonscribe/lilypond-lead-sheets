%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Bennie and the Jets"
  subtitle = \instrument
  poet = "Bernie Taupin"
  composer = "Elton John"
  copyright = \markup \small { \now " " "© 1973 Dick James Music Ltd." }
}

straightEighths = ##t

introKey = g
bassKey = g

introLyrics = \lyricmode {
}

introChords = \chordmode {
  g1:maj7 g1:maj7 f1:maj7 f1:maj7
}
  
introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempo "Slow [Elton John 1973]" 4 = 66

  \xTextMark \markup{ \bold \box "Intro" }
  
  <b, d fs b>8 r8 <b d fs b>8 r8 <b d fs b>8 r8 <b d fs b>8 r8 |
  <b d fs b>8 r8 <b d fs b>8 r8 <e' e'>8-> <d d'>8-> <b b'>16-> <c c'>8.-> |
  <a, c e a>8\arpeggio r8 <a c e a>8 r8 <a c e a>8 r8 <a c e a>8 r8 |
  <a c e a>8 r8 <a c e a>8 r8 <a c e a>8 r8 <a c e a>8 r8 |

  \bar "|."
}

introBass = \relative f, {
  \time 4/4
  \key \introKey \major
  \clef "bass_8"

  g,8 r8 g'8 r8 g,8 r8 g'8 r8 | g,8 r8 g'8 r8 g,8 r8 <g g'>16-> <fs fs'>8.-> |
  f8 r8 f'8 r8 f,8 r8 f'8 r8 | f,8 r8 f'8 r8 f,8 r8 <f f'>16 <g g'>8-> <gs gs'>16 |
}

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainChords = \chordmode {
  a2:m7 d2:7 g2 gs2:dim7 a2:m7 d2 e1:m a2:m b2:m c1
  
  g1:maj7 a1:m c1 g1:maj7
  a1:m c2 d2 e2:m e2:m/d c2 bf4./c c8
  
  g1:maj7 g1:maj7 f1:maj7 f1:maj7

  g1:maj7 g1:maj7 f1:maj7 f1:maj7
}

refrainLyrics = \lyricmode {
Hey kids, __ shake __ it loose to -- geth -- er.
The spot -- light's hit -- ting some -- thing that's been known to change the weath -- er.
We'll kill the fat -- ted calf __ to -- night, so __ stick a -- round. __
You're gon -- na hear e -- lec -- tric mus -- sic sol -- id walls of sound. __

Say, Can -- dy and Ron -- nie, have you seen them yet,
ooh, but they're so spaced out.
B -- B -- B -- B -- B Ben -- nie and the Jets.
Oh, __ but thery're weird and they're won -- der -- ful.
Oh, Ben -- nie, she's __ real -- ly keen.
She's got e -- lec -- tric boots, a mo -- hair suit, __
you know I read it in a mag -- a zine, __ oh. __
B -- B -- B Ben -- nie and the Jets.

Ben -- nie, Ben -- nie, Ben -- nie, Ben -- nie and the Jets.
}

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \xTextMark \markup{ \bold \box "Verse" }
  
  e'8. e16~ e8 r16 e16~ e16. b32 d16. b32 d16 e16 b16 b16~ |
  b16 as16 b16 as16 b16 as16 b16 as16 b16 as16 b16 as16 b16 d8. |
  r16 a16 e'16 d16 e16 d8 e16~ e16 d16 d16 b16~ b8 \tuplet 3/2 { d16 b16 e16~( } |
  e16 b8.~ b8) r8 r4 r8 r16 d16 | e16 d16 e16 d16 e8 d16 e16~ e16 d16 d16 b16 d8 b16 e16~ | e2 r4 r16 g8. |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "Pre-Chorus"
  
  g16 g16 g16 g16( e16) e16 e16 d16 e16 d8 d16~ d8 g8 |
  r16 b,16 c16 e16~ e16 b8 a16~ a8 r16 a16 a16 a16 a16 a16 |

  \sect "Chorus"
  
  a16 a16 a16 b16 e,4 r4 r8 r16 g'16~ | g16 e16 e16 e16( d16) d16 d16 d16 b16 e8. r16 fs8 g16~ |
  g16 e16 e16( d16) e16 b16 a8 r4 r16 d16 e16 d16 |
  e16 d16 e8 r8 r16 e16 fs16 e16 fs8~ fs16 d16 e16 d16 |
  e16 ds16 e16 ds16 e16 ds16 e16( b'16~ b8.) g16~( g16 e8.~ |
  e8 d8~ d4) r16 d16 d16 d16 d16 d16 d16 e16 |
  b4 r4 r2 | r1 | r1 | r1 \textToCodaLastTime |
  \bar ".|:-|."
  
  \textCoda
  
  \repeat volta 2 {
  d'16 b8. r4 d16 b8. r4 | d16 b8. r4 d16 b8 a16 g16 b16( a8 | g8) r8 r4 r2 | r1 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

\include "../Include/refrain.ily"

\markup {
  \column {
    \vspace #1
    \line { \large { \bold { Verse 2 } } }
    \line { \large { Hey, kids, plug into the faithless. } }
    \line { \large { Maybe they're blinded, but Bennie makes them ageless. } }
    \line { \large { We shall survive; let us take ourselves along, } }
    \line { \large { where we fight our parents out in the streets to find who's right and who's wrong. } }
    \vspace #1
    \line { \large { \bold { Verse 3 } } }
    \line { \large { Piano solo. } }
  } }

