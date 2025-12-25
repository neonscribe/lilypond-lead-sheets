%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Star Eyes"
  subtitle = \instrument
  poet = ""
  composer = "Don Raye and Gene dePaul"
  copyright = \markup \small { \now " " "© 1943 Leo Feist, Inc." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _
Star eyes, that to me is what your eyes are,
Soft as stars in A -- pril skies are,
tell me some -- day you'll ful -- fill
their pro -- mise of a thrill.
All my life I've felt con -- tent
to star -- gaze at the skies,
Now I on -- ly want to melt
the star -- dust in your eyes.
Star eyes, when, if ev -- er, will my lips know
if it's me for whom those eyes glow?
Makes no diff -- 'rence where you are,
you eyes still hold my wish -- ing star,
oh, star eyes, how love -- ly you are.
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _
Star eyes, flash -- ing eyes in which my hopes rise,
let me show you where my heart lies,
let me prove that it a -- dores
that love -- li -- ness of yours.
}

refrainChords = \chordmode {
  s1 s1
  
  ef1:maj7 f2:m7 bf2:13 ef1:maj7 ef2:m7 af2:7
  df1:maj7 g2:m7.5- c2:7 f1:maj7 b2:13 bf2:13
  
  af1:maj7 af1:maj7 af1:m7 df1:13
  gf1:maj7 gf1:maj7 f1:m7 bf2:sus9 bf2:13

  ef1:maj7 f2:m7 bf2:13 ef1:maj7 ef2:m7 af2:7
  df1:maj7 g2:m7.5- c2:7 f1:maj7 b2:13 bf2:13
  ef2:7.9+ d2:7.9+.5+ df2:7.9+ c2:7.9+ f2:m7 bf2:sus9 ef2:6
  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
  
  s1 s1 s1
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
  \tempo "Medium [Charlie Parker 1951]" 4 = 135
  
  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 12 {
  ef4-. r4 bf'4-. ef4-. | af,4-. r8 df8 r8 cf8 r8 ff,8^"12x" |
  }
  \break

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \repeat volta 2 {
  f2 ef2 | r4 ef8 f8 g8 bf8 g8 bf8 | f2 ef2 | r4 ef8 f8 gf8 af8 bf8 c8 |
  \break
  bf2 af2 | r4 df8 c8 bf8 c8 df8 ef8 | c2.. c8 | cf8 df8 cf8 df8 bf2 |
  }
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  ef4 ef4 ef4. af,8 | bf2. af4 | ef'4. ef8 cf8 ef,8 gf8 df'8 | bf1 |
  \break
  df4. df,8 ef8 f8 gf8 af8 | bf2.. bf8 | af8 af4. bf4 af4 | f1 |
  
  \sect "C"
  
  f2 ef2 | r4 ef8 f8 g8 bf8 g8 bf8 | f2 ef2 | r4 ef8 f8 gf8 af8 bf8 c8 |
  \break
  bf2 af2 | r4 df8 c8 bf8 c8 df8 ef8 | c2.. c8 | cf8 df8 cf8 df8 bf4 bf4 |
  \break
  bf2. bf4 | af2 g2 | r4 f4 \tuplet 3/2 { af4 c4 ef4 } \textToCodaLastTime | ef2 r2 |
  \bar "|."

  \textCodaBreak

  \bar ".|:-|."
  \repeat volta 4 {
  ef,4-. r4 bf'4-. ef4-. | af,4-. r8 df8 r8 cf8 r8 ff,8 | 
  }
  ef4-. r4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
