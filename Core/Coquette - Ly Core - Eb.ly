%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Coquette (1928 Sheet Music)"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Carmen Lombardo and John Green"
  copyright = \markup \small { \now " " "© 1928 Leo Feist Inc." }
}

refrainLyrics = \lyricmode {
Tell me why you keep fool -- ing, lit -- tle co -- quette? __
Mak -- ing fun of the ones who love you. __
Break -- ing hearts you are rul -- ing, lit -- tle co -- quette. __
True hearts ten -- der -- ly dream -- ing of you. __
Some day you'll fall in love as I fell in love with you.
May -- be some -- one you love will just be fool -- ing.
And when you're all a -- lone with on -- ly re -- gret. __
You'll know, lit -- tle co -- quette, I loved you. __
}

refrainChords = \chordmode {
  ef1:6 ef2.:6 e4:dim7 f2:m7 bf2:6 bf1:6
  bf1:6 bf2.:6 bf4:1.3.5+ ef1:6 f2:9 bf2:7

  ef1:6 ef2.:6 e4:dim7 f2:m7 bf2:6 bf1:6
  bf1:6 bf2.:6 bf4:1.3.5+ ef1:6 ef1:6

  ef1:7 \tuplet 3/2 { df4/ef ef2:7 } ef2:6 af2.:1.3.5.9 af4:m af1:6
  f1:7 \tuplet 3/2 { ef4/f f2:7 } f2:6 bf1:9 bf1:1.3.5+

  ef1:6 ef2.:6 e4:dim7 f2:m7 bf2:6 bf1:6
  bf1:6 bf2.:6 bf4:1.3.5+ ef1:6
  \chordOpenParen{ f2:9 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Dorsey Brothers 1928]" 155

  \xTextMark \markup{ \bold \box "A1" }
  
  ef'4 c2. | \tuplet 3/2 { ef4 c4 ef4 } c4 g4 | \tuplet 3/2 { bf4 g4 bf4 } g2~ | g1 |
  \break
  bf4 g2. | \tuplet 3/2 { bf4 g4 bf4 } g4 bf,4 | c4 g'2.~ | g4 r4 r2 |
  
  \sect "A2"
  
  ef'4 c2. | \tuplet 3/2 { ef4 c4 ef4 } c4 g4 | \tuplet 3/2 { bf4 g4 bf4 } g2~ | g1 |
  \break
  bf4 g2. | \tuplet 3/2 { bf4 g4 bf4 } g4 bf,4 | c4 g'2.~ | g1 |
  
  \sect "B"
  
  ef4 f2. | \tuplet 3/2 { f4 g4 bf4 } ef4 c4 | \tuplet 3/2 { bf4 g4 bf4 } g4 ef4 | f1 |
  \break
  f4 g2. | \tuplet 3/2 { g4 a4 c4 } f4 d4 | c2 bf2 | c2 bf2 |
  
  \sect "A3"

  ef4 c2. | \tuplet 3/2 { ef4 c4 ef4 } c4 g4 | \tuplet 3/2 { bf4 g4 bf4 } g2~ | g1 |
  \break
  bf4 g2. | \tuplet 3/2 { bf4 g4 bf4 } g4 <bf bf,>4 | <c c,>4 <ef ef,>2.~ | <ef ef,>2. r4 |
  
  \bar "|."
}

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")


\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
