%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'showLyrics) showLyrics)
  #{ #(set-global-staff-size 16) #} )

\header {
  title = "Well You Needn't"
  subtitle = \instrument
  poet = "Mike Perro"
  composer = "Thelonious Monk"
  copyright = "© 1944 Regent Music Corporation"
}

refrainLyrics = \lyricmode { }

refrainLyricsOne =  \lyricmode {
    "You're" talk -- "in'" so "sweet," well you need -- "n't." You say
    you "won't" "cheat," well you need -- "n't." "You're" tap -- "pin'"
    your "feet," well you need -- "n't." "It's" o -- ver "now," "it's" o
    -- ver "now." "You're" dress -- "in'" with "class," well you need --
    "n't." "You're" hold -- "in'" your "sass," well you need -- "n't."
    You think "you're" a "gas," well you need -- "n't." "It's" o -- ver
    "now," "it's" o -- ver "now." "It's" o -- ver "now," "it's" o -- ver
    "now." You had your "fun," so take a "bow." You ought -- a "know,"
    you lost the "glow," the beat is "slow," the shad -- ows "grow," the
    lights are "low," "it's" time to "go," "let's" close the show
    "down. " "You're" tak -- "in'" off "weight," well you need
    -- "n't." "You're" look -- ing just "great," well you need -- "n't"
    "You're" set -- "tin'" the "bait," well you need -- "n't." "It's" o
    -- ver "now," "it's" o -- ver "now." "You're" " "
    }

refrainLyricsTwo =  \lyricmode {
  _ play -- "in'" a "game," well you need -- "n't." "It's"
    more of the "same," well you need -- "n't." "You're" com -- "in'" up
    "lame," well you need -- "n't." "It's" o -- ver "now," "it's" o --
    ver "now." "You're" bend -- "in'" my "ear," well you need -- "n't."
    "You're" call -- "in'" me "dear," well you need -- "n't." "You're"
    act -- "in'" sin -- "cere," well you need -- "n't." "It's" o -- ver
    "now," "it's" o -- ver "now." "It's" o -- ver "now," "it's" o -- ver
    "now." "Don't" want a "scene," "don't" need a "row." You had your
    "day," a mat -- i -- "nee," you had to "stray," you know they "say,"
    "you're" gon -- na "play," you got to "pay," so find a way "out! "
    You say that "you'll" "try," well you need -- "n't." You
    say you "won't" "lie," well you need -- "n't" "You're" start --
    "in'" to "cry," well you need -- "n't." "It's" o -- ver "now,"
    "it's" o -- ver "now."
    }

refrainChords = \chordmode {
  s8
  
  f1:7 gf1:7 f1:7 gf1:7
  f1:7 gf1:7 f1:7 f1:7

  f1:7 gf1:7 f1:7 gf1:7
  f1:7 gf1:7 f1:7 f1:7

  df1:7 df1:7 d1:7 d1:7
  ef2:7 e2:7 ef2:7 d2:7 df2:7 c2:7 b2:7 c2:7

  f1:7 gf1:7 f1:7 gf1:7
  f1:7 gf1:7 f1:7 f1:7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 105

  \partial 8 gs,8 |

  \xTextMark \markup{ \bold \box "A1" }
  
  \bar ".|:"
  \repeat volta 2 {
  a8 c8 f4-. c'4-- a8 f8 | ef'8 bf8 r4 r4 r8 gs,8 |
  a8 c8 f4-. c'4-- a8 f8 | bf8 gf8 r4 r4 r8 gs,8 |
  a8 c8 f4-. c'4-- a8 f8 | ef'8 bf8 r4 r4 r8 b,8 |
  c8 f8 c4-- r8 b8 c8 f8 | c4-- r4 r4 r8 gs8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  a8 c8 f4-. c'4-- a8 f8 | ef'8 bf8 r4 r4 r8 gs,8 |
  a8 c8 f4-. c'4-- a8 f8 | bf8 gf8 r4 r4 r8 gs,8 |
  a8 c8 f4-. c'4-- a8 f8 | ef'8 bf8 r4 r4 r8 b,8 |
  c8 f8 c4-- r8 b8 c8 f8 | c4-- r4 r4 r8 df8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  ef8 af8 ef4~ ef8 df8 ef8 af8 | ef2 r4 r8 d8 |
  e8 a8 e4~ e8 d8 e8 a8 | e2 r4 r8 ef8 |
  f8 bf8 f8 e8 fs8 b8 fs8 ef8 | f8 bf8 f8 d8 e8 a8 e8 df8 |
  ef8 af8 ef8 c8 d8 g8 d8 c8 | cs8 fs8 cs8 c8 r4 r8 gs8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  a8 c8 f4-. c'4-- a8 f8 | ef'8 bf8 r4 r4 r8 gs,8 |
  a8 c8 f4-. c'4-- a8 f8 | bf8 gf8 r4 r4 r8 gs,8 |
  a8 c8 f4-. c'4-- a8 f8 | ef'8 bf8 r4 r4 r8 b,8 |
  c8 f8 c4-- r8 b8 c8 f8 | c4-- r4 r4 r8
  \override Parentheses.font-size = #5
  \parenthesize gs8
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include
#(if (and (defined? 'showLyrics) showLyrics)
  "../Include/refrain-two-verses.ily"
  "../Include/refrain.ily" )
     
