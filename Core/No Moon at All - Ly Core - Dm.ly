%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "No Moon at All"
  subtitle = \instrument
  composer = "Redd Evans & Dave Mann"
  copyright = "© 1947 Jefferson Music Co., Inc."
}

refrainLyrics = \lyricmode {
No moon at all, __ what a night, __
E -- ven light -- nin' bugs have dimmed their light, __
Stars have dis -- ap -- peared from sight
and there's no moon at all. __
Don't make a sound, __ it's so dark, __
E -- ven Fi -- do is a -- fraid to bark, __
What a per -- fect chance to park,
and there's no moon at all. __
Should we want at -- mos -- phere __ for in -- spir -- a -- tion, dear, __
One kiss will make __ it clear
that to -- night is right and bright moon -- light might in -- ter -- fere. __
No moon at all __ up a -- bove, __
This is no -- thing like they told us of, __
Just to think we fell in love
and there's no moon at all. __
}

refrainChords = \chordmode {
  d1:m a1:7 d1:7.9- g1:6
  e1:m7.5- d2:m bf4:7 a4:7 d1:m bf2:7 a2:7

  d1:m a1:7 d1:7.9- g1:6
  e1:m7.5- d2:m bf4:7 a4:7 d1:m d1:m

  d1:7 d1:7 g1:7 g1:7
  c1:7 c1:7 f1:6 e2:m7.5- a2:7

  d1:m a1:7 d1:7.9- g1:6
  e1:m7.5- d2:m7 bf4:7 a4:7 d1:m
  \chordOpenParen{ bf2:7 }
  \chordCloseParen{ a2:7 }
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Up Swing"

  \textMark \markup{ \bold \box "A1" }

  a8 f8 g8 a8~ a2 | r8 a8 e8 a8~ a2 | r8 a4 fs8 a8 g8 fs8 a8 | g4 d8 g8~ g2 |
  r8 g4 e8 g8 f8 e8 g8 | f8 b,8 c8 f8~ f8 d8 e8 d8~ | d1 | r1 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }

  a'8 f8 g8 a8~ a2 | r8 a8 e8 a8~ a2 | r8 a4 fs8 a8 g8 fs8 a8 | g4 d8 g8~ g2 |
  r8 g4 e8 g8 f8 e8 g8 | f8 b,8 c8 f8~ f8 d8 e8 d8~ | d1 | r1 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  r8 d4. fs8 a4 d,8~ | d4 fs8 a8~ a2 | r8 g4. b8 d4 g,8~ | g4 b8 d8~ d2 |
  \break
  r8 c4. bf8 g4 c8~ | c4 bf8 g4. f8 g8 | a8 a8 a8 a8 a8 a8 a8 a8 | r8 cs8 bf8 a8~ a2 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A3" }

  a8 f8 g8 a8~ a2 | r8 a8 e8 a8~ a2 | r8 a4 fs8 a8 g8 fs8 a8 | g4 d8 g8~ g2 |
  r8 g4 e8 g8 f8 e8 g8 | f8 b,8 c8 f8~ f8 d8 e8 d8~ | d1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \vspace #2
  \column {
    \line { \huge { Intro: bass four bars i-V7-i-V7, add vocal only for A1, band joins at A2, sing A2, B, A3 } }
    \line { \huge { Guitar solo whole form, accordion solo whole form, sing whole form with band } }
    \line { \huge { Ending: vamp on bars 30-31 “and there's no moon at all” } }
    \line { \huge { band and vocal drops out, bass solo vamp i-VI7/V7 } }
  }
}

%% \include "../Include/notes.ily"
