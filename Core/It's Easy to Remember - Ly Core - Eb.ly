%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "It's Easy to Remember"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small { \now " " "© 1934 Famous Music Corporation" }
}

refrainLyrics = \lyricmode {
Your sweet ex -- pres -- sion, __ the smile you gave me, __ the way you looked when we met.
It's eas -- y to re -- mem -- ber but so hard to for -- get. __

I hear you whis -- per __ “I'll al -- ways love you.” __ I know it's o -- ver and yet,
It's eas -- y to re -- mem -- ber but so hard to for -- get. __

So I must dream __ to have your hand ca -- ress me, fin -- gers press me tight. __
I'd ra -- ther dream __ than have that lone -- ly feel -- ing, steal -- ing through the night. __

Each lit -- tle mo -- ment __ is clear be -- fore me, __ and though it brings me re -- gret,
It's eas -- y to re -- mem -- ber but so hard to for -- get.
}

refrainChords = \chordmode {
  s2
  
  f2:m7 bf2:7 ef2:maj7 c2:7.9- f2:m7 bf2:7 ef4:maj7 \chordSlash 1 bf4:m7 ef4:7
  af4:dim7 af2.:maj7 df1:7 c4:m7.5- f4:7 f4:m7 bf4:7 g2:m7 c2:7.9-

  f2:m7 bf2:7 ef2:maj7 c2:7.9- f2:m7 bf2:7 ef4:maj7 \chordSlash 1 bf4:m7 ef4:7
  af4:dim7 af2.:maj7 df1:7 c4:m7.5- f4:7 f4:m7 bf4:7 ef1:6
  
  bf2:m7 ef2:7 af2:maj7 f2:m7 bf2:m7 ef2:7 af1:maj7
  af2:m7 df2:7 gf2:maj7 ef2:m7 c2:m7.5- f2:7.9- bf2:7 g4:m7 c4:7.9-

  f2:m7 bf2:7 ef2:maj7 c2:7.9- f2:m7 bf2:7 ef4:maj7 \chordSlash 1 bf4:m7 ef4:7
  af4:dim7 af2.:maj7 df1:7 c4:m7.5- f4:7 f4:m7 bf4:7 ef4:6 \chordSlash 1
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
  \tempoFour "Ballad [John Coltrane 1961]" 64

  \partial 2 \invisEighth bf8 bf8 bf8 |
  \bar "||"

  \sectStart "A1"
  
  bf8 af4.~ af8 bf8 bf8 bf8 | bf8 g4.~ g8 bf8 bf8 bf8 | bf4 f2 d'4 | bf2. r8 b8 |
  b4 c4 ef4. g,8 | bf4 af2 af4 | fs4 g4 c4. d,8 | bf'2~ bf8 bf8 bf8 bf8 |
  
  \sect "A2"

  bf8 af4.~ af8 bf8 bf8 bf8 | bf8 g4.~ g8 bf8 bf8 bf8 | bf4 f2 d'4 | bf2. r8 b8 |
  b4 c4 ef4. g,8 | bf4 af2 af4 | fs4 g4 c4. d,8 | ef2~ ef8 ef8 ef8 ef8 |
  
  \sect "B"
  
  ef2~ ef8 f8 g8 bf8 | c4 c4 af4 af4 | df4 df4 bf4 bf4 | c2~ c8 ef,8 ef8 ef8 |
  ef2~ ef8 f8 gf8 af8 | bf4 bf4 gf4 gf4 | bf4 bf4 c4 c4 | d2~ d8 bf8 bf8 bf8 |
  
  \sect "A3"

  bf8 af4.~ af8 bf8 bf8 bf8 | bf8 g4.~ g8 bf8 bf8 bf8 | bf4 f2 d'4 | bf2. r8 b8 |
  b4 c4 ef4. g,8 | bf4 af2 af4 | fs4 g4 c4. d8 | ef2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
