%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Good Morning Heartache"
  subtitle = \instrument
  poet = ""
  composer = "Irene Higginbotham, Ervin Drake & Dan Fisher"
  copyright = \markup \small "© 1945 Fisher Music Corporation & Lindabet Music Corporation"
}

refrainLyricsOne = \lyricmode {
Good morn -- ing heart -- ache, you old gloom -- y sight,
Good morn -- ing heart -- ache, thought we said good -- bye last night.
I tossed and turned un -- til it seemed you had gone,

but here you are with the dawn.
_ _ _ _ _ _ _
Stop haunt -- ing me now. Can't shake you no -- how.
Just leave me a -- lone,
I've got those Mon -- day blues straight through Sun -- day blues.

Good morn -- ing heart -- ache, here we go a -- gain.
Good morn -- ing heart -- ache, you're the one who knew me when,
Might as well get used to you hang -- in' a -- round.
Good morn -- ing heart -- ache, sit down.
}

refrainLyricsTwo = \lyricmode {
Wish I'd for -- get you but you're here to stay.
It seems I met you when my love _ went a -- way.
Now ev -- 'ry day I start by say -- ing to you,
_ _ _ _ _ _ _
“Good morn -- ing heart -- ache, what's new?”
}

refrainChords = \chordmode {
  c2:m af2/c c2:m6 c2:m7 f2:maj7 bf2:maj7 a2:m7.5- d2:7.9-
  g2:m7 bf2:m7+ a2:m7 af2:m7
  
  g2:m7 c2:7.9+ f1:maj7
  
  g2:m7 c2:7.9+ f1:6
  
  e2:m7 a2:7.9+ d1:m6 e2:m7 a2:7 d1:maj7
  d2:m7 g2:7.9+ c1:maj7 df2:m7 gf2:7 c2:m7 f2:7

  c2:m af2/c c2:m6 c2:m7 f2:maj7 bf2:maj7 a2:m7.5- d2:7.9-
  g2:m7 bf2:m7+ a2:m7 af2:m7 g2:m7 c2:7 f2:6
  \chordInsideParens{ g2:7.9- }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 70

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 c8 g'8 f8 ef8 c4. | c8 c8~ \tuplet 3/2 { c8 g'8 f8 } ef2 |
  r8 c8 a'8 g8 f8 c8~ \tuplet 3/2 { c8 a'8 bf8 } |
  c8 c8 bf8 c8 a2 |
  r8 d,8 c'8 bf8 a8 g8 f8 e8 | e4 g8 e8 ef2 |
  \break
  \alternative { \volta 1 {
  r8 c8 c8 c8 ef8 c4 ef8 | c1 |
  } \volta 2 {
  r8 c8 c8 c8 ef8 c4 e8 | f1 |
  } } }
  \sect "B"
  
  r4 a4 \tuplet 3/2 { c4 a4 c4 } | a1 | r4 a4 \tuplet 3/2 { cs4 a4 c4 } | a1 |
  \break
  r4 g4 \tuplet 3/2 { bf4 g4 bf4 } | g2. r8 g8 |
  gf8 gf4 gf8~ gf8 af8 gf4 | f8 f4 f8~ f8 g8 f4 |
  
  \sect "A3"
  
  r8 c8 g'8 f8 ef8 c4. | c8 c8~ \tuplet 3/2 { c8 g'8 f8 } ef2 |
  r8 c8 a'8 g8 f8 c8~ \tuplet 3/2 { c8 a'8 bf8 } | c8 c8 bf8 c8 a2 |
  \break
  r8 d,8 c'8 bf8 a8 g8 f8 e8 | e4 g8 e8 ef2 |
  r8 c8 c8 c8 a'8 c,4 a'8 | f1


  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
