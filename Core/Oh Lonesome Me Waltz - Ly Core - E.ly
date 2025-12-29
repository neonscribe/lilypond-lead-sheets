%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Oh, Lonesome Me (in 3, Neil Young Style)"
  subtitle = \instrument
  poet = ""
  composer = "Don Gibson"
  copyright = \markup \small { \now " " "© 1957 Acuff Rose Music" }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _
Ev  -- 'ry -- bod -- y's go -- in' out and hav -- in' fun.
I'm a fool for stay -- in' home and hav -- in' none.
I can't get o -- ver how she set me free.
Oh, lone -- some

me.

There

must be some way that I can lose these lone -- some blues.
For -- get a -- bout the past, find some -- one new.
I've thought of ev -- 'ry -- thing from A to Z.
Oh, lone -- some

me.

I'll

bet she's not like me;
she's out and fan -- cy free.
She's flirt -- ing with the boys with all her charms.
I still love her so,
and broth -- er don't you know?
I'd wel -- come her right back here in my arms.

There
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ my _ _ _ _ _
I can't get o -- ver how she set me free.
}

refrainChords = \chordmode {
  e1. a1./cs e1. a1./cs

  e1. a1./cs e1. a1./cs
  e1. a1./cs e1. a1./cs
  e1. b1.:m a1. a1.:m d1. a1.
  
  e1 e1 a1/cs a1/cs

  e1. a1./cs e1. a1./cs
  e1. a1./cs e1. a1./cs
  e1. b1.:m a1. a1.:m d1. a1.
  
  e1 e1 a1/cs a1/cs

  e1 e1
  
  fs1.:m7 b1. gs1.:m cs1.
  fs1.:m a1. e1. e1.
  fs1.:m7 b1. gs1.:m cs1.
  fs1.:m fs1. b2. b2./a gs2.:m fs2.:m

  e1 e1 a1/cs a1/cs
}

refrainKey = e

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 6/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow Waltz" 4 = 78

  \sectStart "Intro"

  \ambitusOff
  b2~ b8 bf8 b2~ b8 bf8 | e,2.~ e2. | gs2. gs4 fs4 gs4 | e2. cs'4 b4 e,4 |
  \ambitusOn

  \sect "Verse 1"
  
  r4 gs8 b8 b8 b8~ b2. | a8 b8 b2~ b4 r4 e,4 | gs8 b8 b2~ b2 r4 | R4*6 |
  r4 gs4 b8 b8~ b2 r8 b8 | a8 b4 b8~ b4~ b2 r8 e,8 | gs8 b4 cs8( b4~ b2.) | r2. r2 e,4 |
  gs2 b8 b8~ b4. b8~ b4 | e2 e4 fs2 e4 | cs2.~ cs2 r4 | R4*6 |
  r2. d2.( | cs2.) cs4( b4) a4 |
  \numericTimeSignature
  \time 4/4
  b1~ | b1 | r1 | r2 r4 e,4 |
  
  \segnoSign
  \sect "Verse 2"
  \time 6/4
  
  gs4 b4 b4 b2 b4 | a4 b4 b4~ b4 r8 cs8~( cs8 b8~ | b4) b4 gs8 gs8~ gs2. | r2. r2 r8 e8 |
  gs8 b8 b2~ b2 b8 b8( | cs2.) r2 e,4~ | e4 gs8 b4 cs8( b2.) | r2. r2 e,4 |
  gs4 b2 b2 b8 e8~ | e2 e4 fs2 e4 | cs2.~ cs2. | R4*6 |
  r2. d2.( | cs4. b8 a4) cs4( b4) a4 |
  \numericTimeSignature
  \time 4/4
  b1~ | b1~ | b2 r2 | r1  \textToCoda |

  \xPageBreak

  \sectNoBar "Bridge"

   r1 | r2 r4 gs4 |
  \time 6/4
  a4 a2 a4 r4 gs4 | fs2 r4 r2. | r8 b8 cs4 b4~ b4 b4 a8 gs8~ | gs2 r4 r2. |
  r2. cs8 cs4. cs8 cs8 | cs2. r4 cs8 b4 a8 | b2. r2. | r2. r2 gs4 |
  a4. a8~ a4 r4 a4 cs4 | b2. r2 b4 | cs8 b8~ b2 r4 b4 ds8 cs8~ | cs2. r2 cs4 |
  cs4 cs2 cs2 cs4 | cs4 cs2 r4 as4 as4 | b2.~ b2.~ | b2. r2 b4 \dalSegno |

  \bar ".|:-|."
  \textCodaBreak
  
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
    \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
}

refrainKicksOverTime = \relative f' { 
  e4 e8 e8 e8 e8 e4 e8 e8 e8 e8 |
  e4 e8 e8 e8 e8 e4 e8 e8 e8 e8 |
  e4 e8 e8 e8 e8 e4 e8 e8 e8 e8 |
  e4 e8 e8 e8 e8 e4 e8 e8 e8 e8 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
