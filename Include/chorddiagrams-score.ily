%% -*- Mode: LilyPond -*-

\version "2.26.0"

\new Score \with {
   \remove System_start_delimiter_engraver
}
      <<
	\new ChordNames \with {
	  \override ChordName.font-size = #+2.5
	  \override ChordName.font-series = #'bold
	  \override ChordName.stencil = #text-interface::print-X-centered
	}
	\transpose \refrainKey \whatKey { \chordDiagrams }
	\new FretBoards \with {
	  \override FretBoard.fret-diagram-details.number-type = #'arabic
	  \override FretBoard.size = #'1.5
	  \override FretBoard.align-dir = #CENTER
	}
	\transpose \refrainKey \whatKey { \chordDiagrams }
      >>
