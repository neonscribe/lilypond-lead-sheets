%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (and (defined? 'printNoteNames) printNoteNames)
          (or (string=? instrument "Bass for Standard Key")
              (string=? instrument "Eb for Standard Key")))
   (set-global-staff-size 18))

\header {
  title = "Meditation (Meditação)"
  subtitle = \instrument
  poet = "Newton Mendonça, Normal Gimbel"
  composer = "Antônio Carlos Jobim"
  copyright = "© 1962 Jobim Music"
}

bossaRhythm = ##t

refrainLyricsOne = \lyricmode {
}

refrainLyricsTwo = \lyricmode {
}

refrainLyricsOne = \lyricmode {
In __ my lone -- li -- ness __
When you're gone and I'm all by my -- self and I __ need your ca -- ress, __
I __ just think of you, __ and the thought of you hold -- ing me near
makes my lone -- li -- ness soon dis -- ap -- pear.

Yes, __ I love you so, __ and that for me __ is all __ I need __ to know. __

I __ will wait for you __ 'til the sun falls from out of the sky
for what __ else can __ I do? __
I __ will wait __ for you __
me -- di -- ta -- ting how sweet life will be when you come back to me. __
}

refrainLyricsTwo = \lyricmode {
Though __ you're far a -- way __
I have on -- ly to clo se my eyes and you __ are back __ to stay. __
I __ just close my eyes, __ and the sad -- ness that miss -- ing you brings
soon is gone and this heart of mine sings.
}

refrainChords = \chordmode {
  c1:6 c1:6 b1:sus7 b1:7
  c1:6 c1:6 e1:m7 a1:7.5+
  d1:m7 d1:m7 f1:m7 bf1:7
  e1:m7 a1:7.5+ d1:m7 g1:7.5+
  
  f1:maj7 f1:maj7 f1:m7 bf1:7
  e1:m7 ef1:dim7 d1:m7 g1:7.5+
  
  c1:6 c1:6 b1:sus7 b1:7
  c1:6 c1:6 e1:m7 a1:7.5+
  d1:m7 d1:m7 f1:m7 bf1:7
  e2:m7 a2:7.5+ d2:m7 g2:7 c1:6
  \chordInsideParens{ g1:7.5+ }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bossa" 4 = 160

  \mark \markup{ \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  a1~ | a2~ a8 g4 b8~ | b8 bf4 a8~ a2~ | a2 \tuplet 3/2 { r4 fs4 g4 } |
  \tuplet 3/2 { a4 a4 a4 } \tuplet 3/2 { a4 a4 a4 } | a4 g8 bf8~ bf8 g4 a8~ |
  a8 b4 a8~ a2~ | a2. r4 |
  f1~ | f2~ f8 ef4 g8~ | g8 gf4 f8~ f2~ | f2 \tuplet 3/2 { r4 c4 d4 } |
  \tuplet 3/2 { e4 e4 e4 } \tuplet 3/2 { e4 df4 e4 } | 
  f2~ \tuplet 3/2 { f4 ef4 f4 } | \tuplet 3/2 { g4 g4 g4 } \tuplet 3/2 { g4 fs4 g4 } | af2. r4 |
  }
  \break

  \mark \markup{ \box "B" }
  
  c1~ | c2~ c8 b4 d8~ | d8 df4 c8~ c2~ | c2 r8 b4 d8~ |
  \break
  d8 df4 c8~ c8 bf4 d8~ | d8 df4 c8~ c8 bf4 af8~ | af1~ | af2 r2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  a1~ | a2~ a8 g4 b8~ | b8 bf4 a8~ a2~ | a2 \tuplet 3/2 { r4 fs4 g4 } |
  \tuplet 3/2 { a4 a4 a4 } \tuplet 3/2 { a4 a4 a4 } | a4 g8 bf8~ bf8 g4 a8~ |
  a8 b4 a8~ a2~ | a2. r4 |
  f1~ | f2~ f8 ef4 g8~ | g8 gf4 f8~ f2~ | f2 \tuplet 3/2 { r4 c4 d4 } |
  ef8 ef8 ef8 f8~ f8 f8 f8 d8~ | d8 d8 d8 ef8~ ef8 ef8 ef8 c8~ | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
