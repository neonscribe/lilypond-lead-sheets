%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Rhode Island Is Famous for You"
  subtitle = \instrument
  poet = "Howard Dietz"
  composer = "Arthur Schwartz"
  copyright = "© 1948 Chappell & Co., Inc."
}

verseLyrics = \lyricmode {
Ev -- 'ry state has some -- thing its Ro -- ta -- ry Club can boast of,
some pro -- duct that the state pro -- du -- ces the most of.
Rhode Is -- land is lit -- tle, but oh my, __
it has a pro -- duct an -- y -- one would buy.
}

verseChords = \chordmode {
  g1:maj7 a1:m7 g1:maj7 a1:m7
  g1:maj7 a1:m7 g1:maj7 a2:9 d2:9 
  g1:maj7 d2:m7 e2:7 a1:7 a1:7
  a2:m7 g2:maj7 e2:m7 a2:7 d2:9 a2:m7 d1:7
}

verseKey = g

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Freely" 4 = 140
  
  \xTextMark \markup{ \bold "Verse" }

  a4 fs4 d4 b4 | c4 e2 g4 | a8 a8 fs4 d4 b4 | c4 e2. |
  \break
  r4 fs4 d4 b4 | c4 e4 g2 | r4 fs8 a8~ a8 fs4 a8 | b2 e,2 |
  \break
  r4 d4 \tuplet 3/2 { d4 e4 d4 } | f8 e4. d4 d4 | b'1~ | b2. b4 |
  \break
  a4 a4 a8 d,4. | fs8 fs8 fs2 cs4 | e1 | r1 |

  \bar "|."
}

refrainLyrics = \lyricmode {
Cop -- per comes from Ar -- i -- zon -- a,
peach -- es come from Geor -- gia and lob -- sters come from Maine. __
The wheat fields are the sweet fields of Neb -- ras -- ka,
and Kan -- sas gets bo -- nan -- zas from the grain. __
Old whis -- key comes from old Ken -- tuck -- y,
ain't the coun -- try luck -- y?
New Jer -- sey gives us glue, __
and you, you come from Rhode Is -- land,
and lit -- tle old Rhode Is -- land is fa -- mous for you!
}

refrainChords = \chordmode {
  g1:maj7 a1:m7 g1:6 a1:m7
  g1:maj7 e1:m7 a1:7 a2:7 c2:m6
  
  g1:maj7 g1:9 c2:maj7 c2:6 e2:m7 c2:dim7
  g1:6.9 g1:dim7 d1:7 d1:7
  
  g1:maj7 a1:m7 g1:6 a1:m7
  g1:maj7 e1:m7 a1:7 a2:7 c2:m6
  
  g1:maj7 g1:7 c1 g1:7
  e1:m7 a2:m7 d2:7 g1
  \chordInsideParens{ d1:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing" 4 = 190

  \xTextMark \markup{ \bold "Refrain" \bold \box "A1" }
  
  d4 b2. | c4 b4 c4 d4 | e4 b2. | d4 c4 d4 e4 |
  \break
  fs4 d2 fs4 | g4 e4 fs4 g4 | a1~ | a2. g4 |
  
  \sect "B"
  
  b4. b8~ b8 fs4 g8 | a4. a8~ a8 e4 fs8 | g4. g8~ g2 | r2 r4 fs4 |
  \break
  a4. a8~ a8 e4 fs8 | g4. g8~ g8 d4 e8 | fs1~ | fs2 r4 e4 |
  
  \sect "A2"
  
  d4 b2. | c4 b4 c4 d4 | e4 b2. | d4 c4 d4 e4 |
  \break
  fs4 d2 fs4 | g4 e4 fs4 g4 | a1~ | a2. g4 |
  
  \sect "C"
  
  b1 | b4 d4 b4 a4 | g4 e2 g4 | b8 d8 b2 a4 |
  \break
  g4 e2 g4 | c4 g4 a2 | g1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\markup {
  \column {
    \vspace #2
    \line { \large { Copper comes from Arizona, peaches come from Georgia and lobsters come from Maine. } }
    \line { \large { The wheat fields are the sweet fields of Nebraska, }}
    \line { \large { and Kansas gets bonanzas from the grain. } }
    \line { \large { Old whiskey comes from old Kentucky, ain't the country lucky? New Jersey gives us glue, } }
    \line { \large { and you, you come from Rhode Island, and little old Rhode Island is famous for you! } }
    \vspace #2
    \line { \large { Cotton comes from Loosiana, gophers from Montana and spuds from Idaho. } }
    \line { \large { They plough land in the cow-land of Missoura,  } }
    \line { \large { where most beef meant for roast beef seems to grow. } }
    \line { \large { Grand canyons come from Colorada, gold comes from Nevada, divorces also do, } }
    \line { \large { and you, you come from Rhode Island, and little old Rhode Island is famous for you! } }
    \vspace #2
    \line { \large { Pencils come from Pencilvania, vests from Vest Virginia and tents from Tentasee. } }
    \line { \large { They know mink where they grow mink in Wyomink. } }
    \line { \large { A camp chair in New Hampchair, that's for me. } }
    \line { \large { And minnows come from Minnowsota, coats come from Dacoata, but why should you be blue, } }
    \line { \large { for you, you come from Rhode Island, and little old Rhode Island, it's famous for you! } }
  }
}

\pageBreak

\include "../Include/refrain.ily"
