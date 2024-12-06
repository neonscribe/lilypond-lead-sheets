%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Easy Street"
  subtitle = \instrument
  composer = "Alan Rankin Jones"
  copyright = "© 1941 Beechwood Music Corp."
}

refrainLyrics = \lyricmode {
  Eas -- y Street, __ I'd love to live on Eas -- y Street, __
  no -- bod -- y works on Eas -- y Street, __
  just sit a -- round all day,
  just sit and play the hors -- es,
  
  Life is sweet __ for folks who live on Eas -- y Street, __
  no week -- ly pay -- ments you must meet __
  that make your hair turn grey! __
  
  When op -- por -- tun -- i -- ty comes knock -- in'
  you just keep on with your rock -- in',
  you know your for -- tune's been made. __
  Now, if the sun makes you per -- spi -- re
  there's a fel -- low you can hi -- re
  to plant trees so you can have shade on
  
  Eas -- y Street, __ I'm tell -- ing ev -- 'ry -- one I meet, __
  if I could live on 
  Eas -- y Street __
  I would -- n't want no job to -- day, so please go 'way.

  Eas -- y Street __
  I would -- n't want no job to -- day,
  I would -- n't want no job to -- day, so please go 'way.
}

refrainChords = \chordmode {
  c4:maj7 e8:7 a2*5/4:7 d2:m7 g2:7 c2:maj7 c2:7 f2:m7 bf2:7
  e2:m7 a2:7 d2:7 g2:7 c2:maj7 a2:7 d2:7 g2:7

  c4:maj7 e8:7 a2*5/4:7 d2:m7 g2:7 c2:maj7 c2:7 f2:m7 bf2:7
  e2:m7 a2:7 d2:7 g2:7 c1:7 c1:7
  
  f1:maj7 f2:m7 bf2:7 c2:maj7 a2:m7 g2:m7 c2:7
  f1:maj7 f2:m7 bf2:7 a2:m7 d2:7 d2:m7 g2:7.5+

  c4:maj7 e8:7 a2*5/4:7 d2:m7 g2:7 c2:maj7 c2:7 f2:m7 bf2:7

  e2:m7 a2:7 af2:7 g2:7 c1:6 d2:7 g2:7

  e2:m7 a2:7 af2:7 g2:7 c1:6 af2:7 g2:7 c2:6 f2:m6 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 130

  \xTextMark \markup{ \bold \box "A1" }
  
  e4 b8 a8~ a2 | r8 a'8 g8 f8 e8 d4. | c'4 e,8 e8~ e2 | r8 af8 g8 f8 ef8 d4. |
  g4 b,8 a8~ a2 | r8 c'8 b8 a8 g8 e4. | d2. r8 e8 | e8 e8 ds8 e8 c8 d4.|

  \bar "$"
  \break
 
  \xTextMark \markup{ \bold \box "A2" }

  e4 b8 a8~ a2 | r8 a'8 g8 f8 e8 d4. | c'4 e,8 e8~ e2 | r8 af8 g8 f8 ef8 d4. |
  g4 b,8 a8~ a2 | r8 c'8 b8 a8 g8 e4. | d1~ | d2~ d8 c8 d8 e8 |

  \bar "$"
  \break
  
  \xTextMark \markup{ \bold \box "B" }
  
  g8 g8 g8 g8 g8 f8 c8 d8 | g8 g8 g8 g8 g8 f8 c8 d8 | e4 e4 e4 b8 d8~ | d2 r8 c8 d8 e8 |
  g8 g8 g8 g8 g8 f8 c8 d8 | g8 g8 g8 g8 g8 f8 c8 d8 | e4 e8 c'4 b8 a4 | d,2 ds2 |

  \bar "$"
  \break
  
  \xTextMark \markup{ \bold \box "A3" }

  e4 b8 a8~ a2 | r8 a'8 g8 f8 e8 d4. | c'4 e,8 e8~ e2 | r8 af8 g8 f8 ef8 d4. \textToCodaLastTime |
  g4 b,8 a8~ a4. c'8 | c8 c8 bf8 af8 g4 ef4 | c4. d8 c4. d8 | c2. r4 |
  
  \bar "||-|."

  \textCodaBreak

  g'4 b,8 a8~ a4. c'8 | c8 c8 bf8 af8 g4 ef4 | e2.. c'8 |
  c8 c8 bf8 af8 g4 ef4 | c4. d8 c4. d8 | c2. r4 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
