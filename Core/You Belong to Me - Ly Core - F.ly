%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "You Belong to Me (Jo Stafford arrangement)"
  subtitle = \instrument
  poet = ""
  composer = "Pee Wee King, Redd Stewart and Chilton Price"
  copyright = \markup \small { \now " " "© 1952 Ridgeway Music Company, Inc." }
}

refrainLyrics = \lyricmode {
Ba boo boo ba ba ba boo wee boo wee.
Ba ba boo be be be boo wee boo wee.

See the pyr -- a -- mids a -- long the Nile.
Watch the sun -- rise on a tro -- pic isle.
Just re -- mem -- ber, dar -- ling, all the while,
you be -- long to me.

See the mar -- ket -- place in old Al -- giers.
Send me pho -- to -- graphs and sou -- ve -- nirs.
Just re -- mem -- ber, when a dream ap -- pears,
you be -- long to me.

I'll be so a -- lone with -- out you,
may -- be you'll be lone -- some too and blue.

Fly the o -- cean in a sil -- ver plane.
See the jun -- gle when it's wet with rain.
Just re -- mem -- ber, 'til you're home a -- gain,
you be -- long to me.

I'll be so a -- lone and with -- out you,
may -- be you'll be lone -- some too and blue.

Fly the o -- cean in a sil -- ver plane.
See the jun -- gle when it's wet with rain.
But re -- mem -- ber, dar -- ling, 'til you're home a -- gain,
you be -- long to me.
}

refrainChords = \chordmode {
  f2:6 d2:m9 g2:m9 c2:13.9-
  f2:6 d2:m9 g2:m9 c2:13.9-

  f1 a1:m7 bf1 a2:m7 d2:7.9-
  g2:m bf2:m6 a2:m7 d2:m7 d2:m7 g2:9 g2:m7/c c2:13.9-

  f1 a1:m7 bf1 a2:m7 d2:7.9-
  g2:m bf2:m6 a2:m7 d2:m7 g2:9 c2:7.9- f1:6
  
  c2:m7 f2:7 c2:m9 f2:7 c2:m7/bf bf2:1.3.5.9 bf1:1.3.5.9
  d1:m7 g4:9 fs4:7 g2:9 c1:13 g2:m11 c2:13
  
  f1 a1:m7 bf1 a2:m7 d2:7.9-
  g2:m bf2:m6 a2:m7 d2:m7 g2:m7 g4:m7/c c4:7.9 f1:6

  c2:m7 f2:7 c2:m9 f2:7 c2:m7/bf bf2:1.3.5.9 bf1:1.3.5.9
  d1:m7 g4:9 fs4:7 g2:9 c1:13 g2:m11 c2:13
  
  f1 a1:m7 bf1 a2:m7 af2:m7 g1:m7 a2:m7 d2:7.9- g1:m9 gf1:7.9+
  r8 af8:9 df4:maj7 gf4:13.11+ gf8:7.9- f8*3:maj9 f2.:6.9
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Jo Stafford 1952]" 4 = 70

  \sectStart "Intro"
  
  r4 \tuplet 3/2 { d8 f8 a8 } c8 c8 c8 a8 | c4 a8 c8~ c2 |
  r4 \tuplet 3/2 { d,8 f8 a8 } c8 c8 c8 a8 | c4 d,8 a'8~ a2 | 

  \sect "A1"
  
  r4 f8 g8 \tuplet 3/2 { a8 g8 f8~ } f8 a8 | e4. ds8 e2 | 
  r4 d8 e8 f8 e8~ \tuplet 3/2 { e8 d8 f8 } | \tuplet 3/2 { c8 c8 c8~ } c2. |
  r8 b4 c8 b8 a8 g8 b8 | a4 c8 f8~ f2 | r8 a4 g8 f4. g8 | c,1 |
  
  \sect "A2"

  r4 f8 g8 \tuplet 3/2 { a8 g8 f8~ } f8 a8 | e4. ds8 e2 | 
  r4 d8 e8 f8 e8~ \tuplet 3/2 { e8 d8 f8 } | \tuplet 3/2 { c8 c8 c8~ } c2. |
  r8 b4 c8 b8 a8 g8 b8 | a4 c8 f8~ f2 | r8 g4 f8 e4. g8 | f1 |

  \sect "B1"
  
  r8 f4.~ f8 c8~ \tuplet 3/2 { c8 b8 c8 } | g'2~ g4. f8 | ef2 d2~ | d1 |
  r8 g4.~ g8 d8~ \tuplet 3/2 { d8 cs8 d8 } | a'2~ a4. g8 | e2. g4 | d1 |
  \bar "||"

  \xPageBreak
  \sectNoBarNoBreak "A3"

  r8 f4 g8 a8 g8~ \tuplet 3/2 { g8 f8 a8 } | e4 ds8 e8~ e2 |
  r4 d8 e8 f8 e8~ \tuplet 3/2 { e8 d8 f8 } | c4 c8 c8~ c2 |
  r8 b4 c8 b8 a8 g8 b8 | a4 c8 f8~ f2 | r8 g4 f8 e4. g8 | f1 |
  
  \sect "B2"
  
  r8 f4.~ f8 c8~ \tuplet 3/2 { c8 b8 c8 } | g'2~ g8 f8 c8 ef8~ | ef2 d2~ | d1 |
  r8 g4.~ g8 d8~ \tuplet 3/2 { d8 cs8 d8 } | a'2~ a4. g8 | e2. g4 | d1 |
  \bar "||"

  \sect "A4"

  r8 f4 g8 a8 g8~ \tuplet 3/2 { g8 f8 a8 } | e4 ds8 e8~ e2 |
  r4 d8 e8 f8 e8~ \tuplet 3/2 { e8 d8 f8 } | c4. g'8 gf4~ \tuplet 3/2 { gf8 gf8 ef8 } |
  f8 d4. a8 c8~ \tuplet 3/2 { c8 d8 f8 } | a4~ \tuplet 3/2 { a8 a8( c8) } bf2 |
  a2.~ \tuplet 3/2 { a8 g8( f8) } | e2 r8 a8( c,8) f8~ | f1~ | f1\fermata |
  
  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s1*52 r8 af8 df4 gf4 gf8 f8~ f4 f2.
}
\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
