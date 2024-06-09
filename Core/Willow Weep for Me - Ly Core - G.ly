%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Willow Weep for Me"
  subtitle = \instrument
  poet = ""
  composer = "Ann Ronnell"
  copyright = "© 1932 Irving Berlin Inc."
}

refrainLyricsOne = \lyricmode {
Wil -- low weep for me, __ wil -- low weep for me, __
Bend your branch -- es green __ a -- long the stream that runs to sea, __
Lis -- ten to my plea,
Lis -- ten wil -- low and weep for me. __

_

Whis -- per to the wind, __ and say that love has sinned, __
To leave my heart a -- break -- ing and mak -- ing a moan, __
Mur -- mur to the night, __ to hide her star -- ry light, __
So none will find me sigh -- ing and cry -- ing all a -- lone. __

Oh, weep -- ing wil -- low tree, __
Weep in sym -- path -- y, __
Bend your branch -- es down a -- long the ground and cov -- er me, __
When the sha -- dows fall, bend oh wil -- low and weep for me. __
}

refrainLyricsTwo = \lyricmode {
Gone my lov -- er's dream, __ love -- ly sum -- mer dream, __
Gone and left me here __ to weep my tears in -- to the stream, __
Sad as I can be,
Hear me wil -- low and weep for me. __
}

refrainChords = \chordmode {
  g2:7 c2:7 g2:7 c2:7 g2:7 a4:m7 bf4:dim7 g2:6/b d4:m7 df4:7
  c2:7 df2:7 c2:7 a4:m7 d4:7 g2:7 c2:7
  
  g2:7 d2:7.5+
  
  g1:7
  
  c4:m c4:m/bf a4:m7.5- d4:7.9- g2:m g2:7 g4:m7 c4:7 f4:m7 bf4:7 ef4:m7 af4:7 d4:m7 g4:7
  c4:m c4:m/bf a4:m7.5- d4:7.9- g2:m g2:7 g4:m7 c4:7 f4:m7 bf4:7 ef4:m7 af4:7 a4:m7 d4:7

  g2:7 c2:7 g2:7 c2:7 g2:7 a4:m7 bf4:dim7 g2:6/b d4:m7 df4:7
  c2:7 df2:7 c2:7 a4:m7 d4:7 g2:7 c2:7 g2:7
  \chordInsideParens{ d2:7.5+ }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 110

  \textMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  d'8 d,8 \tuplet 3/2 { e8 g8 e8~ } e2 | d'8 d,8 \tuplet 3/2 { e8 g8 e8~ } e2 | 
  d'8 d,8 \tuplet 3/2 { e8 g8 e8~ } e8 d8 \tuplet 3/2 { e8 g8 b8~ } | b8 g8 \tuplet 3/2 { e8 g8 e8~ } e2 |
  \break
  d'8 c8 bf8 a8 g2 | d'8 c8 \tuplet 3/2 { bf8 a8 g8 } d'8 d,4 d8~ |
  d1~ |
  } \alternative { {
  d1 |
  } {
  d1\repeatTie |
  } }
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  g8 c8 \tuplet 3/2 { d8 c8 ef8~ } ef4. c8 | bf8 g8 \tuplet 3/2 { bf8 g8 b8~ } b4. g8 |
  c8 c8 d8 c8 bf8 c4 bf8 | af8 bf8 af8 g8~ g4 r4 |
  \break
  g8 c8 \tuplet 3/2 { d8 c8 ef8~ } ef4. c8 | bf8 g8 \tuplet 3/2 { bf8 g8 b8~ } b4. g8 |
  c8 c8 d8 c8 bf8 c4 bf8 | af8 bf8 \tuplet 3/2 { c8 ef8 d8~ } d4 d4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  d8 d,8 \tuplet 3/2 { e8 g8 e8~ } e2 | d'8 d,8 \tuplet 3/2 { e8 g8 e8~ } e2 | 
  d'8 d,8 \tuplet 3/2 { e8 g8 e8~ } e8 d8 \tuplet 3/2 { e8 g8 b8~ } | b8 g8 \tuplet 3/2 { e8 g8 e8~ } e2 |
  \break
  d'8 c8 bf8 a8 g2 | d'8 c8 \tuplet 3/2 { bf8 a8 g8 } d'8 d,4 d8~ |
  d1~ | d1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
