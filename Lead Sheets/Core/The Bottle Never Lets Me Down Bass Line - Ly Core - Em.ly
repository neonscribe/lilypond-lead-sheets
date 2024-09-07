%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "The Bottle Never Lets Me Down"
  subtitle = "Bass Line from Sarah Shook's 2018 album Years"
  composer = "Sarah Shook"
  copyright = ""
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  \set chordChanges = ##f

  c1:7 b1:7 e1:m e1:m
  
  e1:m a1:m e1:m e1:m
  e1:m a1:m e1:m e1:m
  a1:m a1:m e1:m e1:m
  c1:7 b1:7 e1:m e1:m

  e1:m a1:m e1:m e1:m
  e1:m a1:m e1:m e1:m
  a1:m a1:m e1:m e1:m
  c1:7 b1:7 e1:m e1:m

  a1:m a1:m e1:m e1:m
  a1:m a1:m b1:7 b1:7
  a1:m a1:m e1:m e1:m
  c1:7 b1:7 a1:m a1:m e1:m e1:m
  
  e1:m a1:m e1:m e1:m
  e1:m a1:m e1:m e1:m
  a1:m a1:m e1:m e1:m
  c1:7 b1:7 e1:m e1:m

  e1:m a1:m e1:m e1:m
  e1:m a1:m e1:m e1:m
  a1:m a1:m e1:m e1:m
  c1:7 b1:7 e1:m e1:m

  a1:m a1:m e1:m e1:m
  c1:7 b1:7 
  a1:m a1:m e1:m
  }

refrainKey = e

refrainMelody = \relative g, {
  \time 4/4
  \key \refrainKey \minor
  \clef bass
  \tempo 4 = 122

  \xTextMark "Intro"

  c4 c4 c4 c4 | b4 b4 b4 g4 | e2 b'2 | e,2 b'4 g4 |
  \bar "||"

  \break
  \xTextMark "Verse"
  
  e2 e2 | a2 a2 | e2 b'2 | e,2 b'2 |
  e,2 e2 | a2 a2 | e2 b'2 | e,2 fs4 g4 |
  \break
  a2 e2 | a2 a4 b4 | e,2 b'2 | e,2 a4 b4 |
  c2 c2 | b2 b4 g4 | e2. b'4 | e4 d4 b4 g4 |
  \bar "||"

  \break
  \xTextMark "Verse"
  
  e2 e2 | a2 a2 | e2 b'2 | e,2 b'4 g4 |
  e2 e2 | a2 a2 | e2 b'2 | e,2 fs4 g4 |
  \break
  a2 e2 | a2 a4 b4 | e2 b4 d4 | e2 a,4 b4 |
  c2 c2 | b2 b4 g4 | e1 | e4 e4 fs4 g4 |
  \bar "||"

  \break
  \xTextMark "Chorus"
  
  a4 a4 c4 e4 | a,4 a4 c4 d4 | e4 e4 b4 d4 | e4 e4 d4 b4 |
  a4 a4 c4 e4 | a,4 a4 c4 e4 | b4 b4 fs'4 fs4 |
  \tuplet 3/2 { b,8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } \tuplet 3/2 { b8 b8 b8 } |
  \break
  a4 a4 c4 e4 | a,4 a4 c4 d4 | e4 e4 b4 d4 | e4 e4 d4 b4 |
  c4 c4 c4 c4 | b4 b4 b4 b4 | 
  \textToCoda
  a2 e'2 | a,2 a4 b4 | e,2 b'2 | e,4 e4 b'4 g4 | 
  \bar "||"

  \break
  \xTextMark "Verse Solo"
  
  e2 e4 g4 | a2 a4 b4 | e2 b2 | e,2 b'4 g4 |
  e2 e4 g4 | a4 a4 b4 d4 | e2 b4 d4 | e4 e4 d4 b4 |
  \break
  a2 e2 | a4 a4 b4 d4 | e2 b4 d4 | e4 e4 a,4 b4 |
  c2 c4 g4 | b2 b4 fs4 | e2 b'2 | e,1 |
  \bar "||"

  \break
  \xTextMark "Verse"
  
  e2 e2 | a2 a2 | e2 b'2 | e,2 b'2 |
  e,2 e2 | a2 a2 | e2 b'2 | e,2 fs4 g4 |
  \break
  a2 e2 | a2 a4 b4 | e,2 b'2 | e,2 a4 b4 |
  c2 c2 | b2 b4 g4 | e1 |
  \xTextMark "To Chorus"
  e4 e4 fs4 g4 |
  \bar "||"
  
  \textCodaBreak

  a4 a4 c4 e4 | a,4 a4 c4 d4 |
  e2 b4 d4 | e4 e4 a,4 b4 |
  \bar ".|:"
  \repeat volta 3 {
    c4 c4 c4 c4 | 
    \xTextMark "repeat 3x"
    b4 b4 b4 b4 | 
  }
  a2 e'2 | a,2 a2 | e1 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"
