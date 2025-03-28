%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "While My Guitar Gently Weeps"
  subtitle = \instrument
  poet = ""
  composer = "George Harrison"
  copyright = \markup \small "© 1968 Harrisongs Limited"
}

refrainLyricsOne = \lyricmode {
  %% Intro
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _
  %% Intro line 2
  _ _ _
  _ _ _
  _ _ _
  _
  %% Verse 1
  I look __ at __ you all, __
  see the love __ there __ that's sleep -- ing
  while my gui -- tar __ gen -- tly weeps. __

  I look

  _ _ _ _
  
  %% Bridge
  I __ don't know why __
  no -- bod -- y told __ you,
  how __ to un -- fold __ your love. __
  
  %% Verse 2, 3
  I look __ at __ the world __
  and I no -- tice __ it's turn -- ing
  while my gui -- tar gen -- tly weeps. __
  
  for ev -- 'ry __ mis -- take __
  we __ must sure -- ly __ be learn -- ing;
  still my gui -- tar gen -- tly weeps. __
  
  %% Coda
  _ at __ you all. __
  Still my gui -- tar __ gen -- tly weeps. __
  
}

refrainLyricsTwo = \lyricmode {
  %% Intro
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _
  %% Intro line 2
  _ _ _
  _ _ _
  _ _ _
  _
  %% Verse 1
  _ _
  at __ the floor __
  and I see __ it __ needs sweep -- ing;
  still my gui -- tar
  
  _ _ _
  
  _ _

  _ gen -- tly weeps. __
  %% Bridge
  I __ don't know how __
  some -- one con -- trolled __ you,
  they __ bought and so -- ld __ you. __
  
  %% Verse 2, 3
  I look __ at __ you all, __
  see the love __ there __ that's sleep -- ing
  while my gui -- tar gen -- tly weeps. __ _ Look
}

refrainLyricsThree = \lyricmode {
  %% Intro
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _
  %% Intro line 2
  _ _ _
  _ _ _
  _ _ _
  _
  %% Verse 1
  _ _
  _ _ _
  _ _ _ _ _ _ _
  _ _ _ _
  
  _ _ _
  
  _ _

  _ _ _ _
  %% Bridge
  I __ don't know why __
  you were di -- vert -- ed,
  you were per -- vert -- ed, too.
}

refrainLyricsFour = \lyricmode {
  %% Intro
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _
  %% Intro line 2
  _ _ _
  _ _ _
  _ _ _
  _
  %% Verse 1
  _ _
  _ _ _
  _ _ _ _ _ _ _
  _ _ _ _
  
  _ _ _
  
  _ _

  _ _ _ _
  %% Bridge
  I __ don't know how __
  you were in -- vert -- ed,
  no __ one a -- lert -- ed you.
}

refrainChords = \chordmode {
  a1:m a1:m/g fs1:m7.5- d1:m/f
  a1:m g1 d1 e1
  
  a1:m a1:m/g fs1:m7.5- f1:maj7
  a1:m
  
  g1 d1/fs e1
  
  g1 c1 e1
  
  a1 cs1:m7 fs1:m7 cs2.:m7 c4:m7
  b1:m7 b1:m7 e2 e2/fs
  
  e1/gs
  
  e1/gs
  
  a1:m a1:m/g fs1:m7.5- f1:maj7
  a1:m g1 d1/fs e1
  
  a1:m a1:m/g fs1:m7.5- f1:maj7
  a1:m g1 c1 e1
  
  a1:m a1:m/g fs1:m7.5- f1:maj7
  a1:m g1 d1/fs e1
  
  a1:m a1:m/g fs1:m7.5- f1:maj7
  a1:m g1 c1 e1:7
  
  a1:m a1:m/g fs1:m7.5- f1:maj7
  a1:m g1 c1 e1
  
  a1:m a1:m/g fs1:m7.5- f1:maj7 a1:m a1:m/g d1 e1
}

