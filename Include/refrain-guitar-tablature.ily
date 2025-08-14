%% -*- Mode: LilyPond -*-

\score {
  <<
    { \context ChordNames 
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
    $(if (and (defined? 'refrainKicksOverTime) refrainKicksOverTime)
      #{
    \new RhythmicStaff {
      \override Staff.VerticalAxisGroup.staff-staff-spacing =
            #'( (basic-distance . 1) 
                (minimum-distance . 1) 
                (padding . 1) )
        \override Staff.TimeSignature.stencil = ##f
        \override Staff.BarLine.stencil = ##f
        \override Staff.StaffSymbol.line-count = #0
      \improvisationOn
      \magnifyMusic 0.63 \refrainKicksOverTime
      \improvisationOff
    }
    #} )
    \new Staff \with { \omit StringNumber } {
      \clef "treble_8"
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
    \new TabStaff 
      {
	\clef moderntab
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	}
    }
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
  >>
  \layout { ragged-bottom = ##t ragged-right = ##f }
}

\include "../Include/refrain-midi.ily"
