%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Detour Ahead"
  subtitle = \instrument
  poet = ""
  composer = "Lou Carter, Herb Ellis, Johnny Frigo"
  copyright = \markup \small { \now " " "© 1947 Woodrow Music" }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Smooth road, clear day,
but why am I the on -- ly one trav -- 'ling this way?
How strange the road to love should be so eas -- y.
Can there be a de -- tour a -- head?

Wake up, slow down,
be -- fore you crash and break your heart, gul -- li -- ble clown.
You fool, you're head -- ed in the wrong di -- rec -- tion.
Can't you see the de -- tour a -- head?

The far -- ther you trav -- el, the hard -- er to un -- rav -- el the web
she spins a -- round you.
Turn back while there's time.
Can't you see the dan -- ger sign?
Soft shoul -- ders sur -- round you.

Smooth road, clear night.
Oh, luck -- y me that sud -- den -- ly I saw the light.
I'm turn -- ing back a -- way from all that sor -- row.
Smooth road, clear day
No de -- tour a -- head.
}

refrainObjectGenderMaleLyrics = \lyricmode {
Smooth road, clear day,
but why am I the on -- ly one trav -- 'ling this way?
How strange the road to love should be so eas -- y.
Can there be a de -- tour a -- head?

Wake up, slow down,
be -- fore you crash and break your heart, gul -- li -- ble clown.
You fool, you're head -- ed in the wrong di -- rec -- tion.
Can't you see the de -- tour a -- head?

The far -- ther you trav -- el, the hard -- er to un -- rav -- el the web
he spins a -- round you.
Turn back while there's time.
Can't you see the dan -- ger sign?
Soft shoul -- ders sur -- round you.

Smooth road, clear night.
Oh, luck -- y me that sud -- den -- ly I saw the light.
I'm turn -- ing back a -- way from all that sor -- row.
Smooth road, clear day
No de -- tour a -- head.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  c2:maj7 fs2:7.9- b1:7.5+ f4:maj7 e4:m7 a4:m7 \chordSlash 1 d2:7 d4:m7 g4:7
  g2:m7 c2:7 f2:maj7 bf2:7 c2:maj7 a2:m7 af4:7.5- \chordSlash 1 d4:m7 g4:7

  c2:maj7 fs2:7.9- b1:7.5+ f4:maj7 e4:m7 a4:m7 \chordSlash 1 d2:7 d4:m7 g4:7
  g2:m7 c2:7 f2:maj7 bf2:7 c2:maj7 a2:m7 fs2:m7.5- b2:7
  
  e1:m7 b1:7.5-.9+ e1:maj7 fs2:m7.5- b2:7
  e1:m7 b1:7.5-.9+ e1:maj7 df1:9.11+

  c2:maj7 fs2:7.9- b1:7.5+ f4:maj7 e4:m7 a4:m7 \chordSlash 1 d2:7 d4:m7 g4:7
  g2:m7 c2:7 f2:maj7 bf2:7 c2:maj7 e2:7.9+ a2:m7 ef2:7
  d2:7 g2:sus7 c2:6
  \chordInsideParens{ g2:7.5+ }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Woody Herman 1949]" 4 = 70

  \sectStart "A1"
  
  e4 g2. | b4 g2~ g8 g8 | a8 c8 b8 g8 a16 g16 e4. | \tuplet 3/2 { d4 e4 d4 } e2 |
  \break
  r8 g8 g8 a8 bf8 a8 g8 e8 | c4. c8 g'8 f4. | c8 d8 e8 a8 e8 c4 e8 | d1 |
  
  \sect "A2"

  e4 g2. | b4 g2~ g8 g8 | a8 c8 b8 g8 a16 g16 e4. | \tuplet 3/2 { d4 e4 d4 } e2 |
  \break
  r8 g8 g8 a8 bf8 a8 g8 e8 | c4. c8 g'8 f4. | c8 d8 e8 a8 e8 c4 e8 | c2 r4 r8 b'8 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "B"
  
  \tuplet 3/2 { b4 g4 a4 } b8 c4 b8 | a8 g8 f8 g8 a8 b4 a8 | gs2 r8 e8 fs8 gs8 | fs4 fs2 r8 b8 |
  \break
  \tuplet 3/2 { b4 g4 a4 } b4 c8 b8 | a8 g8 f8 g8 a4. b8 | gs4 gs2 gs4 | g4 g2. |
  
  \sect "A3"

  e4 g2. | b4 g2~ g8 g8 | a8 c8 b8 g8 a16 g16 e4. | \tuplet 3/2 { d4 e4 d4 } e2 |
  \break
  r8 g8 g8 a8 bf8 a8 g8 e8 | c4. c8 g'8 f4. | e4 g2. |
  \break
  a4 c2 r8 a8 | a4 c,2 c4 | c1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
