%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Lush Life"
  subtitle = \instrument
  poet = ""
  composer = "Billy Strayhorn"
  copyright = \markup \small "© 1949 Tempo Music Inc."
}

refrainLyrics = \lyricmode {
I used to vis -- it all the ver -- y gay plac -- es, __
those come- what- may plac --es __
where one re -- lax -- es on the ax -- is of the wheel of life __
to get the feel of life __ from jazz and cock -- tails.

The girls I knew had sad and sul -- len gray fac -- es __
with dis -- tin -- gué trac -- es __ that used to be there,
you could see where they'd been washed a -- way __
by too man -- y through the day;
twelve o' -- clock tales.
Then you came a -- long with your si -- ren song to tempt me to mad -- ness. __
I thought for a -- while that your poig -- nant smile was tinged with the sad -- ness
of a great love for me. __ Ah! Yes, I was wrong. A -- gain, I was wrong. __

Life is lone -- ly a -- gain and on -- ly last year ev -- 'ry -- thing seemed so sure.
Now life is aw -- ful a -- gain, a trough -- ful of hearts could on -- ly be a bore.
A week in Pa -- ris will ease the bite of it, all I care is to smile in spite of it.
I'll for -- get you, I will, while yet you are still burn -- ing in -- side my brain.
Ro -- mance is mush, sti -- fling those who strive, __
I'll live a lush life in some small dive, __
and there I'll be while I rot with the rest of those whose lives are lone -- ly too.
}

refrainHLChords = \chordmode {
  s4
  
  df2:6 cf2:7 df2:maj7 cf2:7 df2:maj7 cf2:7 df4:maj7 ef4:m7 e4:maj7 gf4:m7
  af2:m7 d2:7 df2:6 d2:7 df2:maj7 d2:7.5-

  df2:6 cf2:7 df2:maj7 cf2:7 df2:maj7 cf2:7 df4:maj7 ef4:m7 e4:maj7 gf4:m7
  af2:m7 d2:7 df2:6 d2:7 df4:maj7 \chordSlash 1 g4:m7.5- c4:7
  
  f2:m f2:m6 f2:m7 f2:m6 f1:m g2:m7 gf2:7.5-
  f2:m f2:m6 f2:m7 f2:m6 f2:m ff2:dim7
  
  ef2:m7 af2:7 cf1:7.5- bf1:7 ef1:m7
  bff1:7.5- ef1:m7 af1:7

  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 c4:7.5- cf4:7 e4:maj7 ef4:7.5+ d4:7 \chordSlash 1
  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 df4:7 c4:7 f4:maj7 ff4:7.5+ ef4:7 \chordSlash 1
  
  af2:6 ef2:7.9+ af4:6 \chordSlash 1 ff4:m7 bff4:7 
  d4:6 \chordSlash 1 d4:m7 g4:7 c4:6 cf4:7 \tuplet 3/2 { cf4:7 bff4:7 af4:7 }

  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 c4:7.5- cf4:7 bf1:7
  ef4:7 \chordSlash 1 gf4:m7 cf4:7 bff2:7 af2:7 
  df4:maj7 \chordSlash 1 df4:m7 gf4:7 cf4:maj7 \chordSlash 1 f4:m7 bf4:7
  ef4:m7 \chordSlash 1 gf4:m7 cf4:7 bff2:7.5+ af2:7 ff4:maj7 ef4:6 d4:maj7 g4:7 ef8:m7 d8:7 df2.:maj7
}

