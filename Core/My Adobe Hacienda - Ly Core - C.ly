%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 17) #}
)

\header {
  title = "My Adobe Hacienda"
  subtitle = \instrument
  poet = ""
  composer = "Louise Massey and Lee Penny"
  copyright = "© 1941 Peer International Corp."
}

refrainLyricsOne = \lyricmode {
In my a -- do -- be ha -- ci -- en -- da __
There's a touch __ of Mex -- i -- co, __
Cac -- tus love -- li -- er than orch -- ids __
Bloom -- ing in the pa -- ti -- o. __
Soft des -- ert stars __ and the strum of gui -- tars, __
Make ev' -- ry eve -- ning seem so sweet; __
In my a -- do -- be ha -- ci -- en -- da __
Life and love __ are more com -- plete. __ In
}

refrainLyricsTwo = \lyricmode {
\skip 8 my a -- do -- be ha -- ci -- en -- da __
Nes -- tled in the West -- ern hills, __
Even -- ning breez -- es soft -- ly mur -- mur __
Har -- mo -- my __ with whip -- poor -- wills. __
When set -- ting sun __ says the long day is done, __
Sweet mu -- sic starts to fill the air; __
In my a -- do -- be ha -- ci -- en -- da __
Har -- mo -- ny __ is ev' -- ry -- where. __
}

refrainChords = \chordmode {
  s4
  
  c1:6 c1:6 g1:7 g1:7 g1:7 g1:7 c1:6 c1:6

  c1:6 c1:6 g1:7 g1:7 g1:7 g1:7 c1:6 c1:6

  c1:7 c1:7 f1:6 f1:6 d1:7 d1:7 g1:7 g1:7

  c1:6 c1:6 g1:7 g1:7 g1:7 g1:7

  c1:6 g1:7
  
  c1:6 c1:6
}

refrainKey = c

refrainMelody = \relative c' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Moderately (with a lift)" 2 = 80

  \partial 4 e4 |
  \bar ".|:"

  \repeat volta 2 {
  \xTextMark \markup{ \bold \box "A1" }

  g2. fs8 f8~ | f8 e4. ds4 e4 | f4. g8~ g2~ | g1 |
  \break
  d2. e8 f8~ | f4 g4 a4 b8 a8~ | a1~ | a2~ a8 r8 r4 |
  
  \bar "$"
  \break
  \xTextMark \markup{ \bold \box "A2" }

  g2. fs8 f8~ | f8 e4. ds4 e4 | f4. g8~ g2~ | g1 |
  \break
  d2. e8 f8~ | f4 g4 a4 b8 c8~ | c1~ | c1 |
  
  \bar "$"
  \break
  \xTextMark \markup{ \bold \box "B" }
  
  c2 d,8 e4 d8~ | d2 e4 c4 | c'2 d,8 e4 d8~ | d1 |
  \break
  d2 e8 d4. | fs4 d4 a'4 d,4 | b'1~ | b2. e,4 |

  \bar "$"
  \break
  \xTextMark \markup{ \bold \box "A3" }
  
  g2. fs8 f8~ | f8 e4. ds4 e4 | f4. g8~ g2~ | g1 |
  \break
  d2. e8 f8~ | f4 g4 a4 b8 c8~ |
  
  }
  \alternative {
    { c1~ | c2 r4 e,4 | }
    { c'1~\repeatTie | c2. r4 | }
  }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"
