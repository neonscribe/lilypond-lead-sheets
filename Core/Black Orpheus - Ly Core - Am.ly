%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Black Orpheus (Manha de Carnival, A Day in the Life of a Fool)"
  subtitle = \instrument
  poet = "Carl Sigmand"
  composer = "Luis Bonfa"
  copyright = "© 1968 Chappell & Co."
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
  A day in the life of a fool, __
  A sad and a long, lone -- ly day. __
  I walk the a -- ve -- nue, __ hop -- ing to run in -- to __
  the wel -- come sight of you __ com -- ing my way. __
  I'll stop just a -- cross from your door, __
  But you're nev -- er there an -- y more. __
  So back to my room and here in the gloom
  I cry tears of good -- bye. __ (A)

  tears of good -- bye. __
  Till you come back to me, that's the way it will be,
  Ev -- 'ry day in the life of a fool. __
}

refrainChords = \chordmode {
  s4

  a1:m b2:m7.5- e2:7.9- a1:m b2:m7.5- e2:7.9-
  a1:m d2:m9 g2:13 c1:maj7 cs1:dim7
  d1:m9 g1:13 c1:maj7 f1:maj7
  b1:m7.5- e1:7.9- a1:m e1:7.9+

  a1:m b2:m7.5- e2:7.9- a1:m b2:m7.5- e2:7.9-
  e1:m7.5- a1:7.9- d1:m d1:m
  d1:m7 b2:m7.5- e2:7.9- a2:m a2:m7/g f1:maj7
  b1:m7.5- e1:7.9- a1:m b2:m7.5- e2:7.9-

  e1:7.9- a1:m a1:m 
  d2:m7 a2:m7 d2:m7 a2:m7 d2:m7 e2:m7 a1:m a1:m
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Bossa Nova" 4 = 110

  \partial 4 e4 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  c'2. b8 a8 | a2. gs8 b8 | e,1~ | e2. e4 |
  \break
  c'2. b8 a8 | a2. g8 b8 | e,1~ | e2 r8 e8 f8 g8 |
  
  \sect "B"
  
  a4. d,8 d2~ | d2 r8 d8 e8 f8 | g4. c,8 c2~ | c2 r8 c8 d8 e8 |
  \break
  f4. b,8 b2~ | b2 r8 b8 c8 d8 | e1~ | e2. e4 |
  
  \sect "A2"
  
  c'2. b8 a8 | a2. gs8 b8 | e,1~ | e2. e4 |
  \break
  bf'2. a8 g8 | g2. f8 e8 | a1~ | a2. d,4 |
  
  \sect "C"

  d2. e8 f8 | b1 | r4 c,4 c4 d8 e8 | a2. gs4 |
  \break
  e1 \textToCodaLastTime | r2 e4 gs8 b8 | a1~ | a2. \parenthesize e4 |

  \bar "||-|."

  \textCodaBreak

  r2 e4 gs8 b8 | a1~ | a2. a8 b8 |
  c4 d8 c8 b4 a8 b8 |
  \break
  c4 d8 c8 b4 a8 b8 | 
  c4 d8 c8 b4 a8 g8 | a1~ | a2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
