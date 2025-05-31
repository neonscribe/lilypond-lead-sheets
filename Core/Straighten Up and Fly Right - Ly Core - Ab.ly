%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Straighten Up and Fly Right"
  subtitle = \instrument
  poet = ""
  composer = "Nat King Cole and Irving Mills"
  copyright = \markup \small "© 1944 American Academy of Music, Inc."
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _
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

blow your top.

The buzz -- ard told the mon -- key you are chok -- ing me.
Re -- lease your hold and I will set you free.
The mon -- key looked the buzz -- ard dead in the eye and said,
“Your stor -- y is so touch -- ing, but it sounds like a lie.”

blow your top.
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _

_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _

Ain't no use in div -- ing. What's the use of jiv -- ing?
}

refrainChords = \chordmode {
  af2 af2/gf df2/f af2/ef
  af2 af2/gf df2/f af2/ef 
  af2 af2/gf df2/f af2/ef 
  ef1 ef1
  
  af1 bf1:m7 af1/c e4.:7 ef8*5:7
  af1 bf1:m7 af1/c e4.:7 ef8*5:7

  af2 af2/gf df/f af/ef df2 af/c bf2:m7 ef2:7
  af2 af2/gf df/f af/ef df2 f2:m7
  
  e4.:7 ef8*5:7
  
  ef4.:9 af8*5
  
  c1:7 c1:7 f1:7 f1:7 bf1:7 bf1:7 ef1:7 ef1:7
  
  af2 af2/gf df2/f af2/ef df2 af2/c bf2:m7 ef2:7
  af2 af2/gf df2/f af2/ef df2 f2:m7 ef2:7 af2:7
  c1:7 c1:7 f1:7 f1:7 bf1:7 bf1:7 ef1:7 bf2:m7 ef2:7
  af2 af2/gf df2/f af2/ef df2 af2/c bf2:m7 ef2:7
  af2 af2/gf df2/f af2/ef df2 f2:m7 ef2:7 af2
  
  bf2:m7/ef ef2:7 af4 r2.
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing [Nat King Cole 1944]" 4 = 152

  \sectStart "Intro"
  
  <b g>8 <c af>8 <af ef>8 <f c>8 <af ef>4 <f c>8 <af ef>8 | r8 <bf f>8 r4 r4 r8 ef,8 |
  <b' g>8 <c af>8 <af ef>8 <f c>8 <af ef>4 <f c>8 <af ef>8 | r8 <f c>8 r4 r4 r8 ef8 |
  <b' g>8 <c af>8 <af ef>8 <f c>8 <af ef>4 <f c>8 <af ef>8 | r8 <bf f>8 r4 r4 r8 ef,8 |
  <b' g>8 <c af>4 ef,8 <b' g>8 <c af>4 ef,8 | <b' g>8 <c af>4 ef,8 <b' g>8 <c af>4 ef,8 |
  
  \sect "Verse 1"
  
  af8 af8 af8 af8 af8 af8 af8 af8 | af4 af8 af8 af4 r8 f8 | b8 c8 af8 bf8 f8 g8 af8 bf8 | b8 af4 bf8~ bf4 r8 f8 |
  af8 af8 af8 af8 af8 af8 af8 af8 | af4 af8 af8~ af8 f4 f8 | b8 c8 af8 f8 ef8 f8 af8 bf8 |
  r8 c4 af8 bf4 r4 |
  
  \bar ".|:-||"

  \sectNoBar "Chorus 1&2"
  
  \repeat volta 2 {
  r4 f8 af8 bf4 f8 af8~ | af8 bf4.~ bf2 |
  r4 f8 af8 bf4 f8 af8~ | af8 f4.~ f2 |
  r4 f8 af8 bf4 f8 af8~ | af8 bf4.~ bf4 r8 af8~ |
  af8 af4. f8 g8 af8 bf8 \textToCodaLastTime |
  \alternative { \volta 1 {
  cf8 af4 bf8~ bf2 |
  } \volta 2 {
  c8 ef,4 af8~ af4 r8 ef8 |
  } } }
  \bar "||"

  \xPageBreak

  \sectNoBarNoBreak "Verse 2"
  
  c'8 c8 c8 c8 c8 c8 c8 c8 | c4 c8 c8~ c4 r8 f,8 | c'4 c4 c8 c8 f,8 g8 | c4 a8 f8~ f4 r8 f8 |
  c'8 c8 c8 c8 c8 c8 c4 | c4 c8 c8~ c8 c8 c8 ef,8 | b'8 c8 af8 f8 b8 c8 af8 f8 | c'4 c8 af8 bf4
  r4_\markup{ "To " \box "Chorus 1" " second ending, then " \box "Solos" } |
  
  \sect "Solos"
  
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \bar "||-:|." \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||" \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq_\markup{ "To " \box "Intro" " then " \box "Chorus 1" " to " \box "Coda" }  \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq |
  
  \bar "||-||"
  
  \textCodaBreak
  
  c2 c2 | af4 r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
