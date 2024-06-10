%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "The World Is Waiting for the Sunrise (1951 Les Paul)"
  subtitle = \instrument
  poet = "Eugene Lockhart"
  composer = "Ernest Seitz"
  copyright = "© 1919 Chappell & Co. Ltd."
}

refrainLyrics = \lyricmode {
Dear __ one the world is wait -- ing for the sun -- rise. __
Ev' -- ry rose __ is cov -- ered __ with __ dew. __
And while __ the __ world __ is wait -- ing for the sun -- rise. __
And my heart __ is call -- ing you. __
}

refrainChords = \chordmode {
  s2

  c1 c1 c1:dim7 c1:dim7
  c1 c1 e1:7 e1:7
  f1 f1 c1 c1
  d1:7 d1:7 g1:7 g1:7
  
  c1 c1 gf1:dim7 gf1:dim7
  c1 c1 e1:7 e1:7
  f1 f1 c1 c1
  f1:m g1:7 c1 c1
}

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 2 = 130

  \partial 2 
  <f \tweak font-size #-2 b \tweak font-size #-2 d>4(
  <g \tweak font-size #-2 c \tweak font-size #-2 e>4) |
  \bar "||"

  \xTextMark \markup{ \bold \box "A1" }
  
  <e \tweak font-size #-2 g \tweak font-size #-2 c>4 r4 r2 | r2 
  <g \tweak font-size #-2 c \tweak font-size #-2 e>2 |
  <a \tweak font-size #-2 c \tweak font-size #-2 ef>2 r2 | r2
  <g \tweak font-size #-2 c \tweak font-size #-2 e>2 |
  \break
  <e \tweak font-size #-2 g \tweak font-size #-2 c>2
  <a \tweak font-size #-2 c \tweak font-size #-2 ef>2 |
  <a \tweak font-size #-2 c \tweak font-size #-2 ef>2
  <c \tweak font-size #-2 a \tweak font-size #-2 e'>2 |
  \acciaccatura d8
  <e \tweak font-size #-2 a, \tweak font-size #-2 gs'>1 |
  \acciaccatura d8
  <e \tweak font-size #-2 b \tweak font-size #-2 gs'>4(
  <d \tweak font-size #-2 b \tweak font-size #-2 gs'>2.) |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  <c \tweak font-size #-2 f \tweak font-size #-2 a>1~ |
  <c \tweak font-size #-2 f \tweak font-size #-2 a>2
  <a \tweak font-size #-2 d \tweak font-size #-2 f>2 |
  <a \tweak font-size #-2 d \tweak font-size #-2 f>4(
  <g \tweak font-size #-2 d' \tweak font-size #-2 f>4) r2 | r2
  <e' \tweak font-size #-2 g, \tweak font-size #-2 g'>2 |
  \break
  <e \tweak font-size #-2 c \tweak font-size #-2 f>2
  <d \tweak font-size #-2 a \tweak font-size #-2 f'>2~ |
  <d \tweak font-size #-2 a \tweak font-size #-2 f'>2
  <d \tweak font-size #-2 a \tweak font-size #-2 fs'>4(
  <e \tweak font-size #-2 c \tweak font-size #-2 g'>4) |
  <e \tweak font-size #-2 b \tweak font-size #-2 g'>2(
  <d \tweak font-size #-2 b \tweak font-size #-2 f'>2) | r2
  <f, \tweak font-size #-2 b \tweak font-size #-2 d>4(
  <g \tweak font-size #-2 c \tweak font-size #-2 e>4) |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  <g \tweak font-size #-2 c \tweak font-size #-2 e>4(
  <e \tweak font-size #-2 g \tweak font-size #-2 c>4) r2 | r2
  <g \tweak font-size #-2 g \tweak font-size #-2 c>4(
  <c \tweak font-size #-2 a \tweak font-size #-2 e'>4) |
  <c \tweak font-size #-2 a \tweak font-size #-2 ef'>4(
  <a \tweak font-size #-2 fs \tweak font-size #-2 c'>2) r4 | r2
  <g \tweak font-size #-2 c \tweak font-size #-2 e>2 |
  \break
  <e \tweak font-size #-2 g \tweak font-size #-2 c>2
  <g \tweak font-size #-2 c \tweak font-size #-2 e>2 |
  <a \tweak font-size #-2 c \tweak font-size #-2 e>2
  <c \tweak font-size #-2 a \tweak font-size #-2 e'>2 |
  \acciaccatura d8
  <e \tweak font-size #-2 b \tweak font-size #-2 gs'>1 |
  <e \tweak font-size #-2 b \tweak font-size #-2 gs'>4(
  <d \tweak font-size #-2 b \tweak font-size #-2 gs'>2.) |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "C" }

  <c \tweak font-size #-2 f \tweak font-size #-2 a>2 r2 | r2
  \acciaccatura <g c e>8
  <a \tweak font-size #-2 d \tweak font-size #-2 f>2 |
  <a \tweak font-size #-2 d \tweak font-size #-2 f>4(
  <g \tweak font-size #-2 c \tweak font-size #-2 e>4) r2 | r2
  <e' \tweak font-size #-2 c \tweak font-size #-2 g'>2 |
  \break
  <f \tweak font-size #-2 c \tweak font-size #-2 af'>2(
  <c \tweak font-size #-2 af \tweak font-size #-2 f'>2) |
  \acciaccatura a8
  <e' \tweak font-size #-2 b \tweak font-size #-2 g'>1 |
  <d \tweak font-size #-2 a \tweak font-size #-2 f'>4(
  <c \tweak font-size #-2 g \tweak font-size #-2 e'>2.~ |
  <c \tweak font-size #-2 g \tweak font-size #-2 e'>2) r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
