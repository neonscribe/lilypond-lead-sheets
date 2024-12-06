%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Misty"
  subtitle = \instrument
  poet = "Johnny Burke"
  composer = "Erroll Garner"
  copyright = "© 1954 Vernon Music Corporation"
}

refrainLyrics = \lyricmode {
Look at me, I'm as help -- less as a kit -- ten up a tree,
and I feel like I'm cling -- ing to a cloud;
I can't __ un -- der -- stand, __
I get mist -- y just hold -- ing your hand. __
Walk my way and a thou -- sand vi -- o lins be -- gin to play,
Or it might be the sound of your hel -- lo,
that mu -- sic I hear, __
I get mist -- y the mo -- ment you're near.
You can say that you're lead -- ing me on, __
but it's just what I want you to do; __
Don't you no -- tice how hope -- less -- ly I'm lost, __
that's why I'm fol -- low -- ing you. __
On my own, would I wan -- der thru this won -- der -- land a -- lone,
nev -- er know -- ing my right foot from my left,
my hat __ from my glove, __
I'm too mist -- y and too much in love.
}

refrainChords = \chordmode {
  s4
  
  ef1:maj7 bf2:m7 ef2:7 af1:maj7 af2:m7 df2:7
  ef2:maj7 c2:m7 f2:m7 bf2:7 g2:m7 c2:7 f2:m7 bf2:7

  ef1:maj7 bf2:m7 ef2:7 af1:maj7 af2:m7 df2:7
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:6 df2:9 ef1:maj7
  
  bf1:m7 ef1:7.9- af1:maj7 af1:maj7
  a1:m7 d2:7 f2:7 g2:m7 c2:7.9- f2:m7 bf2:7

  ef1:maj7 bf2:m7 ef2:7 af1:maj7 af2:m7 df2:7
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef2:6
  \chordOpenParen{ c2:m7 }
  f2:m7
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad"

  \partial 4 bf8 g8 |

  \xTextMark \markup{ \bold \box "A1" }
  
  d2. bf8 c8 | df8 c'8 c8 c8 c8 bf8 g8 ef8 |
  c2 \tuplet 3/2 { r8 g8 af8 } \tuplet 3/2 { c8 ef8 g8 } |
  bf8 bf8 bf8 af8 bf4. af8 |
  \break
  g4~ \tuplet 3/2 { g8 af8 bf8 } ef,4~ \tuplet 3/2 { ef8 f8 g8 } |
  af8 c,4 c8 \tuplet 3/2 { d4 ef4 f4 } | g1~ | g2. bf8 g8 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  d2. bf8 c8 | df8 c'8 c8 c8 c8 bf8 g8 ef8 |
  c2 \tuplet 3/2 { r8 g8 af8 } \tuplet 3/2 { c8 ef8 g8 } |
  bf8 bf8 bf8 af8 bf4. af8 |
  \break
  g4~ \tuplet 3/2 { g8 af8 bf8 } ef,4~ \tuplet 3/2 { ef8 f8 g8 } |
  af8 c,4 c8 \tuplet 3/2 { d4 ef4 f4 } | g1 |
  \tuplet 3/2 { r4 ef4 f4 } \tuplet 3/2 { g4 bf4 c4 } |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  df8 df8 df8 df8~ df2~ | df4 df8 ef8 \tuplet 3/2 { ff4 ef4 df4 } |
  c8 c8 c8 c8~ c2 | \tuplet 3/2 { r4 ef,4 f4 } \tuplet 3/2 { af4 bf4 c4 } |
  \break
  d8 d8 d8 c8 d2~ | d8 d8 d8 c8 \tuplet 3/2 { f4 d4 c4 } | bf1~ | bf2. bf8 g8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  d2. bf8 c8 | df8 c'8 c8 c8 c8 bf8 g8 ef8 |
  c2 \tuplet 3/2 { r8 g8 af8 } \tuplet 3/2 { c8 ef8 g8 } |
  bf8 bf8 bf8 af8 bf4. af8 |
  \break
  g4~ \tuplet 3/2 { g8 af8 bf8 } ef,4~ \tuplet 3/2 { ef8 f8 g8 } |
  af8 c,4 c8 \tuplet 3/2 { d4 ef4 f4 } | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
