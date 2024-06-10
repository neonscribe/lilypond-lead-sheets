%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Only Trust Your Heart"
  subtitle = \instrument
  poet = "Sammy Cahn"
  composer = "Benny Carter"
  copyright = "© 1964 Universal Music Company"
}

bossaRhythm = ##t

refrainLyricsAOne = \lyricmode {
  Nev -- er trust the stars __ when you're a -- bout to fall in love,
  look for hid -- den signs __ be -- fore you
}

refrainLyricsAOneEnd = \lyricmode {
  start to sigh. __
}

refrainLyricsATwo =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
#{
\lyricmode {
  Nev -- er trust the moon __ when you're a -- bout to taste his kiss,
  he knows all the lines, __ and he knows
}
  #}
#{
\lyricmode {
  Nev -- er trust the moon __ when you're a -- bout to taste her kiss,
  she knows all the lines, __ and she knows
}
  #}
  )

refrainLyricsATwoEnd = \lyricmode {
  how to lie. __
}

refrainLyricsBstart = \lyricmode {
  Just
}

refrainLyricsB = \lyricmode {
  wait __ for a night __ when the skies are all bare, then if you still care
}

refrainLyricsAThree = \lyricmode {
  Nev -- er trust your dream __ when you're a -- bout to fall in love,
  for your dream will quick -- ly fall a -- part. __
}


refrainLyricsCoda = \lyricmode {
  So if you're smart, __ real -- ly smart, __ on -- ly trust __ your heart. __
}

refrainChords = \chordmode {
  f1:maj7 b1:7.9+ e1:m7 a1:m7
  d1:m7 g2:7 g2:7.5+ 
  
  c1:maj7 g2:m7 c2:7

  c1:maj7 g2:m7 gf2:7.5-
  
  f1:maj7 a1:m7/e d1:m7 d1:m7/c
  b1:m7.5- e1:7.5+ a2.:m7 af4:m7 g2:m7 c2:7
  
  f1:maj7 b1:7.9+ e1:m7 a1:m7
  d1:m7 g2:7 g2:7.5+ 
  
  bf1:7.5- a1:7 d1:m7 f2:m7 bf2:7
  c1:maj7 e2:m7 a2:7.9- af1:7.5-
  f2:maj7/g g2:7.9- c1:6

  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c4:7 }
  \chordInsideParens{ a4:7 }
}

refrainMelody = \relative c'' {
  \time 2/2
  \key c \major
  \clef \whatClef
  
  \tempo "Medium Bossa" 4 = 120
  
  \xTextMark \markup { \bold \box "A1, A2" }

  \repeat volta 2 {

  a4 b4 c4 b4 | d2~ d8 c8 b8 a8 | g4 a4 b4 a4 | c1 |
  \break
  f,4 g4 a4 g4 | b2~ b8 a8 g8 f8 | 

  } \alternative {
    { e4 f4 g2~ | g2. r4 | }
    { e4 f4 g2~ | g2 r4 c,4 | }
  }
  \bar "||"

  \xTextMark \markup { \bold \box "B" }

  \break
  a'1~ | a2 c4 a4 | f1~ | f2 a4 f4 |
  \break
  d2 d'4 df4 | c2. b4 | e,2 c'4 b4 | bf1 |
  \break

  \xTextMark \markup { \bold \box "A3" }

  a4 b4 c4 b4 | d2~ d8 c8 b8 a8 | g4 a4 b4 a4 | c1 |
  \break
  f,4 g4 a4 g4 | b2~ b8 a8 g8 f8 | 
  e1~ | e2. a,4 |
  \bar "||"
  \break

  
  d4 e4 f2~ | f1 | e4 f4 g2~ | g1 |
  \break
  c,4 d4 e2~ | e2 d2 | c1~ | c2.^\markup{ "to " \bold \box "A1" } r4^\markup{ "to tag, bar 27" } |

}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}


\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##t
     \transpose c \whatKey {
	\refrainChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \override Score.Clef.break-visibility = #all-invisible
      \override Score.KeySignature.break-visibility = #all-invisible
      \context Voice = "voiceMelody" { 
	\transpose c \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \noDoubleAccidentalMusic \transpose c \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      <<
      \refrainLyricsAOne
      \new Lyrics {
	\set associatedVoice = "voiceMelody"
	\refrainLyricsATwo }
      >>
      \refrainLyricsAOneEnd
      \refrainLyricsATwoEnd
      \refrainLyricsBstart
      \refrainLyricsB
      \refrainLyricsAThree
      \refrainLyricsCoda
    }
  >>
  \midi{} \layout { }
}

performanceNotes =
\markup {
  \column {
    \line { \huge { last 8 accordion, vocal chorus, guitar chorus, accordion first 16, } }
    \line { \huge { vocals bridge to end, repeat last 8, vamp } }
  }
}

\include "../Include/notes.ily"
