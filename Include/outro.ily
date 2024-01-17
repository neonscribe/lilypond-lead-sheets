%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \outroKey \whatKey {
       \outroChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \outroKey \whatKey {
	  \outroMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \noDoubleAccidentalMusic \transpose \outroKey \whatKey {
      \outroMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \outroLyrics
    }
  >>
  \midi{} \layout { ragged-bottom = ##t ragged-right = ##f }
}
