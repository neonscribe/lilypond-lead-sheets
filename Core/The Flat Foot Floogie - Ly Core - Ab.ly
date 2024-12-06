%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Flat Foot Floogie (with a Floy Floy)"
  subtitle = \instrument
  poet = ""
  composer = "Slim Gaillard, Slam Stewart and Bud Green"
  copyright = "© 1938 Jewel Music Publishing Co., Inc."
}

refrainLyrics = \lyricmode {
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
floy doy, floy doy, floy doy, floy doy.
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
floy doy, floy doy, floy doy, floy doy.
If you're feel -- in' low -- down,
Don't know what to do,
And you want a show -- down,
Here's the on -- ly dance for you:
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
The flat foot floo -- gie with the floy floy,
floy doy, floy doy, floy doy, floy doy.
}

refrainFirehouseChords = \chordmode {
  s8
  af2 af2/c df2 ef2:7 af1 e2:7 ef2:7
  af2 af2/c df2 ef2:7 af2 df2:7 af2 ef2:7
  af2 af2/c df2 ef2:7 af1 e2:7 ef2:7
  af2 af2/c df2 ef2:7 af2 df2:7 af2 ef2:7
  af2:7 ef2:m7 af1:7 df1:7 df4 df4:7 c4:7 b4:7
  bf2:7 f2:m7 bf1:7 ef2:7 bf2:7 e2:7 ef2:7
  af2 af2/c df2 ef2:7 af1 e2:7 ef2:7
  af2 af2/c df2 ef2:7 af2 df2:7 af2 ef2:7
}

refrainDecadeSeriesChords = \chordmode {
  s8
  af2 f2:m7.5- bf4.:m7 ef8:9 ef2:9
  af2 f2:m7.5- e4.:9 ef8:9 ef2:9
  af2 f2:m7.5- bf4.:m7 b2:dim7 af8:6
  af4.:6 b2:dim7 bf8:m7 bf4:m7 b8:dim7 af8:6 af2:6

  af2 f2:m7.5- bf4.:m7 ef8:9 ef2:9
  af2 f2:m7.5- e4.:9 ef8:9 ef2:9
  af2 f2:m7.5- bf4.:m7 b2:dim7 af8:6
  af4.:6 b2:dim7 bf8:m7 bf4:m7 b8:dim7 af8:6 af2:6
  
  af1:7 af1:7 df1:6 df1:6 bf1:7 bf1:7 ef2:7 df2 e2:7 ef2:7

  af2 f2:m7.5- bf4.:m7 ef8:9 ef2:9
  af2 f2:m7.5- e4.:9 ef8:9 ef2:9
  af2 f2:m7.5- bf4.:m7 b2:dim7 af8:6
  af4.:6 b2:dim7 bf8:m7 bf4:m7 b8:dim7 af8:6 af2:6
}

refrainChords = \chordmode {
  \refrainDecadeSeriesChords
}

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing" 4 = 175
  
  \partial 8 ef8 |
  \bar "$"
  \noBreak

  \xTextMark \markup{ \bold \box "A1" }
  
  ef'4 df4 cf8 af8 f8 ef8 |
  \noBreak
  af4. f2 ef8 |
  \noBreak
  ef'4 df4 cf8 af8 f8 ef8 |
  \break
  cf'4. bf2 ef,8 |
  \noBreak
  ef'4 df4 cf8 af8 f8 ef8 |
  \noBreak
  af4. f4. af8 af8~ | 
  \break
  af4 af8 af4. af8 af8~ |
  \noBreak
  af4 af8 af4. r8 ef8 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }

  ef'4 df4 cf8 af8 f8 ef8 | 
  \noBreak
  af4. f2 ef8 |
  \noBreak
  ef'4 df4 cf8 af8 f8 ef8 |
  \noBreak
  cf'4. bf2 ef,8 |
  \break
  ef'4 df4 cf8 af8 f8 ef8 |
  \noBreak
  af4. f4. af8 af8~ | 
  \noBreak
  af4 af8 af4. af8 af8~ |
  \noBreak
  af4 af8 af4. r4 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  bf4 af4 bf8 df4 bf8~ |
  \noBreak
  bf8 bf4.~ bf2 |
  \noBreak
  bf4 af4 bf8 df4 bf8~ |
  \noBreak
  bf2. r4 |
  \break
  c4 bf4 c8 ef4 d8~ |
  \noBreak
  d8 d4.~ d2 |
  \noBreak
  ef8 ef,4. f4 af4 |
  \noBreak
  cf8 af4 bf2 ef,8 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  ef'4 df4 cf8 af8 f8 ef8 |
  \noBreak
  af4. f2 ef8 |
  \noBreak
  ef'4 df4 cf8 af8 f8 ef8 |
  \noBreak
  cf'4. bf2 ef,8 |
  \break
  ef'4 df4 cf8 af8 f8 ef8 |
  \noBreak
  af4. f4. af8 af8~ | 
  \noBreak
  af4 af8 af4. af8 af8~ |
  \noBreak
  af4 af8 af4. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
