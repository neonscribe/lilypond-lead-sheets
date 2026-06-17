%% -*- Mode: LilyPond -*-

\new Score \with {
   \remove System_start_delimiter_engraver
}
<<
   #(if (and (defined? 'bassLineAltChords) bassLineAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+2.5
      #(if (and (defined? 'altChordSize) AltChordSize)
	#{ \override ChordName.font-size = \altChordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \bassLineKey \bassKey {
       \bassLineAltChords
	}
      }
      }
    #} )
    { \context ChordNames = "StdChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+2.5
      #(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \bassLineKey \bassKey {
       \bassLineChords
	}
      }
      }
    #(if (and (defined? 'bassLineKicksOverTime) bassLineKicksOverTime)
      #{
    \new RhythmicStaff {
      \override Staff.VerticalAxisGroup.staff-staff-spacing =
            #'( (basic-distance . 1) 
                (minimum-distance . 1) 
                (padding . 1) )
      \override Staff.StaffSymbol.transparent = ##t
      \override Staff.Clef.stencil = ##f
      \override Staff.TimeSignature.stencil = ##f
      \override Staff.BarLine.stencil = ##f
      \override Staff.StaffSymbol.line-count = #0
      \improvisationOn
      \magnifyMusic 0.63 \bassLineKicksOverTime
      \improvisationOff
    }
    #} )
    #(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \bassLineKey \bassKey {
      \bassLineMelody
      } }
      #} )
 \new StaffGroup \with {
    systemStartDelimiter = #'SystemStartBar
}
<<
    \new Staff 
    {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	#(ly:message "ambitus bassLine")
	\noDoubleAccidentalMusic \transpose \bassLineKey \bassKey {
	  \bassLineMelody
	  }
	}
    }
  >>
  >>
