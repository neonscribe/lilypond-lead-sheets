%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Route 66"
  subtitle = \instrument
  poet = ""
  composer = "Bobby Troup"
  copyright = \markup \small { \now " " "© 1946 Burke & Van Heusen, Inc." }
}

refrainLyrics = \lyricmode {
If you ev -- er _ _ plan to mo -- tor west,
trav -- el my way; take the high -- way that's the best.
Get your kicks on Route _ Six -- ty Six.

It

Now you go through Saint Loo -- ey, _ Jop -- lin Mis -- sour -- i
and O -- kla -- ho -- ma Cit -- y is might -- y pret -- ty.
You'll see __ Am -- a ril -- lo, __
Gal -- lup, New Mex -- i -- co, __
Flag -- staff, Ar -- i zo -- na;
don't for -- get Wi -- no -- na,
King -- man, Bar -- stow, San __ Ber -- nar -- di -- no.
Won't __ you get hip to this time -- ly tip:
When you make that Cal -- i -- for -- nia trip,
Get your kicks on Route _ Six -- ty Six.
}

refrainLyricsTwo = \lyricmode {
_ _
winds _ from Chi -- ca -- go to L. A.,
more than two _ thou -- sand miles _ all the way.
}

introChords = \chordmode {
  s8

  r8*6 g4:13 r8*6 c4:7 r8*4 g8*3:13 fs4:13 g4:13 af4:13 a4:13 bf8:13 b4:13 c8:13
  
  s8*15  g8*5:6.9 s8*11 a8*9:m9 d8*7:7.5+ g8*5:6.9 s8*8 d4:7.5+.9-
}

introKey = g

introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef "treble"
  \tempo "Medium [Nat King Cole 1946]" 4 = 146

  \sectStart "Intro"

  \partial 2 \invisEighth g8 \acciaccatura gs8 \tuplet 3/2 { b8 d8 e8 } |
  \bar "||"
  
  <g d>8 <g d>4 <e b>8->~ <e b>8 g,8 \acciaccatura gs8 \tuplet 3/2 { b8 d8 e8 } |
  <g d>8 <g d>4 <e bf>8->~ <e bf>8 g,8 as16( b16 d16 f16) |
  g8 <f, b e g>4.-> <e as ds fs>4-> <f b e g>4-> |
  <gf c f af>4-> <g cs fs a>4-> <af d g bf>8-> <a ds gs b>4-> <bf e a c>8-> |
  \bar "||"
  r8 <bf e a>4.-> \acciaccatura ef8 d8 g8 a8 bf8~ |
  bf8 g8 a8 bf8~ bf8 \acciaccatura ds,8 e4 <b, e a>8~ |
  <b e a>2 \acciaccatura ef'8 d8 g8 a8 <bf e, d>8~ |
  <bf e, d>8 g8 a8 <bf f ef>8~ <bf f ef>8 \acciaccatura ds,8 e4 <b g e>8->~ |
  <b g e>2 \acciaccatura ef8 d8 g8 a8 bf~ |
  bf8 g8 a8 <bf f ef>8~ <bf f ef>8 \acciaccatura ds,8 e4 <d a e>8~ |
  <d a e>2 \acciaccatura ef8 d8 g8 a8 <bf e, b>8~ |
  \partial 2. <bf e, b>8 g8 a8 <bf gf ef>8~ <bf gf ef>8 e,8
  
  \bar "||"
}

refrainNatKingColeChords = \chordmode {
  s4
  f1:6 bf1:7 f1:6 f1:7
  bf1:7 bf1:7 f1:6 d1:7.9+
  g1:m7 c1:7
  
  f2:6 af2:7 g2:m7 c2:7

  f2:6 af2:7 g2:m7 c2:7

  f4:7 r2. bf4:7 r2. f4:7 r4*7
  bf1:7 bf1:7 f1:6 f1:6
  g1:m7 c1:7 a2:m7 af2:7 g2:m7 c2:7

  f1:6 bf1:7 f1:6 f1:7
  bf1:7 bf1:7 f1:6 d1:7.9+
  g1:m7 c1:7 f2:6
  \chordOpenParen{ af2:7 }
  g2:m7
  \chordCloseParen{ c2:7 }
}

refrainNatalieColeChords = \chordmode {
  s4
  f1:6 bf1:7 f1:6 f1:7
  bf1:7 bf1:7 f1:6 a2:m7 d2:7
  g1:m7 c1:7
  
  f2:6 d2:7 g2:m7 c2:7

  f2:6 d2:7 g2:m7 c2:7

  f4:7 r2. bf4:7 r2. f4:7 r4*7
  bf1:7 bf1:7 f1:6 a2:m7 d2:7
  g1:m7 c1:7 f2:7 d2:7 g2:m7 c2:7

  f1:6 bf1:7 f1:6 f1:7
  bf1:7 bf1:7 f1:6 a2:m7 d2:7
  g1:m7 c1:7 f2:6
  \chordOpenParen{ d2:7 }
  g2:m7
  \chordCloseParen{ c2:7 }
  
  r8*11 g8*5:1.5
}

refrainChords = \refrainNatalieColeChords

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
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  \partial 4 f8 f8 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  f8 f8 r4 f4 f4 | f4 f4 c4 e8 f8 | r1 | r2 f4 f4 |
  \break
  f8 f4. f4 f4 | f8 f4. f8( c8) e8 f8 | r1 | r2 f4 f4 |
  \break
  a2. f4 | a8 c4. f,4 f8 f8 |
  \alternative { \volta 1 {
  r1 | r2 r4 f4 |
  } \volta 2 {
  r1 | r2 r4 c'8 f,8 |
  } } }
  \sect "B"
  
  c'4 bf8 a8 bf8 c8 r8 \parenthesize f,8 | c'4 bf8 af8 bf8 c8 r8 f,8 |
  c'8 c8 c8 c8 c8 d8 c8 ef8~ | ef4. d8 c8 f,8 f8 c'8~ |
  \break
  c2. bf8 af8 | bf8 c4.~ c2 |
  r2 \tuplet 3/2 { a4 c4 a4 } | f4 d8 c8~ c4. c'8~ |
  \break
  c8 c8 bf8 a8 bf8 c8 r8 c8~ | c8 c8 bf8 a8 bf8 c4. |
  c8 c4. c8 c4 c8~ | c4 bf8 a8 bf8 c8 r8 f,8~ |
  
  \sect "A3"
  
  f8 f4. f4 f4 | f4 f4 c4 e8 f8 | r1 | r2 r4 f4 |
  \break
  f2 f4 f4 | f4 f4 f8( c8) e8 f8 | r1 | r2 f4 f4 |
  \break
  a2. f4 | a8 c4. f,4 f8 f8 \textToCodaLastTime | r1 | r1 |
  \bar "|."
  
  \textCoda
  
  r4 r8 f8 gs8 a8 bf8 gs8 | a8 f8 d8 c8~ c2\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

\include "../Include/refrain.ily"
