%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Oh, Lonesome Me (in 4, Don Gibson Style)"
  subtitle = \instrument
  poet = ""
  composer = "Don Gibson"
  copyright = \markup \small { \now " " "© 1957 Acuff Rose Music" }
}

introChords = \chordmode {
  ef1 ef1 ef1 ef1
}

introKey = ef

introMelody = \relative f' {
  \time 2/2
  \key \introKey \major
  \clef \whatClef
  \tempo "Medium Fast [Don Gibson 1957]" 4 = 206
  
  \sectStart "Intro"
  
  \bar ".|:"
  \repeat volta 2 {
  \override NoteHead.style = #'slash
  ef4 ef4 ef8 ef8 ef8 ef8 | ef8 ef8 ef8 ef8~ ef8 ef8 ef8 ef8 |
  ef4 ef4 ef8 ef8 ef8 ef8 | ef8 ef8 ef8 ef8~ ef8 ef8 ef8 ef8 |
  \revert NoteHead.style
  }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
\set stanza = "1. "
_ Ev  -- 'ry -- bod -- y's go -- in' out __ and hav -- in' fun. __
I'm just a fool for stay -- in' home __ and hav -- in' none. __
I can't get o -- ver how she set me free.
Oh, __ lone -- some me.

I'll bet she's not __ like me;
she's out and fan -- cy free.
She's flirt -- ing with the boys __ with all her charms.
I still love her so, __
and broth -- er don't __ you know?
I'd wel -- come her __ right back here in __ my arms.
}

refrainObjectGenderMaleLyrics = \lyricmode {
\set stanza = "1. "
_ Ev  -- 'ry -- bod -- y's go -- in' out __ and hav -- in' fun. __
I'm just a fool for stay -- in' home __ and hav -- in' none. __
I can't get o -- ver how she set me free.
Oh, __ lone -- some me.

I'll bet she's not __ like me;
she's out and fan -- cy free.
She's flirt -- ing with the boys __ with all her charms.
I still love her so, __
and broth -- er don't __ you know?
I'd wel -- come her __ right back here in __ my arms.
}

refrainLyricsTwo = \lyricmode {
\set stanza = "2. "
A bad mis -- take I'm mak -- in' by just hang -- in' 'round.
I know that I should have some fun and paint the town.
A love -- sick fool that's blind and just can't see.
}

refrainLyricsThree = \lyricmode {
\set stanza = "3,4. "
There must be some way I can lose these lone -- some blues. __
For -- get a -- bout __ the past and find some -- bod -- y new. __
I've thought of ev -- 'ry -- thing from A __ to Z.
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  s4
  ef1 ef1 bf1:7 bf1:7
  bf1:7 bf1:7 ef1 ef1
  ef1 ef1:7 af1 af1
  bf1 bf1 ef1 ef1
  
  s4
  bf1 bf1 f1:7 f1:7
  f1:7 f1:7 bf1 bf1
  bf1 bf1 f1:7 f1:7
  f1:7 f1:7 bf1 bf1
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef

  \sectNoBar "Verse"
  
  \partial 4 g4 |
  \bar "||"

  g4 bf4 bf4 bf4 | g8 bf4 bf8~ bf4 bf4 | af8 bf4 bf8~ bf4 r4 | r2 r4 bf4 |
  \break
  af4 bf4 bf4 bf4 | af8 bf4 bf8~ bf4 r8 ef,8 | g8 bf4 c8~( c8 bf4.) | r2 r4 r8 ef,8 |
  \break
  g4 bf8 bf8~ bf8 bf4. | bf4 bf4 ef4 ef4 | c1 | r1 |
  \break
  bf1~ | bf4 r4 bf4 bf4
  bf2\bendAfter #-4 r2 | r1 |
  \bar "||-|."

  \sectNoBar "Bridge"

  \partial 4 g4 |
  \bar "||"

  f4 f8 f8~ f4 f4 | f4 r4 r4 f4 | f4 f8 f8~ f4 f4 | f4 r4 r4 g4 |
  \break
  f4 d4 f4 d8 f8~ | f4 f8 g8~ g8 bf4. | g2 \bendAfter #-4 r2 | r1 |
  \break
  f4 f4 f8 d4 f8~ | f4 r4 r4 f4 | f8 d4 f8~ f4 f4 | f4 r4 r4 f4 |
  \break
  f4 d8 f8~ f8 f4. | f4 f8 g8~ g8 bf4. | bf2 r2 | r1 |
  \bar "|."

  \xPageBreak
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Bridge } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Bridge } }
   \vspace #4
   \line { \large { Verse 4 } }
   \vspace #4
   \line { \large { Tag } }
 }
  \column
  {
    \hspace #4
    }
  \column 
  {
    \vspace #2
    \line { \large { Ev 'rybody's goin' out and havin' fun. } }
    \line { \large { I'm just a fool for stayin' home and havin' none. } }
    \line { \large { I can't get over how she set me free. } }
    \line { \large { Oh, lonesome me. } }
    \vspace #1
    \line { \large { A bad mistake I'm making by just hanging round. } }
    \line { \large { I know that I should have some fun and paint the town. } }
    \line { \large { A lovesick fool that's blind and just can't see.} }
    \line { \large { Oh, lonesome me. } }
    \vspace #1
    \line { \large { I'll bet she's not like me. She's out and fan -- cy free. } }
    \line { \large { She's flirt -- ing with the boys with all her charms. } }
    \line { \large { I still love her so, and broth -- er don't you know? } }
    \line { \large { I'd wel -- come her right back here in my arms. } }
    \vspace #1
    \line { \large { There must be some way I can lose these lonesome blues. } }
    \line { \large { Forget about the past and find somebody new. } }
    \line { \large { I've thought of everything from A to Z. } }
    \line { \large { Oh, lonesome me. } }
    \vspace #1
    \line { \large { \italic { (Verse form) } } }
    \vspace #1
    \line { \large { I'll bet she's not like me. She's out and fan -- cy free. } }
    \line { \large { She's flirt -- ing with the boys with all her charms. } }
    \line { \large { I still love her so, and broth -- er don't you know? } }
    \line { \large { I'd wel -- come her right back here in my arms. } }
    \vspace #1
    \line { \large { There must be some way I can lose these lonesome blues. } }
    \line { \large { Forget about the past and find somebody new. } }
    \line { \large { I've thought of everything from A to Z. } }
    \line { \large { Oh, lonesome me. } }
    \vspace #1
    \line { \large { Oh, lonesome me. } }
    \line { \large { Oh, lonesome me. } }
  }
}




