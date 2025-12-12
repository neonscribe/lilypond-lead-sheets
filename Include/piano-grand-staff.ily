%% -*- Mode: LilyPond -*-

emphasize = {
  \override Lyrics.LyricText.font-shape = #'italic
}

\score {
 <<
   $(if (and (defined? 'refrainAltChords) refrainAltChords)
     #{
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
    #} )
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
    $(if (and (defined? 'refrainMelody) refrainMelody)
      #{
    \new Staff 
    {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus piano-grand-staff refrain")
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainMelody
	  }
	}
    }
      #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
      \refrainMelody
      } }
      #} )
    $(if (and (defined? 'refrainLyrics) refrainLyrics)
      (if (and (defined? 'refrainLyricsTwo) refrainLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\refrainLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
       #(if (and (defined? 'refrainTwoLanguages) refrainTwoLanguages)
	 #{ \emphasize \refrainLyricsTwo #}
	 #{ \refrainLyricsTwo #} ) }
       #(if (and (defined? 'refrainLyricsThree) refrainLyricsThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \refrainLyricsThree }
	 #} )
       #(if (and (defined? 'refrainLyricsFour) refrainLyricsFour)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \refrainLyricsFour }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \refrainLyrics
    }
      #} ) )
    \new PianoStaff <<
    \new Staff = "upper"
    {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus piano-grand-staff right hand")
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainRightHand
	  }
	}
    }
    \new Staff = "lower"
    {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus piano-grand-staff left hand")
	\noDoubleAccidentalMusic \transpose \refrainKey \whatKey {
	  \refrainLeftHand
	  }
	}
    }
    >>
  >>
  \layout { 
    ragged-bottom = ##t ragged-right = ##f 
  }
}
