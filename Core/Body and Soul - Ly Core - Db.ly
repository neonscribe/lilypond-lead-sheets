%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Body and Soul"
  subtitle = \instrument
  poet = "Edward Heymon, Robert Sour, and Frank Eyton"
  composer = "Johnny Green"
  copyright = \markup \small "© 1930 Chappell & Co., Ltd. and Harms Inc."
}

refrainLyricsOne = \lyricmode {
My heart is sad and lone -- ly,
For you I sigh, for you, dear, on -- ly.
Why have -- n't you seen it?
I'm all for you, Bod -- y and Soul! _

I can't be -- lieve it
its hard to con -- ceive it
that you'd turn a -- way ro -- mance.
Are you pre -- tend -- ing,
It looks like the end -- ing!
Un -- less I could have
one more chance to prove, dear.

My life a wreck you're mak -- ing,
You know I'm yours for just the tak -- ing;
I'd glad -- ly sur -- ren -- der my -- self to you, Bod -- y and Soul!
}

refrainLyricsTwo = \lyricmode {
I spend my days in long -- ing
And won -- d'ring why it's me you're wrong -- ing.
I tell you I mean it,
I'm all for you, Bod -- y and _ Soul!
}

refrainChords = \chordmode {
  ef2:m7 bf2:7.9- ef2:m7 af2:7 df2:maj7 gf2:7 f2:m7 e2:dim7
  ef1:m7 c2:m7.5- f2:7 bf4:m7 \chordSlash 1 ef4:m7 af4:7

  df2:6 bf2:7.9-

  df2:6 e4:m7 a4:7
  
  d2:maj7 e2:m7 d4/fs \chordSlash 1 g4:m7 c4:7 fs4:m7 b4:m7 e4:m7 a4:7 d1:maj7

  d2:m7 g2:7 c2:maj7 ef2:dim7 d2:m7 g2:7 c4:7 b4:7 bf4:7 \chordSlash 1

  ef2:m7 bf2:7.9- ef2:m7 af2:7 df2:maj7 gf2:7 f2:m7 e2:dim7
  ef1:m7 c2:m7.5- f2:7 bf4:m7 \chordSlash 1 ef4:m7 af4:7 df2:6
  \chordInsideParens{ bf2:7.9- }
}

refrainKey = df
bridgeKeyOne = d
bridgeKeyTwo = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Coleman Hawkins 1939]" 4 = 94

  \xTextMark \markup{ \bold \box "A1,A2" }
  \bar ".|:"
  \repeat volta 2 {
  r8 ef8 f8 ef8 f4 ef4 | bf'4 bf2. | r8 af8 bf8 af8 bf4 af4 | ef'4 df4 c4 bf4 |
  r4 df4 bf8 gf4 bf,8 | f'2 ef2 | r8 df8 ef8 f8 af4 \tuplet 3/2 { af8 bf8 e,8 } |
  \alternative { \volta 1 {
  df2 r2 |
  } \volta 2 {
  df2 r2 |
  } } }
  \sect "B"
  %% \key \bridgeKeyOne \major
  
  r8 d8 e8 fs8 a8 a4 a8 | d8 d4 fs,8 a8 a4 g8 | fs8 fs4 d8 e4 cs8 a8~ | a1 |

  %% \key \bridgeKeyTwo \major
  
  r8 d8 e8 f8 a8 a4 g8 | e'8 e4 b8 d8 d4 a8 | c8 c4 a8 b8 b4 g8 | e4 ds4 d4 bf4 |
  
  \sect "A3"
  %% \key \refrainKey \major

  r8 ef8 f8 ef8 f4 ef4 | bf'4 bf2. | r8 af8 bf8 af8 bf4 af4 | ef'4 df4 c4 bf4 |
  r4 df4 bf8 gf4 bf,8 | f'2 ef2 | r8 df8 ef8 f8 af4 \tuplet 3/2 { af8 bf8 e,8 } | df1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
