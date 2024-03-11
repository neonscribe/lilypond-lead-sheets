%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Tennessee Waltz"
  subtitle = \instrument
  poet = ""
  composer = "Redd Stewart and Pee Wee King"
  copyright = "© 1948 Acuff-Rose Publications"
}

straightEighths = ##t

refrainLyrics = \lyricmode {
I was dan -- cing with my dar -- ling to the Ten -- ne -- ssee Waltz
When an old friend I hap -- pen'd to see. __
In -- tro -- duced her to my loved one and while they were dan -- cing
My friend stole my sweet -- heart from me. __

I re -- mem -- ber the night and the Ten -- ne -- ssee Waltz.
Now I know just how much I have lost.
Yes, I lost my lit -- tle dar -- ling on the night they were play -- ing
The beau -- ti -- ful Ten -- ne -- ssee Waltz.
}

refrainChords = \chordmode {
  s4

  c2. c2. c2.:7 f2.
  c2. c2. g2.:7 g2.:7
  c2. c2. c2.:7 f2.
  c2. g2.:7 c2. c2.

  c2. e2.:7 f2. c2.
  c2. c2. g2.:7 g2.:7
  c2. c2. c2.:7 f2.
  c2. g2.:7 c2. c2.
}

refrainKey = c

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Waltz" 4 = 112

  \partial 4 c8 d8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  e4 g4 c,8 d8 | e4 g4 c8 d8 | e4 g4 e4 | c4( a4) c8 d8 |
  \break
  c4 g4 e4 | a4 g4 e4 | d2.~ | d2 c8 d8 |

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  e4 g4 c,8 d8 | e4 g4 c8( d8) | e4 g4 e4 | c4 a4. c8 |
  \break
  c4 g4 e4 | a4 f4 d4 | c2.~ | c2 c'8 d8 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  e4 g4. e8 | d2 e8 e8 | d4 c4 a4 | g2 a8 b8 |
  \break
  c4 a4 g4 | e4 a4 g4 | d2.~ | d2 c8 d8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }
  
  e4 g4 c,8 d8 | e4 g4 c8 d8 | e4 g4 e4 | c4 a4. c8 |
  \break
  c4 g4 e4 | a4 f4 d4 | c2.~ | c4 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
