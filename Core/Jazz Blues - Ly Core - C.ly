%% -*- Mode: LilyPond -*-

\version "2.26.0"

songID = "2026-06-20T23:36:40.24036Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Jazz Blues"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = ""
headerCopyright = ""

beforeText = \markup { \vspace #1 }

refrainChords = \chordmode {
  \time 4/4

  \bar ".|:"
  \repeat volta 2 {
  c1:7 f1:7 c1:7 g2:m7 c2:7
  \break
  \bar "||-||"
  f1:7 fs1:dim7 c1:7/g e2:m7.5- a2:7.9-
  \break
  \bar "||-||"
  d1:m7 g1:7 e2:m7 a2:7 d2:m7 g2:7
  }
}

refrainKey = c

whatKey = #(or whatKey refrainKey)

\include "../Include/chordsonly.ily"
