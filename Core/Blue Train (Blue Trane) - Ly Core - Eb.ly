%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Blue Train (Blue Trane)"
  subtitle = \instrument
  poet = ""
  composer = "John Coltrane"
  copyright = \markup \small "© 1957 Jowcol Music"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s2.
  
  ef1:7.9+ ef1:7.9+
  ef1:7.9+ ef1:7.9+ af1:7.11+ af1:7.11+
  ef1:7.9+ ef1:7.9+ bf1:7.9+ bf1:7.9+
  
  ef1:7.9+ ef1:7.9+
  
  ef1:7.9+ \chordInsideParens{ ef1:7.9+ }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Blues [John Coltrane 1957]" 4 = 154
  
  \partial 2. r8 bf8 df8 f8 df8 ef8~ |

  \bar ".|:"
  \override Score.VoltaBracket.musical-length = \musicLength 2
  \repeat volta 2 {
  ef1 | r4 r8 bf8 df8 f8 df8 ef8~ |
  \break
  ef1 | r4 r8 ef,8 gf8 bf8 gf8 af8~ | af1 | r4 r8 bf8 df8 f8 df8 ef8~ |
  \break
  ef1 | r4 r8 bf8 df8 gf8 ef8 df8~ | df1 | r4 r8 bf8 df8 f8 df8 ef8~ |
  \break
  \alternative { 
    \volta 1 {
  ef1 | r4 r8 bf8 df8 f8 df8 ef8\laissezVibrer |
  } \volta 2 {
  ef1\repeatTie | r1 |
  } } }
  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s8*9 b4. b8 s8*12 b4. b8 s8*12 b4. b8
  s8*12 b4. b8 s8*12 b4. b8 s8*12 b4. b8
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-kicks.ily"

\markup "Play head twice before and after solos. Bass plays kicks on head, walks on solo."

\markup {
  \vspace #1
}

pianoChordNames = \chordmode {
  ef1:7.9+ af1:7.11+ bf1:7.9+
}

pianoChordRightHand = \relative f' {
  \clef treble
  \key \refrainKey \major

  gf1 <d c>1 <d fs>1
}

pianoChordLeftHand = \relative f' {
  \clef bass
  \key \refrainKey \major
  <df g, ef>1 <gf, af,>1 <af bf,>1
}

\include "../Include/piano-chords.ily"

\markup {
  \vspace #1
}

chordDiagrams = \chordmode {
  ef:7.9+ af:7.11+ bf:7.9+
}

chordChart = ##t
guitarChords = ##t
notationChords = ##f

\include "../Include/chord-diagrams.ily"
