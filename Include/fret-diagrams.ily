%%% fret-diagrams.ily

#(define (text-interface::print-X-centered grob)
  (ly:stencil-aligned-to (ly:text-interface::print grob) X CENTER ))

\include "predefined-guitar-fretboards.ly"

\storePredefinedDiagram #default-fret-table \chordmode { a:m6 }
                        #guitar-tuning
                        #"5;x;4;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:dim7.13- }
                        #guitar-tuning
                        #"4;x;3;4;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:m6 }
                        #guitar-tuning
                        #"3;x;2;3;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:9 }
                        #guitar-tuning
                        #"x;3;2;3;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:maj7 }
                        #guitar-tuning
                        #"1;x;2;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:m6 }
                        #guitar-tuning
                        #"1;x;o;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { e:m7 }
                        #guitar-tuning
                        #"x;7;9;7;8;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:m7 }
                        #guitar-tuning
                        #"5;x;5;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:m7 }
                        #guitar-tuning
                        #"3;x;3;3;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:sus9 }
                        #guitar-tuning
                        #"x;3;3;3;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:6 }
                        #guitar-tuning
                        #"1;x;o;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:m7 }
                        #guitar-tuning
                        #"1;x;1;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:9 }
                        #guitar-tuning
                        #"x;1;o;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { e:7.9- }
                        #guitar-tuning
                        #"x;7;6;7;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:7.9- }
                        #guitar-tuning
                        #"5;x;5;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { d:m7 }
                        #guitar-tuning
                        #"x;5;7;5;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:sus9 }
                        #guitar-tuning
                        #"3;x;3;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:7.9- }
                        #guitar-tuning
                        #"3;x;3;1;o;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:7.9-.13- }
                        #guitar-tuning
                        #"5;x;5;6;6;6;"

\storePredefinedDiagram #default-fret-table \chordmode { af:dim7 }
                        #guitar-tuning
                        #"4;x;3;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:dim7 }
                        #guitar-tuning
                        #"2;x;1;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:dim7 }
                        #guitar-tuning
                        #"4;x;3;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:7.13- }
                        #guitar-tuning
                        #"5;x;5;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:maj7 }
                        #guitar-tuning
                        #"6;x;7;7;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:m6 }
                        #guitar-tuning
                        #"6;x;5;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:maj7/a }
                        #guitar-tuning
                        #"5;x;3;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:7/bf }
                        #guitar-tuning
                        #"6;x;5;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { d:9 }
                        #guitar-tuning
                        #"x;5;4;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:7.13- }
                        #guitar-tuning
                        #"8;x;8;9;9;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:m7/g }
                        #guitar-tuning
                        #"3;x;1;3;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:13 }
                        #guitar-tuning
                        #"3;x;3;4;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:7.13- }
                        #guitar-tuning
                        #"3;x;3;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:7.9- }
                        #guitar-tuning
                        #"x;3;2;3;2;x;"

\markup {
  \fill-line {
    \score
    {
      <<
	\set Score.barNumberVisibility = ##f
	\new ChordNames
	<< \fretDiagrams >>
	\new FretBoards
	<< \fretDiagrams >>
      >>
      \layout {
        \context {
          \ChordNames
	  \override ChordName.font-size = #+3
	  \override ChordName.font-series = #'bold
          \override ChordName.stencil = #text-interface::print-X-centered
        }
        \context {
          \FretBoards
	  \override FretBoard.fret-diagram-details.number-type = #'arabic
	  \override FretBoard.size = #'1.5
          \override FretBoard.align-dir = #CENTER
        }
      }
    }
  }
}
