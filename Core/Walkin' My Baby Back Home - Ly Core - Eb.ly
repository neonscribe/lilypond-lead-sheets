%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Walkin' My Baby Back Home"
  subtitle = \instrument
  poet = ""
  composer = "Roy Turk, Fred E. Ahlert"
  copyright = \markup \small { \now " " "© 1930 De Sylva Brown & Henderson Inc." }
}

refrainMaleSingerLyrics = \lyricmode {
Gee, it's great __ af -- ter be -- in' out late, __ walk -- in' my ba -- by back home.
Arm in arm, __ o -- ver mead -- ow and farm, __ walk -- in my ba -- by back home. _

_ stop for a while, __ she gives me a smile, __ and snug -- gles her head __ to my chest.
We start in to pet, __ and that's when I get __ her tal -- cum all o -- ver my vest. __

Af -- ter I kind -- a straight -- en my tie, __ she has to bor -- row my comb.
One kiss, then __ I con -- tin -- ue a -- gain, walk -- in' my ba -- by back home.
}

refrainMaleSingerLyricsTwo = \lyricmode {
We go 'long __ har -- mo -- niz -- in' a song, __ or I'm re -- cit -- ing a poem.
Owls go by, __ and they give me the eye, __ walk -- in' my ba -- by back _ home. We
}

refrainFemaleSingerLyrics = \lyricmode {
Gee, it's great __ af -- ter be -- in' out late, __ walk -- in' my ba -- by back home.
Arm in arm, __ o -- ver mead -- ow and farm, __ walk -- in my ba -- by back home. _

_ stop for a while, __ he gives me a smile, __ I snug -- gle my head __ to his chest.
We start in to pet, __ and that's when he gets __ my tal -- cum all o -- ver his vest. __

Af -- ter I kind -- a straight -- en his tie, __ I have to bor -- row his comb.
One kiss, then __ I con -- tin -- ue a -- gain, walk -- in' my ba -- by back home.
}

refrainFemaleSingerLyricsTwo = \lyricmode {
We go 'long __ har -- mo -- niz -- in' a song, __ or he's re -- cit -- ing a poem.
Owls go by, __ and they give me the eye, __ walk -- in' my ba -- by back _ home. We
}

refrainLyrics =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyrics
  refrainMaleSingerLyrics)

refrainLyricsTwo =
#(if (and (defined? 'femaleSinger) femaleSinger)
  refrainFemaleSingerLyricsTwo
  refrainMaleSingerLyricsTwo)

refrainChords = \chordmode {
  ef2:maj7 bf2:7.5+ ef2:maj7 bf2:7.5+ ef2:maj7 c2:m7 f1:9
  f2:m7 bf2:7 f2:m7 bf2:7 f2:m7 bf2:7
  
  ef2:6 f4:m7 bf4:7
  
  ef2:6 a4:m7.5- d4:7.9-
  
  g2:m g2:m7+ g2:m7 g2:m6 c2:m7 c2:m7/bf a2:m7 d2:7
  g2:m g2:m7+ g2:m7 g2:m6 c2:m7 f2:7 f2:m7 bf2:7

  ef2:maj7 bf2:7.5+ ef2:maj7 bf2:7.5+ ef2:maj7 c2:m7 f1:9
  f2:m7 bf2:7 f2:m7 bf2:7 f2:m7 bf2:7 ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Nat King Cole 1952]" 4 = 111

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|"
  \repeat volta 2 {
  bf8 bf4 c8~ c4 bf8 c8 | d8 ef8 d8 c8~ c2 | d8 ef8 d8 c8~ c8 bf8 c4 | g1 |
  \break
  f8 f4 g8~ g4 f8 g8 | af8 bf8 g8 f8~ f2 | af8 bf8 g8 f8~ f8 ef8 f4 |
  \alternative { \volta 1 {
  ef2 r2 |
  } \volta 2 {
  ef2 r4 r8 ef'8 |
  } } }
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d8 bf8 c8 d8~ d4. c8 | bf8 g8 a8 bf8~ bf4. a8 | g8 ef8 f8 g8~ g8 f8 ef4 | d2. r8 ef'8 |
  \break
  d8 bf8 c8 d8~ d4. c8 | bf8 g8 a8 bf8~ bf2 | r4 c8 c8~ c8 d8 ef4 | f8 d8 c8 bf8~ bf2 |

  \sect "A3"
  
  bf8 bf4 c8~ c4 bf8 c8 | d8 ef8 d8 c8~ c2 | d8 ef8 d8 c8~ c8 bf8 c4 | g1 |
  \break
  f8 f4 g8~ g4 f8 g8 | af8 bf8 g8 f8~ f2 | af8 bf8 g8 f8~ f8 ef8 f4 | ef2 r2 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
