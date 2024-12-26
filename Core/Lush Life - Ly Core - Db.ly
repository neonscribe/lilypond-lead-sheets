%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Lush Life"
  subtitle = \instrument
  poet = ""
  composer = "Billy Strayhorn"
  copyright = "© 1949 Tempo Music Inc."
}

verseLyrics = \lyricmode {
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
}

verseChords = \chordmode {
  s8
  
  df2:6 cf2:7 df2:maj7 cf2:7 df2:maj7 cf2:7 df4:maj7 ef4:m7 e4:maj7 gf4:m7
  af2:m7 d2:7 df2:6 d2:7 df2:maj7 d2:7.5-

  df2:6 cf2:7 df2:maj7 cf2:7 df2:maj7 cf2:7 df4:maj7 ef4:m7 e4:maj7 gf4:m7
  af2:m7 d2:7 df2:6 d2:7 df2:maj7 g4:m7.5- c4:7
  
  f2:m f2:m6 f2:m7 f2:m6 f1:m g2:m7 gf2:7.5-
  f2:m f2:m6 f2:m7 f2:m6 f2:m e2:dim7
  
  ef2:m7 af2:7 b1:7.5- bf1:7 ef1:m7
  a1:7.5- ef1:m7 af1:7
}

verseKey = df

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 110

  \xTextMark \markup{ "Verse" }
  
  \partial 8 af,8 |
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
  
  \sect "C"

  \tuplet 3/2 { bf4 c4 af4 } bf4 c8 f,8~ | f1 | r4 af4 af4 gf8 f8 | ef1 |
  \break
  r4 ef4 ef4 f8 df8 | af'1~ | af2. r4 |

  \bar "||"
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

refrainLyrics = \lyricmode {
Life is lone -- ly a -- gain and on -- ly last year ev -- 'ry -- thing seemed so sure.
Now life is aw -- ful a -- gain, a trough -- ful of hearts could on -- ly be a bore.
A week in Pa -- ris will ease the bite of it, all I care is to smile in spite of it.
I'll for -- get you, I will, while yet you are still burn -- ing in -- side my brain.
Ro -- mance is mush, sti -- fling those who strive, __
I'll live a lush life in some small dive, __
and there I'll be while I rot with the rest of those whose lives are lone -- ly too.
}

refrainChords = \chordmode {
  df2:6 d2:7 df2:6 d2:7 df2:6 c4:7.5- b4:7 e4:maj7 ef4:7.5+ d2:7
  df2:6 d2:7 df2:6 d2:7 df2:6 df4:7 c4:7 f4:maj7 c4:7.5+ ef2:7
  
  af2:6 ef2:7.9+ af2:6 e4:m7 a4:7 d2:6 d4:m7 g4:7 c4:6 b4:7 \tuplet 3/2 { b4:7 a4:7 af4:7 }
  df2:6 d2:7 df2:7 d2:7 df2:6 c4:7.5- b4:7 bf1:7

  ef2:7 gf4:m7 cf4:7 a2:7 af2:7 df2:maj7 df4:m7 gf4:7 cf2:maj7 f4:m7 bf4:7
  ef2:m7 gf4:m7 cf4:7 a2:7.5+ af2:7 e4:maj7 ef4:6 d4:maj7 g4:7 ef8:m7 d8:7 df2.:maj7
}

refrainKey = df

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

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
  af4. gf8 af4 af8 gf8 | f4 f8 ef8 f4. af,8 | a4 c4 cs4 d4 | ef8 e8 f2. |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
