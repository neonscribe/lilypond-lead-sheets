%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "My Baby Just Cares for Me"
  subtitle = \instrument
  poet = "Gus Kahn"
  composer = "Walter Donaldson"
  copyright = "© 1930 Donaldson Publishing Co."
}

refrainLyrics = { \lyricmode {
My ba -- by don't care for shows, my ba -- by don't care for clothes,
my ba -- by just cares for me. __ My ba -- by don't care for furs and __ la -- ces, __
my ba -- by don't care for high -- toned __ pla -- ces. __
My ba -- by don't care for rings, or oth -- er ex -- pen -- sive things, }
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  #{ \lyricmode { he's } #}
  #{ \lyricmode { she's } #} )
\lyricmode {
sen -- si -- ble as can be. __
My ba -- by don't care who knows it, my ba -- by just cares for me. __
} }

refrainChords = \chordmode {
  g2:6 d2:7.5+ g2:maj7 d2:7.5+ g2:6 d2:7.5+ g2:maj7 d2:7.5+
  \break
  g2:6 c2:9.11+ b2:m7 bf2:dim7 a2:m7 e2:7.5+ a2:m7 a2:m7/g

  fs1:m7.5- b1:7 e1:m7 e1:7
  a2:7 b2:m7 c2:dim7 a2:7/cs d1:sus9 d1:9
  
  g2:6 d2:7.5+ g2:maj7 d2:7.5+ g2:6 d2:7.5+ g2:maj7 d2:7.5+
  b1:m7.5- ef2:7 e2:7 a1:m7 a1:m7
  
  c1:maj7 cs2:m7 fs2:7 b1:m7 e1:7
  a1:m7 a2:7 d2:7 g1:6

  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 117

  \xTextMark \markup{ \bold \box "A1" }
  
  r4 g4 fs8 fs8 e4 | fs4 g4 fs4 r4 | r4 g4 fs8 fs8 e4 | fs4 g4 fs4 r4 |
  \break
  r4 g4 fs8 fs8 g4 | fs2 e2 c'1~ | c1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 c4 c8 b8 c4 | b2 fs2 | a4. g8~ g2 | a4. g8~ g2 |
  \break
  r4 a4 a8 gs8 a4 | ds,2 e2 | b'4. d8~ d2 | b4. a8~ a2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  r4 g4 fs8 fs8 e4 | fs4 g4 fs4 r4 | r4 g4 fs8 fs8 e4 | fs4 g4 fs4 r4 |
  \break
  r4 f4 f8 f8 e4 | ds2 e2 | c'1~ | c1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  r4 e4 e8 ds8 e4 | fs2 cs2 | d1 | e1 |
  \break
  r4 c4 c8 e8 e,4 | b'2 b2 | g1~ | g2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
