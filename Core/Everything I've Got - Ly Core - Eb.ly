%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Everything I've Got (Belongs to You)"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small { \now " " "© 1942 Chappell & Co." }
}

refrainLyrics = \lyricmode {
I have eyes for you to give you dir -- ty looks. __
I have words that do not come from chil -- dren's books. __
There's a trick with a knife I'm learn -- ing to do, __
but ev -- 'ry -- thing I've got be -- longs to you. __

I've a pow -- er -- ful an -- es -- the -- sia in my fist __
and the per -- fect wrist to give your neck a twist. __
There are ham -- mer -- lock holds, I've mast -- ered a few, __
but ev -- 'ry -- thing I've got be -- longs to you. __

Share for share, share a -- like, __
you get struck each time I strike. __
You for me, me for you. __
I'll give you plen -- ty of noth -- ing. __

I'm not yours for bet -- ter but for worse. __
And I've learned to give the well known witch -- es curse. __
I've a ter -- ri -- ble tongue, a tem -- per for two, __
and ev -- 'ry -- thing I've got be -- longs to you. __
}

refrainChords = \chordmode {
  s2
  
  ef2:maj7 bf2:sus9 ef2:maj7 bf2:sus9 ef1:maj9 ef1:6
  ef2:m7 bf2:sus9 ef2:m7 bf2:sus9 ef1:m7 ef1:m7
  
  c1:m7 f1:7 bf1:maj7 bf1:7 
  ef2:6 f2:m7 fs2:dim7 bf2:9 ef1:6 ef2:6 bf2:sus9

  ef2:maj7 bf2:sus9 ef2:maj7 bf2:sus9 ef1:maj9 ef1:6
  ef2:m7 bf2:sus9 ef2:m7 bf2:sus9 ef1:m7 ef1:m7
  
  c1:m7 f1:7 bf1:maj7 bf1:7 
  ef2:6 f2:m7 fs2:dim7 bf2:9 ef1:6 ef1:6
  
  b1 cs1:m7 b1 fs1:7 ef1 d1 g1:m bf1:7

  ef2:maj7 bf2:sus9 ef2:maj7 bf2:sus9 ef1:maj9 ef1:6
  ef2:m7 bf2:sus9 ef2:m7 bf2:sus9 ef1:m7 ef1:m7
  
  c1:m7 f1:7 bf1:maj7 bf1:7 
  ef2:6 f2:m7 fs2:dim7 bf2:9 ef1:6 ef2:6
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
  \tempoFour "Medium-Up [Ella Fitzgerald 1956]" 175

  \partial 2 \invisEighth g4 f8 |
  \bar "||"

  \sectStart "A1"
  
  g4 bf4 ef,4 f4 | g4 bf4 ef,8 f4 g8~ | g1~ | g2 r8 gf4 f8 |
  \break
  gf4 bf4 ef,4 f4 | gf4 bf4 ef,8 f4 gf8~ | gf1~ | gf2 r8 gf4 gf8 | 
  \break
  gf8 f8 f4 f4 r4 | r4 f4 \tuplet 3/2 { f4 g4 a4 } | d1~ | d2. bf4 | 
  \break
  ef4 ef,4 f4 ef4 | gf4 ef8 g8~ g8 g4. | ef1~ | ef2 ef8 g4 f8 |
  
  \sect "A2"

  g4 bf4 ef,4 f4 | g4 bf4 ef,8 f4 g8~ | g1~ | g2 r8 gf4 f8 |
  \break
  gf4 bf4 ef,4 f4 | gf4 bf4 ef,8 f4 gf8~ | gf1~ | gf2 r8 gf4 gf8 | 
  \break
  gf8 f8 f4 f4 r4 | r4 f4 \tuplet 3/2 { f4 g4 a4 } | d1~ | d2. bf4 | 
  \break
  ef4 ef,4 f4 ef4 | gf4 ef8 g8~ g8 g4. | ef1~ | ef1 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBar "B"
  
  ds4 e4 ds4 r4 | e4 fs8 e8~ e4 r4 | ds4 e4 ds4 e4 | fs4 gs8 fs8~ fs4 r4 |
  \break
  g4 af4 g4 r4 | a4 bf8 a8~ a4 r4 | bf4 bf8 bf8 bf8 bf8 bf4 | d4. af8~ af2 |
  
  \sect "A3"

  g4 bf4 ef,4 f4 | g4 bf4 ef,8 f4 g8~ | g1~ | g2 r8 gf4 f8 |
  \break
  gf4 bf4 ef,4 f4 | gf4 bf4 ef,8 f4 gf8~ | gf1~ | gf2 r8 gf4 gf8 | 
  \break
  gf8 f8 f4 f4 r4 | r4 f4 \tuplet 3/2 { f4 g4 a4 } | d1~ | d2. bf4 | 
  \break
  ef4 ef,4 f4 ef4 | gf4 ef8 g8~ g8 g4. | ef1~ | ef1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
