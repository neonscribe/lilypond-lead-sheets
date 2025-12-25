%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Milestones (1958)"
  subtitle = \instrument
  poet = ""
  composer = "Miles Davis"
  copyright = \markup \small { \now " " "© 1958 Jazz Horn Inc." }
}

refrainChords = \chordmode {
  g2:m7 a2:m7/g g4.:m7 a8*5:m7/g g2:m7 a2:m7/g g4.:m7 a8*5:m7/g
  g2:m7 a2:m7/g g4.:m7 g8*4:m7 f8*17:maj7
  a1:m7 a1:m7 a1:m7 a1:m7 
  a1:m7 a1:m7 a1:m7 a1:m7 
  g2:m7 a2:m7/g g4.:m7 a8*5:m7/g g2:m7 a2:m7/g g4.:m7 a8*5:m7/g
  g2:m7 a2:m7/g g4.:m7 g8*4:m7 f8*17:maj7
  g1*6:m7 f1*2:maj7 g1*6:m7 f1*2:maj7 a1*16:m7 g1*6:m7 f1*2:maj7
}

refrainKey = g

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key g \minor
  \clef \whatClef
  \tempo "Fast [Miles Davis 1958]" 4 = 236

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  <f d bf>4 r4 <g e c>4 r4 | <a f d>4 r8 <g e c>8 r2 | <f d bf>4 r4 <g e c>4 r4 | <a f d>4 r8 <g e c>8 r2 |
  \break
  <f d bf>4 r4 <g e c>4 r4 | <a f d>4 r8 f8 r4 r8 <g e c>8~ | <g e c>1~ | <g e c>1 |
  }

  \break

  \xTextMark \markup{ \bold \box "B1, B2" }
  
  \key a \minor
  \bar ":|.|:"
  \repeat volta 2 {
  <b e, c>2 <c f, d>2 | <d g, e>2 <c f, d>2 | <b e, c>2 <c f, d>2 | <d g, e>2 <c f, d>2 |
  \break
  <b e, c>2 <c f, d>2 | <d g, e>2 <b e, c>2 | <c f, d>1~ | <c f, d>2 r2
  }

  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  \key g \minor
  <f, d bf>4 r4 <g e c>4 r4 | <a f d>4 r8 <g e c>8 r2 | <f d bf>4 r4 <g e c>4 r4 | <a f d>4 r8 <g e c>8 r2 |
  \break
  <f d bf>4 r4 <g e c>4 r4 | <a f d>4 r8 <f d bf>8 r4 r8 <g e c>8~ | <g e c>1~ | <g e c>1 |

  \break

  \xTextMark \markup{ \bold \box "Solos" }
  
  \bar ".|:-|."
  \repeat volta 2 { \compressMMRests {
  \override MultiMeasureRest.expand-limit = 1 {
  R1*6^\markup{ \bold \box "A" }  R1*2 R1*6^\markup{ \bold \box "A" } R1*2
  R1*16^\markup{ \bold \box "B" \bold \box "B" } R1*6^\markup{ \bold \box "A" } R1*2 
} } }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup{ "Top line is melody." }
