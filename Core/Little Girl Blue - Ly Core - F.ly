%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Little Girl Blue"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small { \now " " "© 1935 Williamson Music and Lorenz Hart Music" }
}

refrainLyrics = \lyricmode {
  When I was ver -- y

  young __ the world was young -- er than I, as __ mer -- ry as a car -- ou -- sel. __

  The cir -- cus tent was

  _
  
  Now the young world has grown old. __
  Gone are the tin -- sel and gold. __
  
  Sit there and count your fin -- gers.
  What can you do?
  Old girl, you're through.
  Sit there and count your lit -- tle fin -- gers,
  un -- luck -- y lit -- tle girl blue. __
  
  "" _ _ _
  
  girl, you may as well sur -- ren -- der.
  Your hope is get -- ting slen -- der.
  Why won't some -- bod -- y send a ten -- der blue boy to cheer a lit -- tle girl blue? __
}

refrainLyricsTwo = \lyricmode {
  _ _ _ _ _
  
  strung __ with ev -- 'ry star in the sky a -- bove the ring __ I loved so
  
  _ _ _ _ _ _
  
  well. __
  
  "" _ _ _ _ _ _
  _ _ _ _ _ _ _
  
  Sit there and count the rain -- drops fall -- ing on you.
  It's time you knew all you can count on is the rain -- drops that fall on lit -- tle girl
  
  _
  
  blue. __ No use, old
}

refrainChords = \chordmode {
  s2.
  
  g2.:m7 c2.:7 f2.:maj7 a2:m7 af4:7
  g2.:m7 c2.:7
  
  f2.:maj7 f2.:maj7
  
  f2.:6 f2.:6
  
  d2.:m7 d2.:m7 g2.:m7 g2.:m7/c
  f2.:maj7 d2.:m7 g2.:m7 c2.:7
  
  f2:6 d2:m7 g2:m7 c2:7
  f1:6 c2:m7 f2:7 bf1:maj7 bf2:m7 ef2:7 f2:6 d2:m7 g2:m7 gs2:dim7
  a2:m7 d2:7 g2:m7 c2:7
  
  f2:6 d2:m7 g2:m7 c2:7
  
  f1:6 f1:6
  
  c1:7 g2:m7 c2:7 f1:maj7 f1:maj7 e1:m7 a1:7
  d2:sus9 d2:7.9- g2:m7 c2:7.9- f2:6 d2:m7 g2:m7 c2:7 f1:6 f1:6

}

refrainKey = f

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Nina Simone 1959]" 4 = 62

  r8 c8 d8 e8 f8 a8 |

  \xTextMark \markup{ \bold \box "Verse A1,A2" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  c2.~ | c8 bf8 fs4. g8 | bf4 a4. f8 | c2 c4 |
  \break
  d4. c8 e4~ | e8 c8 g'4. c,8 |
  \alternative { \volta 1 {
  a'2.~ | a8 c,8 d8 e8 f8 a8 |
  } \volta 2 {
  f2.~ | f2. |
  } } }

  \sect "Verse B"
  
  a4 a4 a4 | a4 a4 a4 | f2.~ | f2. |
  a4 a4 a4 | a4 a4 a4 | c,2.~ | c2. |

  \sect "Refrain A1,A2"
  
  \bar ".|:-||"
  \repeat volta 2 {
  \numericTimeSignature
  \time 4/4
  f4 f2 f4 | a4 a4 g4 g4 | f4 f2 f4 | d'1 |
  f,4 f2 f4 | c'1 | f,4 f2 f4 | bf4 a4 g4 f4 |
  c4 c2 c4 | bf4 c4 d8 d8 e4 |
  \alternative { \volta 1 {
  f1~ | f1 |
  } \volta 2 {
  f1~ | f4 c'4 c,4 d4 |
  } } }
  \sect "Refrain B"
  
  e2. c'4 | c,4 d4 e4 g4 | a4 a2 c4 | a4 c4 a4 c4 | a4 a2 cs4 | a4 cs4 a4 cs4 |
  a2 bf2 | g2 a2 | f4 f2 f4 | a4 a4 g8 g8 g4 | f1~ | f2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
