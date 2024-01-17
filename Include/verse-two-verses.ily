%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \verseKey \whatKey {
	\verseChords
	}
      }
      }
    \new Staff {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\transpose \verseKey \whatKey {
	  \verseMelody
	  }
	}
    }
     $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \noDoubleAccidentalMusic \transpose \verseKey \whatKey {
      \verseMelody
      } }
      #} )
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\verseLyricsOne
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \verseLyricsTwo }
	>>
	}
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

\score {
  \tripletFeel 8
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \verseKey \whatKey {
	\verseChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      #(set-accidental-style 'modern)
      \context Voice = "voiceMelody" { 
	\transpose \verseKey \whatKey {
	  \verseMelody
	  }
	}
    }
     $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \noDoubleAccidentalMusic \transpose \verseKey \whatKey {
      \verseMelody
      } }
      #} )
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\verseLyricsOne
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \verseLyricsTwo }
	>>
	}
    }
  >>
  \midi{}
}