refrainBerkleeChords = \chordmode {
  s4
  
  df2:6 cf2:7 df2:maj7 cf2:7 df2:maj7 c2:7 df4:maj7 ef4:m7 f4:m7 gf4:m7
  af2:m7 d2:7 f2:m7 d2:7 d2:m7.9- d2:7.5-

  df2:6 cf2:7 df2:maj7 cf2:7 df2:maj7 cf2:7 df4:maj7 ef4:m7 e4:maj7 gf4:m7
  af2:m7 d2:7 ff2:m7 d2:7 d4:m7.9- \chordSlash 1 g4:m7.5- c4:7
  
  f2:m f2:m6 f1:m7 f1:m g2:m7 gf2:7.5-
  f2:m f2:m6 f1:m7 f1:m af1:7 b1:7.5- 
  
  bf1:7 ef1:m7
  a1:7.5- ef1:m7 d1:7.11+

  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 fs4:m7 b4:7 e4:maj7 ef4:7.5+ d4:7 \chordSlash 1
  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 df4:7 c4:7 f4:maj7 \chordSlash 2 a4:7
  
  af2:6 ef2:7.9+ af4:6 \chordSlash 1 e4:m7 a4:7 
  d4:6 \chordSlash 1 d4:m7 g4:7 c2:6 af2:7

  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 c4:7.5- b4:7 f2:m7 bf2:7
  ef4:7 \chordSlash 1 gf4:m7 cf4:7 a2:7.5+ af2:7 
  df4:maj7 \chordSlash 1 df4:m7 gf4:7 f2:m7 bf2:7
  ef4:m7 \chordSlash 1 gf4:m7 cf4:7 a2:7.5+ af2:7 af4:7.9+ a4:7.9+ bf4:7.9+ b4:7.9+ c4:7.9+ d4:7 df2:maj7
}

refrainNRChords = \chordmode {
  s4
  
  df2:6 cf2:9 df2:maj7 cf2:9 df2:maj7 cf2:9 df4:maj7 ef4:m7 f4:m7 fs4:m7
  af2:m7 d2:13.11+ f2:m7 d2:9.11+ df2:m6.9 d2:13.11+

  df2:6 cf2:9 df2:maj7 cf2:9 df2:maj7 cf2:9 df4:maj7 ef4:m7 f4:m7 fs4:m7
  af2:m7 d2:13.11+ f2:m7 d2:9.11+ df4:m6.9 \chordSlash 1 g4:m7.5- c4:7
  
  f2:m f2:m6 f2:m f2:m7 f1:m g2:m7.5- c2:7
  f2:m f2:m6 f2:m f2:m7 f1:m
  
  af2:13 af2:7 cf1:9.5- bf1:9 ef1:m7
  bff1:9.5- ef1:m7.11 d1:13.11+

  df2:maj7 d2:13.11+ df2:maj7 d2:13.11+ df4:6 \chordSlash 1 fs4:m7 cf4:13 ff2:maj7 d2:13.11+
  df2:maj7 d2:13.11+ df2:maj7 d2:13.11+ df4:6 \chordSlash 1 df4:9 c4:13 f2:maj7 bff2:13
  
  af2:maj7 ef2:7.9+.5+ af4:maj7 \chordSlash 1 ff4:m7 bff4:7 
  d4:maj7 \chordSlash 1 d4:m7 g4:7 c2:maj7 af2:13

  df2:maj7 d2:13.11+ df2:maj7 d2:13.11+ df4:6 \chordSlash 1 c4:7.11+.9+ cf4:13 f2:m7.11 bf2:7
  fs2:m9 b2:13 a2:9.5+ af2:13 df2:maj7 gf2:13 f2:m7 bf2:7
  fs2:m9 b2:13 a2:9.5+ af2:13 af4:7.9+ a4:7.9+ bf4:7.9+ b4:7.9+
  c4:7.9+ d4:13.11+ df4:maj7 \chordInsideParens{ af4:13 }
}

refrainNicoChords = \chordmode {
  s4
  
  df2:6 cf2:7 df2:maj7 cf2:7 df2:maj7 cf2:7 df4:maj7 ef4:m7 ff4:maj7 gf4:m7
  af2:m7 d2:7 df2:6 d2:7 df2:maj7 d2:9.11+

  df2:6 cf2:7 df2:maj7 cf2:7 df2:maj7 cf2:7 df4:maj7 ef4:m7 ff4:maj7 gf4:m7
  af2:m7 d2:7 df2:6 d2:9.11+ df4:maj7 \chordSlash 1 g4:m7.5- c4:7
  
  f2:m f2:m6 f2:m f2:m7 f1:m g2:m7.5- c2:7
  f2:m f2:m6 f2:m f2:m7 f1:m
  
  ef2:m7 af2:7 cf1:7.5- bf1:7 ef1:m7
  bff1:7.5- ef1:m7.11 af1:7

  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 c4:7.5- cf4:13 ff2:maj7 ef4:7.5+ eff4:7
  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 df4:7 c4:13 f4:maj7 \chordSlash 1 ff4:7.5+ ef4:7
  
  af2:6 ef2:7.9+ af4:6 \chordSlash 1 ff4:m7 bff4:7 
  eff4 \chordSlash 1 eff4:m7 aff4:7 c4.:6 cf8:7 \tuplet 3/2 { bf4:7 bff4:7 af4:7 }
  df2:6 d2:7 df2:6 d2:7 df4:6 \chordSlash 1 c4:7.5- cf4:7 bf1:7

  gf2:m9 cf2:13 bff4.:9.5+ af8*5:13 df2:maj7 gf2:13 f4.:m7 bf8*5:7
  gf2:m9 cf2:13 bff2:9.5+ af2:13 af4:7.9+ a4:7.9+ bf4:7.9+ b4:7.9+ c4:7.9+ d4:7 df2:maj7
}

