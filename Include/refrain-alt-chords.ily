%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'altChordSize) AltChordSize)
	#{ \override ChordName.font-size = \altChordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainAltChords
	}
      }
      }
    { \context ChordNames = "StdChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff 
      {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

\score {
  $(if (and (defined? 'bossaRhythm) bossaRhythm)
    #{ \applySwing 16 #'(3 2 2 3)
  <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames  \tiedNoteToSkip{ 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
  >>
       #}
  (if (not (and (defined? 'straightEighths) straightEighths))
  #{ \tripletFeel 8
       <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames  \tiedNoteToSkip{ 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
  >>
     #}
  #{   <<
    { \context ChordNames \with {midiInstrument = "drawbar organ"}
      {
      \override ChordName.font-size = #+3
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \refrainKey \whatKey {
       \refrainChords
	}
      }
      }
    \new Staff \with {midiInstrument = "overdriven guitar"} {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames  \tiedNoteToSkip{ 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
  >>
       #} ))
  \midi{}  
}
