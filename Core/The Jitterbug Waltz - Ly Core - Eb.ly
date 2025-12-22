%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "The Jitterbug Waltz"
  subtitle = \instrument
  poet = ""
  composer = "Fats Waller"
  copyright = \markup \small { \now " " "© 1942 Robbins Music Corporation" }
}

refrainNRBThreeChords = \chordmode {
  ef2.:6.9 ef2.:6.9 ef2.:6.9 ef2.:6.9
  af2.:9 af2.:9 af2.:9 \chordInsideParens{ bf2.:7.5+ }

  ef2.:6.9 ef2.:6.9 ef2.:6.9 ef2.:6.9
  g2.:m7 c2.:7 g2.:m7 c2.:7
  
  f2.:9 f2.:9 f2.:9 f2.:9 
  af2.:m6 af2.:m6 df2.:9.11+ df2.:9.11+ 
  
  f2.:7 f2.:7 bf2.:7 bf2.:7
  g2.:m7 c2.:7 f2.:m7 bf2.:7

  f2.:7 f2.:7 f2.:m7bf2.:13 ef2.:6 af2.:6 ef2.:6.9 \chordInsideParens{ bf2.:7 }
}

refrainDFBChords = \chordmode {
  ef2. ef2. ef2. ef2.
  af2.:7 af2.:7 af2.:7 af2.:7 

  ef2. ef2. ef2. ef2.
  c2.:7 c2.:7 c2.:7 c2.:7
  
  f2.:7 f2.:7 f2.:7 f2.:7
  af2.:m6 af2.:m6 af2.:m6 af2.:m6 
  
  f2.:7 f2.:7 bf2.:7 bf2.:7
  g2.:m7 c2.:7 f2.:m7 bf2.:7

  f2.:7 f2.:7 bf2.:7 bf2.:7
  ef2. af2.:7 ef2. \chordInsideParens{ bf2.:7 }
}

refrainChords =
$(if (and (defined? 'useDFBChords) useDFBChords)
  refrainDFBChords
  refrainNRBThreeChords)

refrainKey = ef

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Waltz [Fats Waller 1942]" 4 = 122

  \xTextMark \markup{ \bold \box "A" }
  
  \bar ".|:"
  \repeat volta 2 {
  r8 ef'8 g8 d8 f8 c8 | ef8 bf8 d8 af8 c8 g8 |
  bf8 f8 af8 ef8 g8 d8 | f8 c8 ef8 bf8 d8 bf8 |
  \break
  c8 c4.~ c4~ | c2 \tuplet 3/2 { bf8 c8 ef8 } | bf'2~ bf8 c8 | gf2. |
  
  \sect "B"
  
  r8 ef'8 g8 d8 f8 c8 | ef8 bf8 d8 af8 c8 g8 |
  bf8 f8 af8 ef8 g8 d8 | f8 c8 ef8 bf8 d8 g,8 |
  \break
  c8 c4.~ c4~ | c2 \tuplet 3/2 { bf8 c8 e8 } | bf'2~ bf8 c8 | g2. |
  
  \sect "C"
  
  r8 c,8 ef8 c8 ef8 c8 | ef8 c8 ef8 c8 ef8 c8 | g'8 g4.~ g4~ | g2 r4 |
  \break
  r8 cf,8 ef8 cf8 ef8 cf8 | ef8 cf8 ef8 cf8 ef8 cf8 | g'8 g4.~ g4~ | g2 r4 |
  
  \sect "D"
  
  \alternative { \volta 1 {
  r8 c,8 ef8 c8 ef8 c8 | ef8 c8 ef8 c8 ef8 c8 | d4 ef4 e4 | f4. d8 c8 cf8 |
  \break
  bf2.~ | bf2.~ | bf2.~ | bf2 r4 |
  \break
  } \volta 2 {
  r8 c8 ef8 c8 ef8 c8 | ef8 c8 ef8 c8 ef8 c8 | g'8 g4.~ g4~ | g2 bf,4 |
  \break
  ef2 g8 bf8 | af2 c8 ef8 | ef2. | R2.*1 |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
