%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \codaKey \whatKey {
       \codaChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \override Score.Clef.break-visibility = #all-invisible
      \override Score.KeySignature.break-visibility = #all-invisible
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \codaKey \whatKey {
	  \codaMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \codaKey \whatKey {
      \codaMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \codaLyrics
    }
  >>
  \midi{} \layout { ragged-bottom = ##t ragged-right = ##f }
}