refrainChords = \refrainNicoChords

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Nat King Cole 1949]" 4 = 68

  \xTextMark \markup{ "Verse" }
  
  \partial 4 \invisEighth af,8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  df8 df8 df8 df8 ef8 ef8 ef8 ef8 | \tuplet 3/2 { f4 f4 f4~ } f8 f8 ef8 ef8 |
  \tuplet 3/2 { f4 f4 f4~ } f8 f8 ef8 ef8 | f8 f8 gf8 gf8 af8 af8 a8 a8 |
  \break
  b8 b8 b4~ b8 a8 b8 a8 | af8 af8 af4~ af8 bf8 e,8 e8 | ef8 ef4. r4 r8 af,8 |
  
  \sect "A2"
  
  df8 df8 df8 df8 ef8 ef8 ef8 ef8 | \tuplet 3/2 { f4 f4 f4~ } f8 f8 ef8 ef8 |
  \tuplet 3/2 { f4 f4 f4~ } f8 f8 ef8 ef8 | f8 f8 gf8 gf8 af8 af8 a8 a8 |
  \break
  b8 b8 b4~ b8 a8 b8 a8 | af8 af8 af4~ af8 bf8 e,8 e8 | ef8 ef4. r4 c'4 |
  
  \sect "B"
  
  c,4 c8 c8 d4. d8 | f4 f8 f8 af4. af8 | \tuplet 3/2 { c4 d4 af4 } c4 c4~ | c2. c4 |
  \break
  c,4 c8 c8 d4. d8 | f4 f8 f8 af4. af8 | \tuplet 3/2 { c4 df4 bf4 } c4 c4 |
  \bar "||"
  
  \xPageBreak
  \sectNoBarNoBreak "C"

  \tuplet 3/2 { bf4 c4 af4 } bf4 c8 f,8~ | f1 | r4 af4 af4 gf8 f8 | ef1 |
  \break
  r4 ef4 ef4 f8 df8 | af'1~ | af2. r4 |

  \bar "||-|."
  \break

  \xTextMark \markup{ "Refrain" }
  
  \sectStart "A"
  
  af,4. bf8 \tuplet 3/2 { b4 e4 a,4 } | af4. bf8 \tuplet 3/2 { c4 e4 b4 } | 
  bf4 \tuplet 3/2 { af8 df8 f8 } gf4 af4 | b,2. a4 |
  \break
  af4. bf8 \tuplet 3/2 { b4 e4 a,4 } | af4. bf8 \tuplet 3/2 { c4 e4 b4 } | 
  bf4 \tuplet 3/2 { af8 df8 f8 } af4 a4 | c,2. df4 |
  
  \sect "B"
  
  ef4. f8 gf8 gf4 ff8 | ef4. f8 \tuplet 3/2 { fs4 fs4 e4 } | 
  a,4. b8 c8 c4 b8 | a4. b8 \tuplet 3/2 { c4 c4 bf4 } |
  \break
  af4. bf8 \tuplet 3/2 { b4 e4 a,4 } | af4. bf8 \tuplet 3/2 { c4 e4 b4 } |
  bf4 \tuplet 3/2 { af8 df8 f8 } gf4 af4 | bf2. r8 f8 |
  
  \sect "C"
  
  af4. gf8 af4 af8 gf8 | f4 ef8 f8~ f4. c8 | ef4. df8 ef8 ef4 df8 | df8 cf4 bf'8~ bf4. f8 |
  \break
  af4. gf8 af4 af8 gf8 | f4 f8 ef8 f4. af,8 | b4 c4 cs4 d4 | ef4 e4 f2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
