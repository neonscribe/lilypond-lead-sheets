%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Undecided"
  subtitle = \instrument
  poet = "Sid Robin"
  composer = "Charlie Shavers"
  copyright = \markup \small { \now " " "© 1939 Leeds Music Corp." }
}

refrainLyrics = \lyricmode {
First you say you do and then you don't, __
and then you say you will and then you won't. __
You're un -- de -- ci -- ded now, so what are you gon -- na do? __
Now you want to play, and then it's no, __
and when you say you'll stay, that's when you go. __
You're un -- de -- ci -- ded now, so what are you gon -- na do? __
I've been sit -- ting on a fence, and it does -- n't make much sense,
'cause you keep me in sus -- pense and you know it. __
Then you pro -- mise to re -- turn.
When you don't, I real -- ly burn.
Well, I guess I'll nev -- er learn, and I show it. __
If you've got a heart and if you're kind, __
then don't keep us a -- part. Make up your mind. __
You're un -- de -- ci -- ded now, so what are you gon -- na do? __
}

refrainChords = \chordmode {
  bf1:maj7 bf1:maj7 ef1:9 ef1:9
  c1:7 c2:m7 gf4:7 f4:7 bf2:6 g2:m7 c2:m7 f2:7

  bf1:maj7 bf1:maj7 ef1:9 ef1:9
  c1:7 c2:m7 gf4:7 f4:7 bf1:6 bf1:6

  bf1:7 bf1:7 ef1 ef1 c1:7 c1:7 f1:7 f1:7

  bf1:maj7 bf1:maj7 ef1:9 ef1:9
  c1:7 c2:m7 gf4:7 f4:7 bf1:6

  \chordOpenParen{ c2:m7 }
  \chordCloseParen{ f2:7 }
}

refrainKey = bf

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Up [Ella Fitzgerald with Chick Webb 1939]" 4 = 206

  \xTextMark \markup{ \bold \box "A1" }
  
  a8 bf8 a8 bf8 g4. bf8 | a8 bf8 g4~ g8 g4. |
  a8 bf8 a8 bf8 g4. bf8 | a8 bf8 g4~ g8 g4. |
  a8 bf8 a8 bf8 g4. bf8 | c8 c8 bf4 df4 c8 bf8~ | bf1 | r1 |

  \sect "A2"
  
  a8 bf8 a8 bf8 g4. bf8 | a8 bf8 g4~ g8 g4. |
  a8 bf8 a8 bf8 g4. bf8 | a8 bf8 g4~ g8 g4. |
  a8 bf8 a8 bf8 g4. bf8 | c8 c8 bf4 df4 c8 bf8~ | bf1~ | bf2 r4 bf8 bf8 |

  \sect "B"
  
  c8 c8 bf8 af8 bf4 af8 bf8 | c8 c8 bf8 af8 bf8 af4 bf8 |
  c8 c8 bf8 g8 bf4 g8 bf8 | c8 bf4.~ bf4 g8 bf8 |
  c8 c8 bf8 g8 bf4 g8 bf8 | c8 c8 bf8 g8 bf8 g4 bf8 |
  c8 c8 a8 f8 a4 f8 a8 | c8 f,4.~ f2 |
  
  \sect "A3"

  a8 bf8 a8 bf8 g4. bf8 | a8 bf8 g4~ g8 g4. |
  a8 bf8 a8 bf8 g4. bf8 | a8 bf8 g4~ g8 g4. |
  a8 bf8 a8 bf8 g4. bf8 | c8 c8 bf4 df4 c8 bf8~ | bf1~ | bf2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
