%% -*- Mode: LilyPond -*-

midiKey = \outroKey
midiChords = \outroChords
midiMelody = \outroMelody

midiIncludeFile = 
#(if (and (defined? 'midiOnly) midiOnly)
  "../Include/midi.ily"
  "../Include/nothing.ily")

$(if (not (and (defined? 'midiOnly) midiOnly))
  #{
\new Score \with {
   \remove System_start_delimiter_engraver
}
<<
   $(if (and (defined? 'outroAltChords) outroAltChords)
     #{
    { \context ChordNames = "AltChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+2.5
      $(if (and (defined? 'altChordSize) AltChordSize)
	#{ \override ChordName.font-size = \altChordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \outroKey \whatKey {
       \outroAltChords
	}
      }
      }
    #} )
    { \context ChordNames = "StdChords"
      \with { \consists #Bass_changes_equal_root_engraver }
      {
      \override ChordName.font-size = #+2.5
      $(if (and (defined? 'chordSize) chordSize)
	#{ \override ChordName.font-size = \chordSize #} )
      \override ChordName.font-series = #'bold
      \set chordChanges = ##f
     \transpose \outroKey \whatKey {
       \outroChords
	}
      }
      }
    $(if (and (defined? 'outroKicksOverTime) outroKicksOverTime)
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
      \magnifyMusic 0.63 \outroKicksOverTime
      \improvisationOff
    }
    #} )
    $(if (and (defined? 'printNoteNames) printNoteNames)
      #{ 
      \new NoteNames \tiedNoteToSkip { 
      \removeWithTag LLS \noDoubleAccidentalMusic \transpose \outroKey \whatKey {
      \outroMelody
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
	$(ly:message "ambitus outro")
	\noDoubleAccidentalMusic \transpose \outroKey \whatKey {
	  \outroMelody
	  }
	}
    }
    $(if (and (defined? 'outroBass) outroBass)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelody" { 
      %% Only transpose bass line in the same octave
      \noDoubleAccidentalMusic \transpose \outroKey \bassKey { \outroBass }
	}
    }
      #} )
    $(if (and (not (and (defined? 'hideLyrics) hideLyrics))
	  (defined? 'outroLyrics) outroLyrics)
      (if (and (defined? 'outroLyricsTwo) outroLyricsTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelody" 
      {
	<<
	\outroLyrics
	\new Lyrics {
	  \set associatedVoice = "voiceMelody"
       #(if (and (defined? 'outroTwoLanguages) outroTwoLanguages)
	 #{ \emphasize \outroLyricsTwo #}
	 #{ \outroLyricsTwo #} ) }
       #(if (and (defined? 'outroLyricsThree) outroLyricsThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \outroLyricsThree }
	 #} )
       #(if (and (defined? 'outroLyricsFour) outroLyricsFour)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelody"
	 \outroLyricsFour }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelody"
    {
      \outroLyrics
    }
      #} ) )
    $(if (and (defined? 'outroMelodyTwo) outroMelodyTwo)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelodyTwo" \with { \consists #ambitus-engraver } { 
	$(ly:message "ambitus outro melody two")
	\noDoubleAccidentalMusic \transpose \outroKey \whatKey {
	  \outroMelodyTwo
	  }
	}
    }
      #} )
    $(if (and (defined? 'outroLyricsVoiceTwo) outroLyricsVoiceTwo)
      (if (and (defined? 'outroLyricsTwoVoiceTwo) outroLyricsTwoVoiceTwo)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyTwo" 
      {
	<<
	\outroLyricsVoiceTwo
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyTwo"
       #(if (and (defined? 'outroTwoLanguagesVoiceTwo) outroTwoLanguagesVoiceTwo)
	 #{ \emphasize \outroLyricsTwoVoiceTwo #}
	 #{ \outroLyricsTwoVoiceTwo #} ) }
       #(if (and (defined? 'outroLyricsThreeVoiceTwo) outroLyricsThreeVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \outroLyricsThreeVoiceTwo }
	 #} )
       #(if (and (defined? 'outroLyricsFourVoiceTwo) outroLyricsFourVoiceTwo)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyTwo"
	 \outroLyricsFourVoiceTwo }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyTwo"
    {
      \outroLyricsVoiceTwo
    }
      #} ) )
    $(if (and (defined? 'outroMelodyThree) outroMelodyThree)
      #{
    \new Staff {
      \include "../Include/staff-settings.ily"
      \context Voice = "voiceMelodyThree" \with { \consists #ambitus-engraver } { 
	\noDoubleAccidentalMusic \transpose \outroKey \whatKey {
	  \outroMelodyThree
	  }
	}
    }
      #} )
    $(if (and (defined? 'outroLyricsVoiceThree) outroLyricsVoiceThree)
      (if (and (defined? 'outroLyricsTwoVoiceThree) outroLyricsTwoVoiceThree)
       #{
   \new Lyrics = "lyrics" {
      \lyricsto "voiceMelodyThree" 
      {
	<<
	\outroLyricsVoiceThree
	\new Lyrics {
	  \set associatedVoice = "voiceMelodyThree"
       #(if (and (defined? 'outroTwoLanguagesVoiceThree) outroTwoLanguagesVoiceThree)
	 #{ \emphasize \outroLyricsTwoVoiceThree #}
	 #{ \outroLyricsTwoVoiceThree #} ) }
       #(if (and (defined? 'outroLyricsThreeVoiceThree) outroLyricsThreeVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \outroLyricsThreeVoiceThree }
	 #} )
       #(if (and (defined? 'outroLyricsFourVoiceThree) outroLyricsFourVoiceThree)
	 #{
	 \new Lyrics {
	 \set associatedVoice = "voiceMelodyThree"
	 \outroLyricsFourVoiceThree }
	 #} )
	>>
	}
    }
       #}
      #{
    \new Lyrics \lyricsto "voiceMelodyThree"
    {
      \outroLyricsVoiceThree
    }
      #} ) )
  >>
 >>
#} )

$(if (and (defined? 'headerTitle) headerTitle)
  #{ \header {
	    title = \headerTitle
	    subtitle = \subtitle
	    poet = \headerPoet
	    composer = \headerComposer
	    copyright = \markup \small { \now " " \headerCopyright }
} #} )

headerTitle = ##f

\include \midiIncludeFile
