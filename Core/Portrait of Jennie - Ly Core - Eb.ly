%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Portrait of Jennie"
  subtitle = \instrument
  poet = "Gordon Burdge"
  composer = "J. Russel Robinson"
  copyright = \markup \small { \now " " "© 1948 Chappell & Co." }
}

refrainLyrics = \lyricmode {
A por -- trait of Jen -- nie, more pre -- cious to me,
than a mas -- ter -- piece how -- ev -- er fam -- ous it be.
The por -- trait of Jen -- nie is etched on my heart
where her fea -- tures have been sketched from the start.

Ah, the col -- or and beau -- ty of life
and the glow of her spir -- it di -- vine
all cast in hea -- ven's own de -- sign.

With a por -- trait of Jen -- nie, I nev -- er will part,
for there is -- n't an -- y por -- trait of Jen -- nie
ex -- cept in my heart
}

refrainChords = \chordmode {
  s2.
  
  ef1:maj7 bf2:m7 ef2:7 af1:maj7 af2:m7 df2:7
  g2:m7 c2:m7 f2:m7 bf2:7 ef2:maj7 e2:dim7 f2:m7 bf2:7

  ef1:maj7 bf2:m7 ef2:7 af1:maj7 af2:m7 df2:7
  g2:m7 c2:m7 f2:m7 bf2:7 ef1:6 a2:m7 d2:7

  g1:maj7 c2:m7 f2:7 bf1:maj7 d2:m7.5- g2:7.9-
  c1:m7 f1:7 f1:m7 bf1:7

  ef1:maj7 bf2:m7 ef2:7 af1:maj7 af2:m7 df2:7
  g2:m7 c2:m7 f2:m7 bf2:7 f2:m7 bf2:7.9- ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
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
  \tempo "Ballad [Nat King Cole 1949]" 4 = 68
  
  \partial 2. bf,4 \tuplet 3/2 { g'4 gf4 d4 } |

  \sectStart "A1"
  
  f8 d4.~ d2 | r4 ef4 \tuplet 3/2 { c'4 cf4 g4 } | bf1 | r2 g4 af4 |
  \break
  d4. bf8 g2 | \tuplet 3/2 { c4 bf4 af4 } \tuplet 3/2 { g4 f4 ef4 } |
  g1 | r4 bf,4 \tuplet 3/2 { g'4 gf4 d4 } |
  
  \sect "A2"

  f8 d4.~ d2 | r4 ef4 \tuplet 3/2 { c'4 cf4 g4 } | bf1 | r2 g4 af4 |
  \break
  d8 bf4. \tuplet 3/2 { r4 g4 c4 } | af2 \tuplet 3/2 { r4 f4 d4 } | 
  ef1 | r4 d8 g8 \tuplet 3/2 { e4 a4 fs4 } |
  
  \sect "B"
  
  e4 d8 d8 d2 | r4 f8 bf8 \tuplet 3/2 { g4 c4 a4 } | g4 f8 f8 f2 | r2 d'2 |
  \break
  ef2. bf4 | d2 a2 | c2. f,4 | af4-. cf,8 bf8 \tuplet 3/2 { g'4 gf4 d4 } |
  
  \sect "A3"

  f8 d4.~ d2 | r4 ef4 \tuplet 3/2 { c'4 cf4 g4 } | bf1 | r2 g4 af4 |
  \break
  d4. bf8 g8 ef4. | \tuplet 3/2 { ef'4 c4 af4 } c8 g4 f8 | af4 ef4 g2 | ef1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
