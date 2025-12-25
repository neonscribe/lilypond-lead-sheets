%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "If You Could See Me Now"
  subtitle = \instrument
  poet = "Carl Sigman"
  composer = "Tadd Dameron"
  copyright = \markup \small { \now " " "© 1946 Warner Bros. Corporation" }
}

refrainLyrics = \lyricmode {
If you could see me now you'd know how blue I've been.
One look is all you'd need to see the mood I'm in.
Per -- haps then you'd re -- a -- lize I'm still in love with you.
_ _
hap -- pen my way on some mem -- 'ra -- ble day and the month will be May for a while.
I'll try to smile but can I play the part with -- out my heart be -- hind the smile?

The way I feel for you I nev -- er could dis -- guise.
The look of love is writ -- ten plain -- ly in my eyes.
I think you'd be mine a -- gain if you could see me now.
}

refrainLyricsTwo = \lyricmode {
If you could see me now you'd find me be -- ing brave,
and try -- ing aw -- f'lly hard to make my tears be -- have.
But that's quite im -- pos -- si -- ble.
I'm still in love with _ you. __ You'll
}

refrainChords = \chordmode {
  ef1:maj9 af1:9 ef1:maj9 af2:m9 df2:9
  g2:m9 fs4:m9 b4:9 f2:m7 bf2:9
  
  df2:9.11+ c2:7.9- f2:m7 bf2:7.9-
  
  ef2:6 af2:m6 ef2:6 c4:m9 bf4:m9
  
  a2:m9 d2:9 b2:m7 e2:7.9- a2:m9 d2:7 g1:maj9
  a2:m9 c4:m9 f4:7 bf2:maj9 g2:m9 c2:m7 f2:7 f2:m7 bf2:7

  ef1:maj9 af1:9 ef1:maj9 af2:m9 df2:9
  g2:m7 fs2:m9 f2:m7 bf2:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

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
  \tempo "Ballad [Bill Evans 1965]" 4 = 62

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 d8 ef8 g8 bf8 d8 c8 g8 | bf8 a8 af8 bf8 f2 | r8 d8 ef8 g8 bf8 d8 c8 g8 |
  \break
   bf8 a8 af8 bf8 f4. g8 | bf4 g8 bf8 b8 e,8 ds4 | c'4 af8 f8 d'4. bf8 |
  \break
  \alternative { \volta 1 {
  g1~ | g2 r2 |
  } \volta 2 {
  ef'1~ | ef2 r4 ef4 |
  } } }
  \sect "B"
  
  d4 d8 d8 d4 ef8 c8 | \tuplet 3/2 { b4 b4 b4 } \tuplet 3/2 { b4 c4 d4 } |
  a4 a8 a8 a4 b8 c8 | d2. e,4 |
  \break
  b'8 a8 g8 a8 bf8 c8 d8 ef8 | f2 r8 d8 c8 bf8 | ef2 r8 c8 bf8 a8 | bf1 |
  
  \sect "A3"

  r8 d,8 ef8 g8 bf8 d8 c8 g8 | bf8 a8 af8 bf8 f2 | r8 d8 ef8 g8 bf8 d8 c8 g8 | bf8 a8 af8 bf8 f4. g8 |
  \break
  bf4 g8 bf8 b8 e,8 ds4 | c'4 af8 c8 d4. bf8 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
