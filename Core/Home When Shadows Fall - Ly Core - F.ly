%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 17) #}
)

\header {
  title =  "Home (When Shadows Fall)"
  subtitle = \instrument
  poet = "Frank Clarkson"
  composer =  "Peter Van Steeden, Jeff Clarkson"
  copyright = \markup \small { \now " " "© 1931 Songcastle Music" }
}

refrainLyrics =  \lyricmode {
  When sha -- dows fall, and trees whis -- per day is end -- ing, My
  thoughts are ev -- er wend -- ing home. When crick --
  ets call, my heart is for -- ev -- er yearn -- ing, Once more to
  be re -- turn -- ing home. When the hills con -- ceal the
  set -- ting sun, Stars be -- gin a -- peep -- ing one by
  one. Night cov -- ers all, and though for -- tune may
  for -- sake me,
  Sweet dreams will ev -- er take me home.
  Sweet dreams will ev -- er take me home.
}

refrainChords = \chordmode {
  \transpose ef f {
    ef1 d1:7 f1:m g2:m bf2:7
    f1:m g2:m bf2:7 ef2 c2:m af2 bf2:7

    ef1 d1:7 f1:m g2:m bf2:7
    f1:m g2:m bf2:7 ef2 af2:7 ef1

    af1:m af1:m ef2 c2:m ef1
    af1:m af1:m bf2:7 af2 bf2:7 bf2:7.5+

    ef1 d1:7 f1:m g2:m bf2:7
    f1:m g2:m bf2:7 ef2 ef2:dim7 f2:m bf2:7
    
    f1:m g2:m bf2:7.5+ ef2 af2:7 ef1
  }
}

refrainKey = f

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody =  \relative f' {
  \time 2/2 
  \clef \whatClef
  \key \refrainKey \major
  \tempo "Medium [Helen Humes 1961]" 4 = 110

  \xTextMark \markup{ \bold \box "A1" }
  c'2 a4 c4 | e2. d4 | bf2 d,8 ds8 e8 c'8 | a2 g2 |
  \break
  bf2 d,8 ds8 e8 c'8 | a2 g2 | a1~ | a1 |
  \sect "A2"
  c2 a4 c4 | e2. d4 | bf2 d,8 ds8 e8 c'8 | a2 g2 |
  \break
  bf2 d,8 ds8 e8 c'8 | a2 g2 | f1~ | f1 |
  \sect "B"
  f4 f4 g4 g4 | bf4 bf4 df4 df4 | c1~ | c1 |
  \break
  f,4 f4 g4 g4 | bf4 bf4 df4 df4 | c1~ | c1 |
  \sect "A3"
  c2 a4 c4 | e2. d4 | bf2 d,8 ds8 e8 c'8 | a2 g2 |
  \break
  bf2 d,8 ds8 e8 c'8 | a2 g2 | f2 r2 | r1 \textToCodaLastTime |
  \bar "||-|."

  \textCodaBreak

  bf2 d,8 ds8 e8 c'8 | a2 c2 | f1~ | f1^\fermata
  \bar "|."
}


\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
