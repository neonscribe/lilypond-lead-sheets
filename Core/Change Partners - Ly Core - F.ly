%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Change Partners"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = \markup \small { \now " " "© 1937 Irving Berlin" }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Must you dance ev' -- ry dance with the same for -- tu -- nate man?
You have danced with him since the mu -- sic be -- gan.
Won't you change part -- ners and dance with me?
Must you dance quite so close with your lips touch -- ing his face?
Can't you see
I'm long -- ing to be in his place?
Won't you change part -- ners and dance with me?
Ask him to sit this one out and
while you're a -- lone,
I'll tell the wait -- er to tell
him he's want -- ed on the tel -- e -- phone.
You've been locked in his arms ev -- er since hea -- ven knows when.
Won't you change part -- ners and then,
you may nev -- er want to change part -- ners a -- gain.
}

refrainObjectGenderMaleLyrics = \lyricmode {
Must you dance ev' -- ry dance with the same for -- tu -- nate girl?
You have danced with her since the mu -- sic be -- gan.
Won't you change part -- ners and dance with me?
Must you dance quite so close with your lips touch -- ing her face?
Can't you see
I'm long -- ing to be in her place?
Won't you change part -- ners and dance with me?
Ask her to sit this one out and
while you're a -- lone,
I'll tell the wait -- er to tell
her she's want -- ed on the tel -- e -- phone.
You've been locked in her arms ev -- er since hea -- ven knows when.
Won't you change part -- ners and then,
you may nev -- er want to change part -- ners a -- gain.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  f1:maj7 f1:maj7 af1:dim7 af1:dim7
  g1:m7 c1:7 bf1:m7 ef1:7
  f1:maj7/a af1:dim7 g1:m7 a2:m7 d2:7.9+
  g1:m7 c1:7
  
  f2:6 d2:7 g2:m7 c2:7
  
  f1:maj7 f1:maj7 af1:dim7 af1:dim7
  g1:m7 c1:7 bf1:m7 ef1:7
  f1:maj7/a af1:dim7 g1:m7 a2:m7 d2:7.9+
  g1:m7 c1:7
  
  f1:6 bf2:m7 ef2:7
  
  af1:maj7 af1:maj7 af1:maj7 bf2:m7 ef2:7
  af1:maj7 af1:maj7 g1:m7 c1:7

  f1:maj7 f1:maj7 af1:dim7 af1:dim7
  g1:m7 c1:7 bf1:m7 ef1:7
  f1:maj7 e1:7 ef1:7.11+ d1:7.9-
  g1:m7 c2:sus7 c2:7 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
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
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Fred Astaire 1938]" 4 = 150

  \sectStart "A1"
  
  c4. c8 c2~ | c1 | d4. d8 d2~ | d1 |
  e4. e8 e2~ | e2 \tuplet 3/2 { d4 e4 f4 } | bf1~ | bf2 a4 g4 |
  \break
  c2. f,4 | \tuplet 3/2 { e4 g4 f4 } \tuplet 3/2 { e4 f4 d4 } | c1~ | c2 d4 f4 |
  g1 | gs4 a2 c,4 |
  
  d4. d8 d2~ | d1 |

  \sect "A2"
  
  c4. c8 c2~ | c1 | d4. d8 d2~ | d1 |
  e4. e8 e2~ | e2 \tuplet 3/2 { d4 e4 f4 } | bf1~ | bf2 a4 g4 |
  \break
  c2. f,4 | \tuplet 3/2 { e4 g4 f4 } \tuplet 3/2 { e4 f4 d4 } | c1~ | c2 d4 f4 |
  g1 | gs4 a2 c,4 |
  
  f4. f8 f2~ | f1 |

  \sect "B"
  
  ef2 af4 bf4 | \tuplet 3/2 { c4 df4 c4 } \tuplet 3/2 { bf4 af4 bf4 } | c4. c8 c2~ | c1 |
  ef,2 af4 bf4 | \tuplet 3/2 { c4 df4 c4 } \tuplet 3/2 { bf4 af4 bf4 } | c4. c8 bf4. bf8 | a4. a8 g2 |
  
  \sect "A3"

  c,4. c8 c2~ | c1 | d4. d8 d2~ | d1 |
  e4. e8 e2~ | e2 \tuplet 3/2 { d4 e4 f4 } | bf1~ | bf2 a4 g4 |
  \break
  c1 | cs4 e2 d4 | a1~ | a2 bf4 c4 |
  cs8 d4 bf8~ bf8 g4 f8~ | f2 \tuplet 3/2 { e4 f4 g4 } | f1 | r1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
