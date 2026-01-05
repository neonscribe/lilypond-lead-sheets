%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Straighten Up and Fly Right"
  subtitle = \instrument
  poet = ""
  composer = "Nat King Cole and Irving Mills"
  copyright = \markup \small { \now " " "© 1944 American Academy of Music, Inc." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _
The buzz -- ard took a mon -- key for a ride in the air.
The mon -- key thought that ev -- 'ry -- thing was on the square.
The buzz -- ard tried to throw the mon -- key off his back,
but the mon -- key grabbed his neck and said, “Now lis -- ten, Jack.”

Straight -- en up and fly right. Straight -- en up and stay right.
Straight -- en up and fly right. Cool down pa -- pa don't you
blow your top.

Ain't no use in div -- ing. What's the use of jiv -- ing?
Straight -- en up and fly right. Cool down pa -- pa don't you
blow your top.

The buzz -- ard told the mon -- key you are chok -- ing me.
Re -- lease your hold and I will set you free.
The mon -- key looked the buzz -- ard dead in the eye and said,
“Your stor -- y is so touch -- ing, but it sounds like a lie.”

Straight -- en up and fly right. Straight -- en up and stay right.
Straight -- en up and fly right. Cool down pa -- pa don't you
blow your top.

blow your top. _ _ _ _ Fly right.
}

refrainChords = \chordmode {
  s4

  af2 af2/gf df2/f af2/ef
  af2 af2/gf df2/f af2/ef 
  af2 af2/gf df2/f af2/ef 
  ef1 ef1
  
  af1:6 df8*5:6 d4.:dim7 af1:6/ef s8 d4.:dim7 s8 ef4.:9/g
  af1:6 df8*5:6 d4.:dim7 af1:6/ef r8*5 gf8:6.9 g8:6.9 af8:6.9

  af2 af2/gf df/f af/ef df2 af/c bf2:m7 ef2:7
  af2 af2/gf df/f af/ef df2 f2:m7 ff4.:7 ef8*5:7
  
  af2 af2/gf df/f af/ef df2 af/c bf2:m7 ef2:7
  af2 af2/gf df/f af/ef df2 f2:m7 ef4.:9 af8*5:6
  
  c1:7 c1:7 f1:7 f1:7 bf1:7 bf1:7 ef1:7 ef4:7 r8*3  gf8:6.9 g8:6.9 af8:6.9
  
  af2 af2/gf df/f af/ef df2 af/c bf2:m7 ef2:7
  af2 af2/gf df/f af/ef df2 f2:m7 ff4.:7 ef8*5:7
  
  bf2:m7/ef ef2:7 r4*7 af8:6.9
}

refrainKey = af

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
  \tempo "Medium Swing [Nat King Cole 1944]" 4 = 152

  \partial 4 \invisEighth ef8 |
  \bar "||"

  \sectStart "Intro"
  
  \ambitusOff
  <b' g>8 <c af>8 <af ef>8 <f c>8 <af ef>4 <f c>8 <af ef>8 | r8 <bf f>8 r4 r4 r8 ef,8 |
  <b' g>8 <c af>8 <af ef>8 <f c>8 <af ef>4 <f c>8 <af ef>8 | r8 <f c>8 r4 r4 r8 ef8 |
  <b' g>8 <c af>8 <af ef>8 <f c>8 <af ef>4 <f c>8 <af ef>8 | r8 <bf f>8 r4 r4 r8 ef,8 |
  <b' g>8 <c af>4 ef,8 <b' g>8 <c af>4 ef,8 | <b' g>8 <c af>4 ef,8 <b' g>8 <c af>4 
  \ambitusOn
  ef,8 |
  
  \sect "Verse"
  
  af8 af8 af8 af8 af8 af8 af8 af8 | af4 af8 af8 af4 r8 f8 | b8 c8 af8 bf8 f8 g8 af8 bf8 | b8 af4 bf8~ bf4 r8 f8 |
  af8 af8 af8 af8 af8 af8 af8 af8 | af4 af8 af8~ af8 f4 f8 | b8 c8 af8 f8 ef8 f8 af8 bf8 |
  r8 c4 af8 bf4 r4 |
  
  \bar ".|:-||"

  \sect "A1"
  
  r4 f8 af8 bf4 f8 af8~ | af8 bf4.~ bf2 |
  r4 f8 af8 bf4 f8 af8~ | af8 f4.~ f2 |
  r4 f8 af8 bf4 f8 af8~ | af8 bf4.~ bf4 r8 af8~ |
  af8 af4. f8 g8 af8 bf8 \textToCodaLastTime |
  cf8 af4 bf8~ bf2 |
  \bar "||"

  \xPageBreak

  \sectNoBar "A2"
  
  r4 f8 af8 bf4 f8 af8~ | af8 bf4.~ bf2 |
  r4 f8 af8 bf4 f8 af8~ | af8 f4.~ f2 |
  r4 f8 af8 bf4 f8 af8~ | af8 bf4.~ bf4 r8 af8~ |
  af8 af4. f8 g8 af8 bf8 |
  c8 ef,4 af8~ af4 r8 ef8 |

  \sect "B"
  
  c'8 c8 c8 c8 c8 c8 c8 c8 | c4 c8 c8~ c4 r8 f,8 | c'4 c4 c8 c8 f,8 g8 | c4 a8 f8~ f4 r8 f8 |
  c'8 c8 c8 c8 c8 c8 c4 | c4 c8 c8~ c8 c8 c8 ef,8 | b'8 c8 af8 f8 b8 c8 af8 f8 | c'4 c8 af8 bf4 r4 |
  
  \sect "A3"
  
  r4 f8 af8 bf4 f8 af8~ | af8 bf4.~ bf2 |
  r4 f8 af8 bf4 f8 af8~ | af8 f4.~ f2 |
  r4 f8 af8 bf4 f8 af8~ | af8 bf4.~ bf4 r8 af8~ |
  af8 af4. f8 g8 af8 bf8 |
  c8 ef,4 af8~ af4 r4 |

  \bar "||-|."
  
  \textCodaBreak
  
  c4 r4 c2 | 
  \autoBeamOff
  af8
  \autoBeamOn
  \ambitusOff
  af8( g8) r8 f8 r8 e8 r8 | ef8 r8
  \ambitusOn
  ef'8 c8 r4
  \ambitusOff
  <af, f bf ef>8 r8 |
  \ambitusOn

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s4 s1*8 af4 r4 r2 bf4 r4 r8 cf4. c4 r4 r2 r8 ff 4. r8 ef4. af,4 r4 r2 bf4 r4 r8 cf4. c4 r4 r2 r2 r8 gf8 g8 af8 
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup { "Play " { \bold \box "Intro" } " then " { \bold \box "Verse" }
	  { \bold \box "A1" } { \bold \box "A2" } { \bold \box "B" } { \bold \box "A3" } 
	  }
\markup { "Solo over one or two " { \bold \box "A" } " sections, or the entire form," }
\markup { "then play " { \bold \box "Intro" } " again, then " { \bold \box "A1" } " with the Coda."
	}
