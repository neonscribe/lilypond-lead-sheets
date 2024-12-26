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
I was dan -- cing with my dar -- ling to the Ten -- nes -- see Waltz
when an old friend I hap -- pen'd to see. __
In -- tro -- duced her to my loved one and while they were dan -- cing
my friend stole my sweet -- heart from me. __

I re -- mem -- ber the night and the Ten -- ne -- ssee Waltz.
Now I know just how much I have lost. __
Yes, I lost my lit -- tle dar -- ling on the night they were play -- ing
the beau -- ti -- ful Ten -- nes -- see Waltz. __
}

refrainChords = \chordmode {
  s4

  c2. c2.:maj7 c2.:7 f2.
  c2. a2.:m7 d2.:m7 g2.:7
  c2. c2.:maj7 c2.:7 f2.
  c2. g2.:7 c2. c2 f4/g

  c2. e2.:7 f2. c2.
  c2. a2.:m7 d2.:m7 g2.:7
  c2. c2.:maj7 c2.:7 f2.
  c2. g2.:7 c2.
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g4:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Waltz" 4 = 112

  \partial 4 c8 d8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  e8 g4. c,8 d8 | e8 g4. c8 d8 | e8 g4. e8( d8) | c4( a4) c8 c8 |
  \break
  c4 g4. e8 | a8 g4. e4 | d2.~ | d2 c8 d8 |

  \sect "A2"

  e8 g4. c,8 d8 | e8 g4. c8( d8) | e8 g4. e8( d8) | c4 a4 c4 |
  \break
  c4 g4. e8 | a8 f4. d4 | c2.~ | c2 c'8 d8 |

  \sect "B"
  
  e4 e4. e8 | d2 e8 d8 | c2 f,8 a8 | g2 c8 c8 |
  \break
  c2 g8 e8 | a8 g4. e4 | d2.~ | d2 c8 d8 |
  
  \sect "A3"
  
  e8 g4. c,8 d8 | e8 g4. d'8 d8 | e8 g4. e8( d8) | c4 a4. c8 |
  \break
  c4 g4 e4 | a4 f4 d4 | c2.~ | c2 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
