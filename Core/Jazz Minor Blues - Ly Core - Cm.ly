%% -*- Mode: LilyPond -*-

\version "2.26.0"

songID = "2026-06-20T23:36:40.24036Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Jazz Minor Blues"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = ""
headerCopyright = ""

beforeText = \markup { \vspace #1 }

refrainChords = \chordmode {
  \time 4/4

  \sectGap "Simple “Mr. PC” style minor blues"

  \bar ".|:"
  \repeat volta 2 {
  c1:m7 c1:m7 c1:m7 c1:m7
  \break
  \bar "||-||"
  f1:m7 f1:m7 c1:m7 c1:m7
  \break
  \bar "||-||"
  af1:7 g1:7.13- c1:m7 c1:m7
  }

  \sectGap "Fancy “Birk's Works” style minor blues"

  \set Score.currentBarNumber = #1

  \bar ":|.|:"
  \repeat volta 2 {
  c1:m6 d2:m7.5- g2:7.9- c1:m6 g2:m7.5- c2:7.9-
  \break
  \bar "||-||"
  f1:m7 f1:m7 c1:m6 c1:m6
  \break
  \bar "||-||"
  ef2:m7 af2:7 d2:m7.5- g2:7.9- c1:m6 c1:m6
  }
  \bar ":|.|:"

}

refrainKey = c

whatKey = #(or whatKey refrainKey)
isMinor = ##t

\include "../Include/chordsonly.ily"
