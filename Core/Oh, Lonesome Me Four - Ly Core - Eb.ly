%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Oh, Lonesome Me (4/4, Don Gibson Style)"
  subtitle = \instrument
  poet = ""
  composer = "Don Gibson"
  copyright = \markup \small "© 1957 Acuff Rose Music"
}

refrainObjectGenderFemaleLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _
Ev  -- 'ry -- bod -- y's go -- in' out and hav -- in' fun.
I'm just a fool for stay -- in' home and hav -- in' none.
I can't get o -- ver how she set me free.
Oh, lone -- some

me.

A

me.

I'll bet she's not like me;
she's out and fan -- cy free.
She's flirt -- ing with the boys with all her charms.
I still love her so,
and broth -- er don't you know?
I'd wel -- come her right back here in my arms.

Well, there must be some way I can lose these lone -- some blues.
For -- get a -- bout the past and find some -- bod -- y new.
I've thought of ev -- 'ry -- thing from A to Z.
Oh, lone -- some me.

me.

Oh, lone -- some me.
}

refrainObjectGenderMaleLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _
Ev  -- 'ry -- bod -- y's go -- in' out and hav -- in' fun.
I'm just a fool for stay -- in' home and hav -- in' none.
I can't get o -- ver how she set me free.
Oh, lone -- some

me.

A

me.

I'll bet he's not like me;
he's out and fan -- cy free.
he's flirt -- ing with the girls with all his charms.
I still love him so,
and sis -- ter don't you know?
I'd wel -- come him right back here in my arms.

Well, there must be some way I can lose these lone -- some blues.
For -- get a -- bout the past and find some -- bod -- y new.
I've thought of ev -- 'ry -- thing from A to Z.
Oh, lone -- some me.

me.

Oh, lone -- some me.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  ef1 ef1
  
  ef1 ef1 bf1:7 bf1:7
  bf1:7 bf1:7 ef1 ef1
  ef1 ef1:7 af1 af1
  bf1 bf1
  
  ef1 ef1
  
  ef1 ef1
  
  bf1 bf1 f1:7 f1:7
  f1:7 f1:7 bf1 bf1
  bf1 bf1 f1:7 f1:7
  f1:7 f1:7 bf1 bf1

  ef1 ef1 bf1:7 bf1:7
  bf1:7 bf1:7 ef1 ef1
  ef1 ef1:7 af1 af1
  bf1 bf1 ef1 ef1
  
  ef1 ef1
  
  bf1 bf1 ef1 ef1
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Fast [Don Gibson 1957]" 4 = 206
  
  \sectStart "Intro"
  
  \bar ".|:"
  \repeat volta 4 {
  \override NoteHead.style = #'slash
  ef4 ef4 ef8 ef8 ef8 ef8 | ef8 ef8 ef8 ef8~ ef8 ef8 ef8^"play 4x" ef8 |
  \revert NoteHead.style
  }
  \repeat volta 2 {

  \sectNoBar "Verse"
  \segnoSign
  
  g4 bf4 bf4 bf4 | g8 bf4 bf8~ bf4 bf4 | af8 bf4 bf8~ bf4 r4 | r2 r4 bf4 |
  \break
  af4 bf4 bf4 bf4 | af8 bf4 bf8~ bf4 r8 ef,8 | g8 bf4 c8~( c8 bf4.) | r2 r4 r8 ef,8 |
  \break
  g4 bf8 bf8~ bf8 bf4. | bf4 bf4 ef4 ef4 | c1 | r1 |
  \break
  bf1~ | bf4 r4 bf4 bf4
  
  \alternative { \volta 1 {
  bf2\bendAfter #-4 r2 | r2 r4 r8 g8 |
  } \volta 2 {
  bf2\bendAfter #-4 r2 | r2 r4 g4 |
  } } }
  \sect "Bridge"

  f4 f8 f8~ f4 f4 | f4 r4 r4 f4 | f4 f8 f8~ f4 f4 | f4 r4 r4 g4 |
  \break
  f4 d4 f4 d8 f8~ | f4 f8 g8~ g8 bf4. | g2 \bendAfter #-4 r2 | r1 |
  \break
  f4 f4 f8 d4 f8~ | f4 r4 r4 f4 | f8 d4 f8~ f4 f4 | f4 r4 r4 f4 |
  \break
  f4 d8 f8~ f8 f4. | f4 f8 g8~ g8 bf4. | bf2 r2 | r4 bf4~ bf4. ef,8 |
  \bar "||"
  
  \xPageBreak

  \sectNoBarNoBreak "Verse"

  g4 bf4 bf4 bf4 | r4 bf8 bf8 bf4 bf4 | af4 bf8 bf8~ bf2 | r2 r4 r8 bf8 |
  \break
  af8 bf4 bf8~ bf4 bf8 af8~ | af4 bf4 c2 | r4 bf4 bf4 g8 bf8~ | bf4 r4 r4 r8 ef,8 |
  \break
  g4 bf8 bf8~ bf4 bf4 | bf4 bf8 ef8~ ef4 ef8 c8~ | c1 | r1 |
  \break
  bf1~ | bf4\bendAfter #-4 r4 bf4 bf4 \textToCoda | bf2\bendAfter #-4 r2 | r1 \dalSegnoSecondEnding |
  \bar "||-|."

  \textCodaBreak

  bf2\bendAfter #-4 r2 | r1 |

  \sect "Outro"
  
  \bar ".|:-||"
  \repeat volta 2 {
  bf1~ | bf4 r4 bf4 bf4 | bf2\bendAfter #-4 r2 | r1 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 2 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
    \vspace #2
    \line { \large { A bad mistake I'm making by just hanging round. } }
    \line { \large { I know that I should have some fun and paint the town. } }
    \line { \large { A lovesick fool that's blind and just can't see.} }
    \line { \large { Oh, lonesome me. } }
  } }
