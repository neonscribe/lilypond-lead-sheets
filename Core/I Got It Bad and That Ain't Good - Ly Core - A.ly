%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "I Got It Bad and That Ain't Good"
  subtitle = \instrument
  poet = "Paul Francis Webster"
  composer = "Duke Ellington"
  copyright = \markup \small { \now " " "© 1941 Robbins Music Corporation" }
}

refrainLyrics = \lyricmode {
Nev -- er treats me sweet and gen -- tle the way he should;
I got it bad and that ain't good.
My poor heart is sen -- ti -- men -- tal not made of wood;
I got it bad and that ain't good.
But when the week -- end's o -- ver and Mon -- day rolls a -- roun',
I end up like I start out, just cry -- in' my heart out.
He don't love me like I love him, no -- bod -- y could;
I got it bad and that ain't good.
}

refrainLyricsTwo = \lyricmode {
Like a lone -- ly weep -- ing wil -- low lost in the wood;
I got it bad and that ain't good.
And the things I tell my pil -- low no wom -- an should;
I got it bad and that ain't good.
Tho folks with good in -- ten -- tions tell me to save my tears,
I'm glad I'm mad a -- bout him, I can't live with -- out him.
Lord a -- bove me make him love me the way he should;
I got it bad and that ain't good.
}

refrainChords = \chordmode {
  a1:maj7 cs2:7 fs2:m7 b2:7 fs2:m7 b1:7
  b1:m7 cs4:7 fs4:7 b4:7 e4:7 a2:6 fs2:m7 b2:m7 e2:7

  a1:maj7 cs2:7 fs2:m7 b2:7 fs2:m7 b1:7
  b1:m7 cs4:7 fs4:7 b4:7 e4:7 a2:6 ds2:dim7 e2:m7 a2:7

  d1:maj7 d1:maj7 g1:7 g1:7
  a1:maj7 cs2:m7 fs2:7 b1:m7 e1:7

  a1:maj7 cs2:7 fs2:m7 b2:7 fs2:m7 b1:7
  b1:m7 cs4:7 fs4:7 b4:7 e4:7 a1:6
  \chordOpenParen{ b2:m7 }
  \chordCloseParen{ e2:7 }
}

refrainKey = a

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Duke Ellington 1941]" 4 = 78

  \xTextMark \markup{ \bold \box "A1" }
  
  ds4 e4 fs'4 e4 | gs,4 a4 b4 a4 | r4 cs4 a4 b4 | cs1 |
  \break
  r4 cs4 a4 b4 | cs4 e4 a,4 cs4 | a1 | r1 |
  
  \sect "A2"
  
  ds,4 e4 fs'4 e4 | gs,4 a4 b4 a4 | r4 cs4 a4 b4 | cs1 |
  \break
  r4 cs4 a4 b4 | cs4 e4 a,4 cs4 | a1 | r2 r4 a4 |
  
  \sect "B"
  
  b4 cs4 e4 d4 | cs4 b2 a4 | b4 cs4 e4 d4 | b2. a4 |
  \break
  gs4 a4 cs4 e4 | gs4 fs2 e4 | e4 d2 fs,4 | cs'4 b2. |
  
  \sect "A3"

  ds,4 e4 fs'4 e4 | gs,4 a4 b4 a4 | r4 cs4 a4 b4 | cs1 |
  \break
  r4 cs4 a4 b4 | cs4 e4 a,4 cs4 | a1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
