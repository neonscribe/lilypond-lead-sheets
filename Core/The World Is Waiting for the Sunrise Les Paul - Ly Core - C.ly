%% -*- Mode: LilyPond -*-

songID = "2026-06-01T22:16:55.781756Z"

\include "../Include/lead-sheets.ily"

headerTitle = "The World Is Waiting for the Sunrise (1951 Les Paul)"
headerSubtitle = \subtitle
headerPoet = "Eugene Lockhart"
headerComposer = "Ernest Seitz"
headerCopyright = "© 1919 Chappell & Co."

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

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [Les Paul and Mary Ford 1951]" 130

  \partial 2
  <f \har b \har d>4(
  <g \har c \har e>4) |

  \sectNoBreak "A1"

  <e \har g \har c>4 r4 r2 | r2
  <g \har c \har e>2 |
  <a \har c \har ef>2 r2 | r2
  <g \har c \har e>2 |
  %% \break
  <e \har g \har c>2
  <a \har c \har ef>2 |
  <a \har c \har ef>2
  <c \har a \har e'>2 |
  \acciaccatura d8
  <e \har a, \har gs'>1 |
  \acciaccatura d8
  <e \har b \har gs'>4(
  <d \har b \har gs'>2.) |

  \sect "B"

  <c \har f \har a>1~ |
  <c \har f \har a>2
  <a \har d \har f>2 |
  <a \har d \har f>4(
  <g \har d' \har f>4) r2 | r2
  <e' \har g, \har g'>2 |
  %% \break
  <e \har c \har f>2
  <d \har a \har f'>2~ |
  <d \har a \har f'>2
  <d \har a \har fs'>4(
  <e \har c \har g'>4) |
  <e \har b \har g'>2(
  <d \har b \har f'>2) | r2
  <f, \har b \har d>4(
  <g \har c \har e>4) |

  \sect "A2"

  <g \har c \har e>4(
  <e \har g \har c>4) r2 | r2
  <g \har g \har c>4(
  <c \har a \har e'>4) |
  <c \har a \har ef'>4(
  <a \har fs \har c'>2) r4 | r2
  <g \har c \har e>2 |
  %% \break
  <e \har g \har c>2
  <g \har c \har e>2 |
  <a \har c \har e>2
  <c \har a \har e'>2 |
  \acciaccatura d8
  <e \har b \har gs'>1 |
  <e \har b \har gs'>4(
  <d \har b \har gs'>2.) |

  \sect "C"

  <c \har f \har a>2 r2 | r2
  \acciaccatura <g c e>8
  <a \har d \har f>2 |
  <a \har d \har f>4(
  <g \har c \har e>4) r2 | r2
  <e' \har c \har g'>2 |
  %% \break
  <f \har c \har af'>2(
  <c \har af \har f'>2) |
  \acciaccatura a8
  <e' \har b \har g'>1 |
  <d \har a \har f'>4(
  <c \har g \har e'>2.~ |
  <c \har g \har e'>2) r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"
