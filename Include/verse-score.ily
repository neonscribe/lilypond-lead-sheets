%% -*- Mode: LilyPond -*-

\new Score \with {
   \remove System_start_delimiter_engraver
}
<<
   #(if (and (defined? 'verseAltChords) verseAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+2.5
      #(if (and (defined? 'altChordSize) AltChordSize)
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
      \override ChordName.font-size = #+2.5
      #(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \verseKey \whatKey {
       \verseChords
	}
      }
      }
    #(if (and (defined? 'verseKicksOverTime) verseKicksOverTime)
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
      \magnifyMusic 0.63 \verseKicksOverTime
      \improvisationOff
    }
    #} )
    #(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \verseKey \whatKey {
      \verseMelody
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
	#(ly:message "ambitus verse")
	\noDoubleAccidentalMusic \transpose \verseKey \whatKey {
	  \verseMelody
	  }
	}
    }
    #(if (and (defined? 'verseBass) verseBass)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \noDoubleAccidentalMusic \transpose \verseKey \bassKey { \verseBass }
	}
    }
      #} )
    #(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'verseLyrics) verseLyrics)
      (if (and (defined? 'verseLyricsTwo) verseLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\verseLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
       #(if (and (defined? 'verseTwoLanguages) verseTwoLanguages)
	 #{ \emphasize \verseLyricsTwo #}
	 #{ \verseLyricsTwo #} ) }
       #(if (and (defined? 'verseLyricsThree) verseLyricsThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \verseLyricsThree }
	 #} )
       #(if (and (defined? 'verseLyricsFour) verseLyricsFour)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \verseLyricsFour }
	 #} )
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
    #(if (and (defined? 'verseMelodyTwo) verseMelodyTwo)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelodyTwo" \with { \consists #ambitus-engraver } { 
	#(ly:message "ambitus verse melody two")
	\noDoubleAccidentalMusic \transpose \verseKey \whatKey {
	  \verseMelodyTwo
	  }
	}
    }
      #} )
    #(if (and (defined? 'verseLyricsVoiceTwo) verseLyricsVoiceTwo)
      (if (and (defined? 'verseLyricsTwoVoiceTwo) verseLyricsTwoVoiceTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyTwo" 
      {
	<<
	\verseLyricsVoiceTwo
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyTwo"
       #(if (and (defined? 'verseTwoLanguagesVoiceTwo) verseTwoLanguagesVoiceTwo)
	 #{ \emphasize \verseLyricsTwoVoiceTwo #}
	 #{ \verseLyricsTwoVoiceTwo #} ) }
       #(if (and (defined? 'verseLyricsThreeVoiceTwo) verseLyricsThreeVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \verseLyricsThreeVoiceTwo }
	 #} )
       #(if (and (defined? 'verseLyricsFourVoiceTwo) verseLyricsFourVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \verseLyricsFourVoiceTwo }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyTwo"
    {
      \verseLyricsVoiceTwo
    }
      #} ) )
    #(if (and (defined? 'verseMelodyThree) verseMelodyThree)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelodyThree" \with { \consists #ambitus-engraver } { 
	\noDoubleAccidentalMusic \transpose \verseKey \whatKey {
	  \verseMelodyThree
	  }
	}
    }
      #} )
    #(if (and (defined? 'verseLyricsVoiceThree) verseLyricsVoiceThree)
      (if (and (defined? 'verseLyricsTwoVoiceThree) verseLyricsTwoVoiceThree)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyThree" 
      {
	<<
	\verseLyricsVoiceThree
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyThree"
       #(if (and (defined? 'verseTwoLanguagesVoiceThree) verseTwoLanguagesVoiceThree)
	 #{ \emphasize \verseLyricsTwoVoiceThree #}
	 #{ \verseLyricsTwoVoiceThree #} ) }
       #(if (and (defined? 'verseLyricsThreeVoiceThree) verseLyricsThreeVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \verseLyricsThreeVoiceThree }
	 #} )
       #(if (and (defined? 'verseLyricsFourVoiceThree) verseLyricsFourVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \verseLyricsFourVoiceThree }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyThree"
    {
      \verseLyricsVoiceThree
    }
      #} ) )
  >>
  >>
