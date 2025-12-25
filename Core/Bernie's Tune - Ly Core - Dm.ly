%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(if (and (defined? 'showLyrics) showLyrics)
  (set-global-staff-size 18))

\header {
  title = "Bernie's Tune"
  subtitle = \instrument
  poet = "Mike Stoller and Jerry Lieber"
  composer = "Bernie Miller"
  copyright = \markup \small { \now " " "© 1953 Atlantic Music Corp." }
}

refrainLyricsOne = \lyricmode {
In the park, in the dark, un -- der -- neath the moon.
Heard a boy and a girl, hum -- min' Ber -- nie's Tune.

Went to sleep, count -- in' sheep, by a blue la -- goon.
Heard a frog, on a log, croak -- in' Ber -- nie's Tune.

It's so ea -- sy to whist -- le, it's so ea -- sy to sing.
E -- ven hum -- ming -- birds hum it, it's the thing.

Of -- fice clerks, so -- da jerks picked it up so soon.
Mil -- lion -- aires, e -- ven squares, whis -- tle Ber -- nie's Tune.
}

refrainLyricsTwo = \lyricmode {
Hark the lark, in the park, cra -- zy as a loon.
In a tree skill -- ful -- ly sing -- in' Ber -- nie's Tune.

Lit -- tle kids go to school sing -- in' Ber -- nie's Tune.
Gurg -- lin' brooks, bub -- lin' pools, bab -- ble Ber -- nie's Tune.

You don't have to read mu -- sic, you don't have to be smart.
Ber -- nie said you can sing it, from the heart.

So if you hap -- pen to get the urge to croon.
Take a tip, man get hip, make it Ber -- nie's Tune.
}

refrainChords = \chordmode {
  d1:m d1:m bf1:9 bf1:9
  e1:m7.5- a1:7 d1:m
  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7 }

  d1:m d1:m bf1:9 bf1:9
  e1:m7.5- a1:7 d1:m d1:m
  
  bf2:6 g2:m7 c2:m7 f2:7 bf2:6 g2:m7 c2:m7 f2:7
  bf2:6 g2:m7 c2:m7 f2:7 bf1:6 e2:m7.5- a2:7

  d1:m d1:m bf1:9 bf1:9
  e1:m7.5- a1:7 d1:m
  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7 }
}

refrainKey = d

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Up Swing [Gerry Mulligan Quartet 1952]" 4 = 210

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 a8 r8 gs8 a4-. r8 a8 | r8 gs8 a4-. a,8 d8 f8 a8 | af2..( e8~ | e2) r2 |
  \break
  r8 g8 r8 fs8 g4-. r8 g8 | r8 fs8 g4-. a,8 cs8 e8 g8 | f2..( d8~ | d2) r2 |
  
  \sect "A2"
  
  r8 a'8 r8 gs8 a4-. r8 a8 | r8 gs8 a4-. a,8 d8 f8 a8 | af2..( e8~ | e2) r2 |
  \break
  r8 g8 r8 fs8 g4-. r8 g8 | r8 fs8 g4-. a,8 cs8 e8 g8 | f2..( d8~ | d2) r2 |
  
  \sect "B"
  
  bf4-. bf4-.  g'8 f8 d8 c8~ | c4. d8~ d4 r4 | bf4-. bf4-. g'8 f8 d8 c8~ | c2. r4 |
  bf4-. bf4-. g'8 f8 d8 c8~ | c4. d8~ d4 r4 | r8 a'4 a8 a2~ | a2. r4 |
  
  \sect "A3"

  r8 a8 r8 gs8 a4-. r8 a8 | r8 gs8 a4-. a,8 d8 f8 a8 | af2..( e8~ | e2) r2 |
  \break
  r8 g8 r8 fs8 g4-. r8 g8 | r8 fs8 g4-. a,8 cs8 e8 g8 | f2..( d8~ | d2) r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

refrainLyrics = ##f

#(if (and (defined? 'showLyrics) showLyrics)
  (set! refrainLyrics refrainLyricsOne))

\include  "../Include/refrain.ily"
