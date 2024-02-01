%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "When Sunny Gets Blue"
  subtitle = \instrument
  poet = "Jack Segal"
  composer = "Marvin Fisher"
  copyright = "© 1956 Marvin Music Company"
}

refrainLyricsOne = \lyricmode {
When Sun -- ny gets blue
her eyes get gray and clou -- dy,
then the rain be -- gins to fall.
Pit -- ter pat -- ter, pit -- ter pat -- ter,
love is gone, so what can mat -- ter?
No sweet lov -- er man comes to call. __

When

_ _ _ _ _ _ _

Peo -- ple used to love to hear her laugh, see her smile,
that's how she got her name.
Since that sad af -- fair, she's lost her smile, changed her style,
some -- how she's not the same. __

But mem' -- ries will fade
and pret -- ty dreams will rise up
where her oth -- er dreams fell through;
hur -- ry new love, hur -- ry here __
to kiss a -- way each lone -- ly tear,
and hold her near, when Sun -- ny gets blue.
}

refrainLyricsTwo = \lyricmode {
 _

Sun -- ny gets blue
she breathes a sigh of sad -- ness,
like the wind that stirs the trees.
Wind that sets the leaves to sway -- in', like some vi -- o -- lins are play -- in'
_ _ _ _ _ _ _ _ _
weird and haunt -- ing mel -- o -- dies.
}

refrainChords = \chordmode {
  s8
  
  g2:m7 c2:7 bf2:m7 ef2:7 f2:maj7 g2:m7 a2:m7 d2:7 
  b2:m7.5- bf4:m7 ef4:7 f2:maj7 af4:m7 df4:7

  g2:m7 c2:7 a2:m7.5- d2:7

  g2:m7 c2:7 e2:m7 a2:7
  
  d2:maj7 e2:m7 fs2:m7 b2:7 e2:m7 a2:7 d1:maj7
  d2:m7 g2:7 c2:maj7 a2:m7 d2:m7 g2:7 g2:m7 c2:7

  g2:m7 c2:7 bf2:m7 ef2:7 f2:maj7 g2:m7 a2:m7 d2:7 
  b2:m7.5- bf4:m7 ef4:7 f2:maj7 af4:m7 df4:7 g2:m7 c2:7.9+ f1:maj7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 60

  \partial 8 c8 |

  \mark \markup{ \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  \tuplet 3/2 { a'4 g4 a4 } c,4. c8 | c'8 bf8 f8 df8 c'8 bf4. | r4 a16 g16 f16 e16 d4 g4 | e1 |
  d8 f8 g8 f8 af8 f8 g8 f8 | c8 f8 g8 f8 af8 f8 g8 f8 |
  } \alternative { {
  d8 f8 g8 f8 c'4 bf8 f8 | a2~ a4. c,8 |
  } {
  d8 f8 g8 f8 c'4. bf8 | a1 |
  } }

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  fs8 g8 fs8 g8 a4. b8 | cs8 a8 a4 a8 fs8 fs4 | \tuplet 3/2 { fs4 d4 e4 } f4 g4 | a1 |
  f8 g8 f8 g8 a4. bf8 | b8 g8 g4 g8 e8 e4 | \tuplet 3/2 { e4 c4 d4 } e4 f4 | g2~ g4. c,8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  \tuplet 3/2 { a'4 g4 a4 } c,4. c8 | c'8 bf8 f8 df8 c'8 bf4. | r4 a16 g16 f16 e16 d4 g4 | e1 |
  d8 f8 g8 f8 \tuplet 3/2 { af8 f8 g8~ } g8 f8 | c8 f8 g8 f8 af8 f8 g8 f8 | a8 c8 d8 c8 \tuplet 3/2 { ef4 c4 af4 } | g2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
