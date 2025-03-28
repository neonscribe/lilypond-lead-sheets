%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Ev'ry Time We Say Goodbye"
  subtitle = \instrument
  poet = ""
  composer = "Cole Porter"
  copyright = \markup \small "© 1944 Chappell & Co."
}

refrainLyrics = \lyricmode {
Ev -- 'ry time __ we say good -- bye I die __ a lit -- tle.
Ev -- 'ry time __ we say good -- bye __ I won -- der why __ a lit -- tle.
Why the gods a -- bove me, who must be in the know,
think so lit -- tle of me they al -- low you to go. __
When you're near __ there's such an air of Spring __ a -- bout it.
I can hear __ a lark some -- where __ be -- gin to sing __ a -- bout it; there's no love song fin -- er.
But how strange the change from ma -- jor to mi -- nor
ev -- 'ry time __ we say good -- bye. __
}

refrainChords = \chordmode {
  ef1:maj7 f2:m7 bf2:7 ef2:maj7 c2:7.9- f2:m7 bf2:7
  g2:m7 gf2:7 f2:m7 bf2:7 bf2:m7 ef2:7 af2:m7 df2:7

  ef2/g gf2:dim7 f2:m7 bf2:7 bf2:m7 ef2:7 af1:maj7
  af2:m7 df2:7 ef1:maj7 b1:7 f2:m7/bf bf2:7
  
  ef1:maj7 f2:m7 bf2:7 ef2:maj7 c2:7.9- f2:m7 bf2:7
  g2:m7 gf2:7 f2:m7 bf2:7 bf2:m7 ef2:7 af2:maj7 df2:7

  ef2/g gf2:dim7 f2:m7 bf2:7 bf2:m7 ef2:7 af2:maj7 df2:7
  g2:m7 c2:7 f2:7 bf2:7 ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 80

  \xTextMark \markup{ \bold \box "A1" }
  
  g4. g8 g2~ | g4 g4 g4 g4 | g2. g4 | af2~ af8 f8 ef8 d8 |
  \break
  r8 bf'4 bf8 bf2~ | bf4 bf4 bf4 bf4 | bf2~ bf8 g8 af8 bf8 | cf2~ cf8 af8 g8 f8 |  
  
  \sect "B"
  
  r8 ef'4 ef8 ef4 ef4 | ef4 d2 bf4 | df2 \tuplet 3/2 { g,4 af4 bf4 } | c1 |
  \break
  r8 cf4 cf8 cf8 cf4. | cf4 bf2 ef,8 f8 | gf8 gf4 ef8 gf4( f4~ | f2.) r4 |
  
  \sect "A2"
  
  g4. g8 g2~ | g4 g4 g4 g4 | g2. g4 | af2~ af8 f8 ef8 d8 |
  \break
  r8 bf'4 bf8 bf2~ | bf4 bf4 bf4 bf4 | bf2~ bf8 g8 af8 bf8 | c2~ c8 af8 g8 f8 |  
  
  \sect "C"

  r8 ef'4 ef8 ef4 f4 | ef4 d2 bf8 c8 | df4. g,8 c4. f,8 | ef8 d8 ef8 bf'8~ bf4 af4 |
  \break
  g4. g8 g2~ | g4 f4 ef4 d4 | ef1~ | ef2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