refrainKey = a

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 123

  \xTextMark \markup{ \bold \box "Intro" }

  a8. a16 a8. a16 a8. a16 a8. a16 | a8. a16 a8. a16 a16 a16 a8~ a16 a16 a8 |
  a8. a16 a8. a16 \tuplet 3/2 { a4 b4 c4 } | d2. c8 d8 |
  \break
  e4. c8~ c4 a4 | d4. b8~ b4 g4 | d'4. a8~ a4 fs4 | gs2 r4
  \bar "!"
  e8 a8~ |

  \break
  \xTextMark \markup{ \bold \box "Verse 1" }

  \bar ".|:-||"
  \repeat volta 2 {
  a4. b8~ b4 c8 a8~ | a4 r4 b8 c4 a8~ | a4 r8 b8~ b8 c4 d8~ | d8 c4. r2 |
  \break
  r4 e4 c4 a8 b8~ |
  \alternative { \volta 1 {
  b4 r8 a8~ a8 g4 a8~ | a2 r2 | r2 r4 e8 a8\laissezVibrer |
  } \volta 2 {
  b4\repeatTie r8 a8~ a8 g4 c8~ | c2 r2 | r1 |
  } } }

  \key \refrainKey \major

  \bar ".|:"
  \repeat volta 2 {
  r4
  \xTextMark \markup{ \musicglyph #"scripts.segno" \bold \box "Bridge" }
  r8 cs8~ cs16 b8. cs4 | gs4.( fs8~ fs8 e4.) |
  r4 r8 cs8~ cs16 b8. cs8 e8~ | e8 cs4. r2 | r4 r8 b8~ b4 a8 b8 |
  \break
  e2~ e8 cs4 b8~ | b2 r2 |
  \alternative { \volta 1,3 {
  r1 |
  } \volta 2,4 {
  r2 r4
  \bar "!"
  e8 a8~ |
  } } }
  \bar "||"
  \xPageBreak

  \xTextMark \markup{ \bold \box "Verse 2, 3" }

  \key \refrainKey \minor

  a4 r8 <b d>8~ <b d>4 <c e>8 <b d>8~ | <b d>4 r4 <b d>8 <c e>4 <a c>8~ |
  <a c>4 r8 <b d>8~ <b d>8 <c e>4 <d f>8~ | <d f>8 <c e>4. r2 |
  \break
  r4 e4 c4 a8 b8~ | b4 r8 a8~ a8 g4 a8~ | a2 r2 | r2 r4 e8 <a c>8~ \textToCoda |
  \break
  <a c>4 r8 <b d>8~ <b d>8 <c e>4 <a c>8~ | <a c>4 r8 <b d>8~ <b d>8 <c e>4 <a c>8~ |
  <a c>4 r8 <b d>8~ <b d>8 <c e>4 <d f>8~ | <d f>8 <c e>4. r2 |
  \break
  r4 e4 c4 a8 b8~ | b4 r8 a8~ a8 g4 c8~ | c2 r2 | r1 |

  \break
  \bar "||-||"
  r1 |
  \xTextMark \markup{ \bold \box "Solo, Verse Changes" }
  r1 | r1 | r1 | r1 | r1 | r1 | r1 |
  \break
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 \dalSegnoWithRepeats | 

  \bar "||-||"

  \textCodaBreak

  <a c>4\repeatTie r8 <b d>8~ <b d>4 <c e>8 <a c>8~ | <a c>4 r4 r2 | r1 | r1 |
  \break
  r4 <e' a>4 <c e>4 <a c>8 <b d>8~ | <b d>4 r8 <a c>8~ <a c>8 <g b>4 <c e>8~( | <c e>1 | <e gs>1 |
  \break
  
  \bar ".|:-||"
  \repeat volta 2 {
  <a c>1) |
  \xTextMark \markup{ \bold \box "Outro - Guitar Solo" }
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | 
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-four-verses.ily"
