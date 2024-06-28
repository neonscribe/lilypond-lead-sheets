%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (or (and (defined? 'printNoteNames) printNoteNames)
      (string=? instrument "Blossom Dearie Key"))
  (set-global-staff-size 16))

\header {
  title = "Wait Till You See Her (Him)"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = "© 1942 Chappell & Co."
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  #{
\lyricmode {
Wait till you see him,
see how he looks,
Wait till you hear him laugh. __
Paint -- ers of paint -- ings,
writ -- ers of books,
Nev -- er could tell the half. __
Wait till you feel
The warmth of his glance,
Pen -- sive and sweet and wise. __
All of it love -- ly,
All of it thril -- ling;
I'll nev -- er be will -- ing to free him,
When you see him,
You won't be -- lieve your eyes. __
}
  #}
  #{
\lyricmode {
Wait till you see her,
see how she looks,
Wait till you hear her laugh. __
Paint -- ers of paint -- ings,
writ -- ers of books,
Nev -- er could tell the half. __
Wait till you feel
The warmth of her glance,
Pen -- sive and sweet and wise. __
All of it love -- ly,
All of it thril -- ling;
I'll nev -- er be will -- ing to free her,
When you see her,
You won't be -- lieve your eyes. __
}
  #}
)

refrainChords = \chordmode {
  f2.:m7 bf2.:7 ef2.:maj7 c2.:m7
  f2.:m7 bf2.:7 g2.:m7 c2.:7

  f2.:m7 bf2.:7 ef2.:maj7 c2.:m7
  f2.:m7 d2.:7 g2.:m7 g2.:m7
  
  c2.:m7 f2.:7 bf2.:maj7 g2.:m7
  c2.:m7 g2.:7.5+ g2.:m7 c2.:9
  
  f2.:m7 bf2.:7 ef2.:6 g2.:m7/d
  c2.:m7 c2.:m7/bf a2.:m7.5- af2.:dim7
  
  ef2.:/g gf2.:dim7 bf2.:7/f e2.:dim7
  f2.:m7 bf2.:7 ef2.:6 ef2.:6
}

refrainKey = ef

refrainMelody = \relative f'' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Med. Jazz Waltz"

  \xTextMark \markup{ \bold \box "A1" }
  
  c4 c4. af8 | g2 f4 | ef4 ef4. f8 | c2. |
  \break
  c4 ef4. af8 | c2 c4 | bf2.~ | bf2. |

  \break
  \bar "||"
  \xTextMark \markup{ \bold \box "A2" }

  c4 c4. af8 | g2 f4 | ef4 ef4. f8 | c2. |
  \break
  c4 ef4. af8 | c2 c4 | bf2.~ | bf2. |

  \break
  \bar "||"
  \xTextMark \markup{ \bold \box "B" }
  
  ef4 ef4. c8 | bf2 a4 | g4 g4. a8 | d,2. |
  \break
  ef4 g4. bf8 | ef2 ef4 | d2.~ | d2. |

  \break
  \xTextMark \markup{ \bold \box "C" }
  \bar "||"

  c4 c4. af8 | g2 f4 | ef4 ef4. f8 | g4 g4. af8 |
  \break
  bf4 bf4. c8 | d4 d4. ef8 | f2. | d2. |
  
  \break
  ef2. | c2. | d2. | bf2. |
  \break
  c4 c4. af8 | g2 f4 | ef2.~ | ef2 r4 |
  

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
