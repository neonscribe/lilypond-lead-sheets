%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Cheek to Cheek"
  subtitle = \instrument
  poet = ""
  composer = "Irving Berlin"
  copyright = \markup \small "© 1935 Irving Berlin"
}

refrainLyrics = \lyricmode {
Heav -- en, __ I'm in Heav -- en, __
and my heart beats so that I can hard -- ly speak, __
and I seem to find the hap -- pi -- ness I seek __
when we're out to -- geth -- er danc -- ing cheek to cheek.
_
_ _ love to climb a moun -- tain,
and to reach the high -- est peak, __
but it does -- n't thrill me half as much as danc -- ing cheek to cheek.
Oh, I
_ _ _ _ _
Dance with me, __ I want my arm a -- bout you, the charm a -- bout you __
will car -- ry me through to Heav -- en, __ I'm in Heav -- en, __
and my heart beats so that I can hard -- ly speak, __
and I seem to find the hap -- pi -- ness I seek __
when we're out to -- geth -- er danc -- ing cheek to cheek. __
}

refrainLyricsTwo = \lyricmode {
Heav -- en, __ I'm in Heav -- en, __
and the cares that hung a -- round me through the week __
seem to van -- ish like a gam -- bler's luck -- y streak
when we're out to -- geth -- er danc -- ing cheek to cheek. __ _

Oh, I love to go out fish -- ing
in a riv -- er or a creek, __
but I don't en -- joy it half as much as _ _ _ _ _ _ _
danc -- ing cheek to cheek.
}

refrainChords = \chordmode {
  c2:6 a2:m7 d2:m7 g2:7 c2:6 a2:m7 d2:m7 g2:7
  c2:6 g2:7/d ds2:dim7 e2:m7 bf1:7.5- a2:7 af2:7.5-
  g2:7 d2:m7 g2:7 g2:7/f e1:7 a1:7
  d1:m7 g1:7
  
  c2:6 a2:m7 d2:m7 g2:7
  
  c2:6 f2:maj7 e2:m7 a2:7.9-
  
  d2:m7 g2:m7 c2:6 a2:7.9- d2:m7 g2:m7 c2:6 a2:7.9-
  d2:m7 g2:m7 c2:6 a2:7.9- 
  
  d2:m7 g2:m7 c2:6 a2:7.9- 
  
  d2:m7 g2:7 c1:6
  
  c1:m7 c2:m7 c2:m7/bf af1:7 af1:7
  g1:7 g2:7 g2:7/f c2:6/e a2:m7 d2:7 g2:7
  
  c2:6 a2:m7 d2:m7 g2:7 c2:6 a2:m7 d2:m7 g2:7
  c2:6 g2:7/d ds2:dim7 e2:m7 bf1:7.5- a2:7 af2:7.5-
  g2:7 d2:m7 g2:7 g2:7/f e1:7 a1:7
  d1:m7 g1:7 c2:6
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Fred Astaire 1935]" 4 = 160

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  a4 g2.~ | g2 e4 f4 | a4 g2.~ | g2 e4 f4 |
  \break
  a4 g4 b4 a4 | c4 b4 d4 c4 | e1~ | e2 d4 c4 |
  \break
  b4 d4 c4 a4 | g4 b4 a4 f4 | e1~ | e4 r4 f4 g4 |
  \break
  a4. a8 f8 f4 d8~ | d8 d4. c8 b4 c8~ |
  \alternative { \volta 1 {
  c1 | r1 |
  } \volta 2 {
  c1\repeatTie | r2 r8 g'4 df8 |
  } } }

  \break

  \xTextMark \markup{ \bold \box "B" }
  
  \bar ".|:"
  \repeat volta 2 {
  f4 g4 b4 d8 c8~ | c8 c4. r8 g4 gf8 | f4 g4 b8 d4 c8~ | c2 r8 g4 gf8 |
  \break
  f4 g4 b4 d4 | c4 c8 g8~ g4. gs8 |
  \alternative { \volta 1 {
  a4 a4 f4 b,8 c8~ | c2 r8 g'4 gf8 |
  } \volta 2 {
  a4 a4 f4 b,8 c8~ | c1 |
  } } }

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "C" }
  
  c'4. c8 c2~ | c2 \tuplet 3/2 { c4 c4 c4 } | ef4. gf,8 gf4 gf4~ | gf2 ef'2 |
  \break
  d4. f,8 f4 f4~ | f2 d'2 | c4. e,8 e4 e4~ | e2 d2 |
  
  \sect "A3"
  
  a'4 g2.~ | g2 e4 f4 | a4 g2.~ | g2 e4 f4 |
  \break
  a4 g4 b4 a4 | c4 b4 d4 c4 | e1~ | e2 d4 c4 |
  \break
  b4 d4 c4 a4 | g4 b4 a4 f4 | e1~ | e4 r4 f4 g4 |
  \break
  a4. a8 f8 f4 d8~ | d8 d4. c8 b4 c8~ | c1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
