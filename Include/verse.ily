%% -*- Mode: LilyPond -*-

\score {
 <<
   $(if (and (defined? 'verseAltChords) verseAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'altChordSize) AltChordSize)
	#{ \override ChordName.font-size = \altChordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \verseKey \whatKey {
       \verseAltChords
	}
      }
      }
    #} )
    { \context ChordNames = "StdChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+3
      $(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \verseKey \whatKey {
       \verseChords
	}
      }
      }
    $(if (and (defined? 'verseKicksOverTime) verseKicksOverTime)
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
      \magnifyMusic 0.63 \verseKicksOverTime
      \improvisationOff
    }
    #} )
    \new Staff 
    {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus verse")
	\noDoubleAccidentalMusic \transpose \verseKey \whatKey {
	  \verseMelody
	  }
	}
    }
    $(if (and (defined? 'verseBass) verseBass)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \transpose \verseKey \bassKey { \verseBass }
	}
    }
      #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \verseKey \whatKey {
      \verseMelody
      } }
      #} )
    $(if (and (defined? 'verseLyrics) verseLyrics)
      (if (and (defined? 'verseLyricsTwo) verseLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\verseLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
	  \verseLyricsTwo }
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \verseLyrics
    }
      #} ) )
    $(if (and (defined? 'verseMelodyTwo) verseMelodyTwo)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
	\noDoubleAccidentalMusic \transpose \verseKey \whatKey {
	  \verseMelodyTwo
	  }
	}
    }
      #} )
  >>
  \layout { 
    ragged-bottom = ##t ragged-right = ##f 
  }
}

midiKey = \verseKey
midiChords = \verseChords
midiMelody = \verseMelody

\include "../Include/midi.ily"
