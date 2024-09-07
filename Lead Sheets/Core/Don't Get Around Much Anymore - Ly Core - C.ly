%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Don't Get Around Much Anymore"
  subtitle = \instrument
  poet = "Bob Russell"
  composer = "Duke Ellington"
  copyright = "© 1942 Robbins Music Corp."
}

refrainLyrics = \lyricmode {
  Missed the Sat -- ur -- day dance,
  Heard they crowd -- ed the floor,
  Could -- n't bear it with -- out you,
  Don't get a -- round much an -- y more.
  Thought I'd vis -- it the club,
  Got as far as the door,
  They'd have asked me a -- bout you,
  Don't get a -- round much an -- y more.
  Dar -- ling, I guess my mind's more at ease,
  But nev -- er -- the -- less, why stir up mem -- o -- ries?
  Been in -- vit -- ed on dates,
  Might have gone but what for?
  Aw -- f'lly dif -- f'rent with -- out you,
  Don't get a -- round much an -- y more.
}

refrainChords = \chordmode {
  s1

  s8 c4.:maj7 d4:m7 ef8:dim7 c8/e
  
  r1

  s8 c4.:7 b4:7 bf8:7 a8:7

  r1
  
  d1:m7 g1:7 c1:6 g4:7 r2.

  s8 c4.:maj7 d4:m7 ef8:dim7 c8/e
  
  r1

  s8 c4.:7 b4:7 bf8:7 a8:7

  r1
  
  d1:m7 g1:7 c1:6 c1:7

  f1:6 fs1:dim7 c1:6/g c1:7
  f1:6 fs2:m7.5- b2:7.9- e2:m7 ef2:dim7 d4:m7 r2.

  s8 c4.:maj7 d4:m7 ef8:dim7 c8/e
  
  r1

  s8 c4.:7 b4:7 bf8:7 a8:7

  r1
  
  d1:m7 g1:7 c2:6
  
  \chordOpenParen{ ef2:7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative c' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 115

  r8 e4 d8 c8 g8 f8 e8~ |
  \bar "||"
  \xTextMark \markup{ \bold \box A1 }
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	b'8\rest e,4. f4 fs8 g8 }
    }
    { \voiceOne
      e1 
    }
  >>
  \oneVoice
  |
  r8 e'4 d8 c g f e~ |
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	b'8\rest g4. fs4 f8 e8 }
    }
    { \voiceOne
      e1
    }
  >>
  \oneVoice
  |
  r8 g4 f8 e d c c'~ |
  c4. a8~ a2 |
  r8 e8 f fs g c, ds e | c1 |
  r8 e'4 d8 c g f e~ |
  \bar "||"
  \break
  \xTextMark \markup{ \bold \box A2 }
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	b'8\rest e,4. f4 fs8 g8 }
    }
    { \voiceOne
      e1 
    }
  >>
  \oneVoice
  |
  r8 e'4 d8 c g f e~ |
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	b'8\rest g4. fs4 f8 e8 }
    }
    { \voiceOne
      e1
    }
  >>
  \oneVoice
  |
  r8 g4 f8 e d c c'~ | 
  c4. a8~ a2 |
  r8 e8 f fs g c, ds e | c1~ | c2. r4

  \bar "||"
  \break
  \xTextMark \markup{ \bold \box B }

  d'2 c8 a4 c8~ | c2. c4 | d2 c8 g4 e8~ | e2. c'4 |
  d2 c8 a4 c8~ | c1 | r8 b8 b b b a4 g8~ | g8 e'4 d8 c g f e~

  \bar "||"
  \break
  \xTextMark \markup{ \bold \box C }

  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	b'8\rest e,4. f4 fs8 g8 }
    }
    { \voiceOne
      e1 
    }
  >>
  \oneVoice
  |
  r8 e'4 d8 c g f e~ |
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	b'8\rest g4. fs4 f8 e8 }
    }
    { \voiceOne
      e1
    }
  >>
  \oneVoice
  |

  r8 g4 f8 e d c c'~ |
  c4. a8~ a2 |
  \textToCodaLastTime
  r8 e8 f fs g c, ds e |
  c1 |
  r1 |
  \bar "|."
  \pageBreak
}

codaLyrics = \lyricmode {
  Don't get a -- round much an -- y more.
  Aw -- f'lly dif -- f'rent with -- out you,
  Don't get a -- round much an -- y more.
}

codaChords = \chordmode {
  g1:7 e1:m7 a1:7 d1:m7 g1:7 c1:6
}

codaKey = c

codaMelody = \relative c' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  \textCoda
  r8 e,8 f fs g c, ds e |
  e1 |
  r8 g4 f8 e d c c'~ |
  c4. a8~ a2 |
  r8 e8 f fs g c, ds e |
  c8
  \magnifyMusic 0.63 {
    c4. c4 c8 c8 | }
  \bar "|."
}

soloChords = \chordmode {
  c1:maj7 c1:maj7 c2:maj7 bf2:7 a1:7
  d1:m7 g1:7 c1:6 g1:7
  
  c1:maj7 c1:maj7 c2:maj7 bf2:7 a1:7
  d1:m7 g1:7 c1:6 g2:m7 c2:7
  
  f1:6 fs1:dim7 c1:maj7 c1:7
  f1:6 fs2:m7.5- b2:7.9- e2:m7 ef2:dim7 d2:m7 g2:7
  
  c1:maj7 c1:maj7 c2:maj7 bf2:7 a1:7
  d1:m7 g1:7
  c2:6 ef2:7 d2:m7 g2:7

  c1:6 c1:7
}

soloKey = c

soloMelody = \relative f' {
  \time 4/4
  \key \soloKey \major
  \clef \whatClef

  \xTextMark \markup{ "Solos" \bold \box "A1" }

  \bar ".|:"
  
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \bar "||"
  \break
  \xTextMark \markup{ \bold \box "A2" }
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||"
  \break
  \xTextMark \markup{ \bold \box "B" }
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||"
  \break
  \xTextMark \markup{ \bold \box "C" }
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | }
  \alternative {
  { \volta 1 \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | }
  { \volta 2 \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq^\markup{ "to " \bold \box "B" } | }
  }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}


\include "../Include/refrain-no-note-names.ily"
\include "../Include/solo.ily"
\include "../Include/coda.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { vocal only cold open, vocal chorus } }
    \line { \huge { clarinet solo full chorus, guitar solo full chorus } }
    \line { \huge { vocal B to coda, instrumental tag in time } }
  }
}

\include "../Include/notes.ily"
