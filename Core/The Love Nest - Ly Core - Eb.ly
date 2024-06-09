%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "The Love Nest"
  subtitle = \instrument
  poet = "Otto Harbach"
  composer = "Louis A. Hirsch"
  copyright = "© 1920 Victoria Publishing Corporation"
}

refrainLyrics = \lyricmode {
  Just a love nest, __ co -- zy and warm. __
  Like a dove nest, __ down on a farm. __
  A ver -- an -- da with some sort of cling -- ing vine, __
  Then a kit -- chen where some ram -- bler ros -- es twine. __
  Then a small room, __ tea set of blue. __
  Best of all room, __ dream room for two. __
  Bet -- ter than a pal -- ace with a gild -- ed dome, __
  is a love nest, __ you can call home. __
}

refrainChords = \chordmode {
  s2
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 ef1:maj7 ef2:6 ef2:7 
  af2:maj7 f2:m7 bf2:m7 ef2:7 af1:maj7 af1:6
  
  bf1:7 bf1:7 ef2:maj7 df2:7.11+ c1:7
  f2:m7 c2:7/g f2:m7/af f2:7/a bf1:sus7 bf1:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 ef1:maj7 ef2:6 ef2:7 
  af2:maj7 f2:m7 bf2:m7 ef2:7 af1:maj7 af1:6
  
  bf1:7 bf1:7 df1:7.11+ c1:7
  f1:m7 bf1:7 ef1:6
  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \partial 2 bf,4 bf'4 |
  \bar "||"

  \textMark \markup{ \bold \box "A1" }
  
  g2 ef2~ | ef2 \tuplet 3/2 { f4 ef4 f4 } | g1~ | g2 ef4 ef'4 |
  \break
  c2 af2~ | af2 \tuplet 3/2 { bf4 af4 bf4 } | c1~ | c2 c4 ef4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  d4 d4 c4 c4 | bf4 bf4 af4 af4 | g1~ | g2 g4 bf4 |
  \break
  af4 af4 g4 g4 | f4 f4 ef4 ef4 | bf'1~ | bf4 r4 bf,4 bf'4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  g2 ef2~ | ef2 \tuplet 3/2 { f4 ef4 f4 } | g1~ | g2 ef4 ef'4 |
  \break
  c2 af2~ | af2 \tuplet 3/2 { bf4 af4 bf4 } | c1~ | c2 c4 ef4 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }

  d4 d4 c4 c4 | bf4 bf4 af4 af4 | g1~ | g2 c,4 c'4 |
  \break
  af2 f2~ | f2 \tuplet 3/2 { af4 g4 f4 } | ef1~ | ef2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
