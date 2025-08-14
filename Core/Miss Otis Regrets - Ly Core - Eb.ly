%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Miss Otis Regrets"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small "© 1934 Chappell & Co., Inc."
}

refrainLyrics = \lyricmode {
Miss O -- tis re -- grets she's un -- a -- ble to lunch to -- day, Ma -- dam. __
Miss O -- tis re -- grets she's un -- a -- ble to lunch to -- day. __
She is sor -- ry to be de -- layed,
but last eve -- ning down at Lov -- er's Lane she strayed, Ma -- dam. __
Miss O -- tis re -- grets she's un -- a -- ble to lunch to -- day. __

When she woke up and found that her dream of love was gone, Ma -- dam, __
she ran to the man who had led her so far a -- stray. __
And from un -- der her vel -- vet gown
she drew a gun and shot her lov -- er down, Ma -- dam. __
Miss O -- tis re -- grets she's un -- a -- ble to lunch to -- day. __

When the
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _

mob came and got her and dragged her from the jail, Ma -- dam, __
they strung her up -- on the old wil -- low a -- cross the way, __
and the mo -- ment be -- fore she died
she lift -- ed up her love -- ly head and cried, Ma -- dam. __
“Miss O -- tis re -- grets she's un -- a -- ble to lunch to-
_ _ _
day.”
}

refrainChords = \chordmode {
  s4
  
  ef1:maj7 f2:m7 bf2:7 ef1:6 f2:m7 bf2:7
  ef1:maj7 g2:m7 c2:7.5+ f1:m7 bf1:7
  
  ef1:maj7 bf2:m7 ef2:7 af1:maj7 af1:maj7 ef2:maj7 ef2:7
  af1:6 ef2:maj7 c2:m7 f2:m9 bf2:7 ef1 f2:m7 bf2:7

  ef1:maj7 f2:m7 bf2:7 ef1:6 f2:m7 bf2:7
  ef1:maj7 g2:m7 c2:7.5+ f1:m7 bf1:7
  
  ef1:maj7 bf2:m7 ef2:7 af1:maj7 af1:maj7 ef2:maj7 ef2:7
  af1:6 ef2:maj7 c2:m7 f2:m9 bf2:7

  ef1 f2:m7 bf2:7

  ef1
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Ethel Waters 1934]" 4 = 78

  \partial 4 g8( af8) |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  bf8 bf4 bf8 bf4 bf8 bf8 | bf8 bf4 bf8 af4. f8 | ef1 | f8 af4.~ af4. f8 |
  \break
  g8 g4 g8 g4 g8 af8 | bf8 a4 bf8 c4. bf8 | f1~ | f2 g4. af8 |
  \break
  bf8 bf4 bf8 g4 f4 | ef2. ef8 ef8 | ef'4 ef4 ef4 ef4 | d4 d4 c4 c4 | bf1 |
  \break
  f8 af4.~ af4 f4 | g8 g4 g8 g4 g8 g8 | g8 g4 g8 f4. ef8 | ef1~ | ef2 r4 g8 af8 |

  \break

  \xTextMark \markup{ \bold \box "A2,A3" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  bf8 bf4 bf8 bf4 bf8 bf8 | bf4 bf4 af4 f4 | ef1 | f8 af4.~ af4. f8 |
  \break
  g8 g4 g8 g4 g8 af8 | bf8 a4 bf8 c4. bf8 | f1~ | f2 g4. af8 |
  \break
  bf8 bf4 bf8 g4 f4 | ef2. ef4 | ef'4 ef4 ef4 ef4 | d4 d4 c4 c4 | bf1 |
  \break
  f8 af4.~ af4 f4 | g8 g4 g8 g4 g8 g8 | g8 g4 g8 f4. ef8 |
  \break
  \alternative { \volta 1 {
  ef1~ | ef2 r4 g8 af8 |
  } \volta 2 {
  ef1 | r1 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
