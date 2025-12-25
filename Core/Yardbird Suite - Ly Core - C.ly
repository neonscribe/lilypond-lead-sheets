%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Yardbird Suite"
  subtitle = \instrument
  composer = "Charlie Parker"
  copyright = \markup \small { \now " " "© 1946 Atlantic Music Corp." }
}

refrainLyrics = \lyricmode {
It's hard to learn
how tears can burn __ one's heart, __
but that's the thing that I found out. __
Too late I guess, __ ‘cause I'm in a_mess

but I’ve had to pay. __

If \skip 1 \skip 1 \skip 1 I could per -- form a mir' -- cle
I'd re -- vive your thoughts a -- bout me. __
But I know it is hope -- less.
You could nev -- er real -- ly care.
That's why I des -- pair!

I go a -- long
hop -- ing some -- day __ you'll learn. __
This flame in my heart, dear __
\skip 1 \skip 1 for -- ev -- er will __ burn!
}

refrainLyricsTwo = \lyricmode {
My faith is gone.
Why lead me on __ this way? __
I thought there'd be no price on love
}

refrainChords = \chordmode {
  c1:6 f2:m7 bf2:7 c2:maj7 bf2:7 a1:7
  d1:7
  
  g1:7 e2:m7 a2:7 d2:m7 g2:7
  
  g1:7 c1:6 c2:6 b2:7.9-
  
  e1:m7 fs2:m7.5- b2:7.9- e1:m7 a1:7
  d1:m7 e2:m7 a2:7 d1:7 d2:m7 g2:7
  
  c1:6 f2:m7 bf2:7 c2:maj7 bf2:7 a1:7
  
  d1:7
  
  d2:m7 g2:7 c1:6

  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g:7 }
}

refrainKey = c

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bop [Charlie Parker 1946]" 4 = 208

  \xTextMark \markup{ \bold \box A1,A2 }
  \bar ".|:"

  \repeat volta 2 {
    r8 c4. g4 a4 | bf4. af4 ef8 f8 g8~ | g2 g4. e8~ | e4. e8 f8 e8 f8 g8 |
    \break
    e8 c8 r8 c8~ c2 |
  }
  \alternative {
    {
      r4 r8 d8 r8 e8 f8 g8~ | g4. a4 e8 f8 g8~ | g2. r4 |
      \break
      }
    {
      r4 r8 c,8 e8 c8 e8 c8~ | c1 | r2 r4 g'16 a16 g16 fs16 |
      \bar "||-||"
      \break
     }
  }
  \xTextMark \markup{ \bold \box B }
  e4. fs8 g8 e8 r8 a8 | r8 a8 a2. | g8 a8 g8 fs8 e8 b8 c8 cs8~ | cs2 r4 r8 bf8 |
  \break
  a4. a'8 r8 e8 f8 g8 | r8 g4. f8 e8 d8 cs8 | e4 a,8 e'2 a,8 | d8 e8 f8 g8 r2 |
  \bar "||-||"
  \xTextMark \markup{ \bold \box A3 }
  r8 c4. g4 a4 | bf4. af4 ef8 f8 g8~ | g2 g4. e8~ | e4 e8 f8 r8 ds8 e8 a8 |
  \break
  r8 a4.~ a2 \textToCodaLastTime |
  r8 a,8 \tuplet 3/2 { b8 c8 d8 } e4 g,8 c8~ | c2. r4 | r1 |
  \bar "||-||"
}

codaLyrics = \lyricmode {
}

codaChords = \chordmode {
  d2:m7 g2:7 c1:maj7 c1:maj7
}

codaKey = c

codaMelody = \relative g' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  \textCoda
  r8 a,8 \tuplet 3/2 { b8 c8 d8 } e8 f8 \tuplet 3/2 { g8 a8 b8 } | d1~ | d1\fermata
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \vspace #2
}

\include "../Include/coda.ily"
