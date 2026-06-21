%% -*- Mode: LilyPond -*-

\version "2.26.0"

#(define (text-interface::print-X-centered grob)
  (ly:stencil-aligned-to (ly:text-interface::print grob) X CENTER ))

\include "predefined-guitar-fretboards.ly"

\storePredefinedDiagram #default-fret-table \chordmode { f:maj7 }
                        #guitar-tuning
                        #"1;x;2;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:maj7 }
                        #guitar-tuning
                        #"2;x;3;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:maj7 }
                        #guitar-tuning
                        #"2;x;3;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:maj7 }
                        #guitar-tuning
                        #"3;x;4;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:maj7 }
                        #guitar-tuning
                        #"4;x;5;5;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:maj7 }
                        #guitar-tuning
                        #"4;x;5;5;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:maj7 }
                        #guitar-tuning
                        #"5;x;6;6;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { as:maj7 }
                        #guitar-tuning
                        #"x;1;3;2;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:maj7 }
                        #guitar-tuning
                        #"x;1;3;2;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { b:maj7 }
                        #guitar-tuning
                        #"x;2;4;3;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:maj7 }
                        #guitar-tuning
                        #"x;3;5;4;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:maj7 }
                        #guitar-tuning
                        #"x;4;6;5;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { df:maj7 }
                        #guitar-tuning
                        #"x;4;6;5;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { d:maj7 }
                        #guitar-tuning
                        #"x;5;7;6;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:maj7 }
                        #guitar-tuning
                        #"x;x;1;3;3;3;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:maj7 }
                        #guitar-tuning
                        #"x;x;1;3;3;3;"

\storePredefinedDiagram #default-fret-table \chordmode { e:maj7 }
                        #guitar-tuning
                        #"x;x;2;4;4;4;"

\storePredefinedDiagram #default-fret-table \chordmode { f:6 }
                        #guitar-tuning
                        #"1;x;o;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:6 }
                        #guitar-tuning
                        #"2;x;1;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:6 }
                        #guitar-tuning
                        #"2;x;1;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:6 }
                        #guitar-tuning
                        #"3;x;2;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:6 }
                        #guitar-tuning
                        #"4;x;3;5;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:6 }
                        #guitar-tuning
                        #"4;x;3;5;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:6 }
                        #guitar-tuning
                        #"5;x;4;6;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { as:6 }
                        #guitar-tuning
                        #"6;x;5;7;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:6 }
                        #guitar-tuning
                        #"6;x;5;7;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { b:6 }
                        #guitar-tuning
                        #"7;x;6;8;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:6 }
                        #guitar-tuning
                        #"x;3;x;2;5;3;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:6 }
                        #guitar-tuning
                        #"x;4;x;3;6;4;"

\storePredefinedDiagram #default-fret-table \chordmode { df:6 }
                        #guitar-tuning
                        #"x;4;x;3;6;4;"

\storePredefinedDiagram #default-fret-table \chordmode { d:6 }
                        #guitar-tuning
                        #"x;5;x;4;7;5;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:6 }
                        #guitar-tuning
                        #"x;x;1;3;1;3;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:6 }
                        #guitar-tuning
                        #"x;x;1;3;1;3;"

\storePredefinedDiagram #default-fret-table \chordmode { e:6 }
                        #guitar-tuning
                        #"x;x;2;4;2;4;"

\storePredefinedDiagram #default-fret-table \chordmode { f:m6 }
                        #guitar-tuning
                        #"1;x;o;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:m6 }
                        #guitar-tuning
                        #"2;x;1;2;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:m6 }
                        #guitar-tuning
                        #"2;x;1;2;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:m6 }
                        #guitar-tuning
                        #"3;x;2;3;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:m6 }
                        #guitar-tuning
                        #"4;x;3;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:m6 }
                        #guitar-tuning
                        #"4;x;3;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:m6 }
                        #guitar-tuning
                        #"5;x;4;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { as:m6 }
                        #guitar-tuning
                        #"6;x;5;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:m6 }
                        #guitar-tuning
                        #"6;x;5;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { b:m6 }
                        #guitar-tuning
                        #"7;x;6;7;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:m6 }
                        #guitar-tuning
                        #"x;3;x;2;4;3;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:m6 }
                        #guitar-tuning
                        #"x;4;x;3;5;4;"

\storePredefinedDiagram #default-fret-table \chordmode { df:m6 }
                        #guitar-tuning
                        #"x;4;x;3;5;4;"

\storePredefinedDiagram #default-fret-table \chordmode { d:m6 }
                        #guitar-tuning
                        #"x;5;x;4;6;5;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:m6 }
                        #guitar-tuning
                        #"x;x;1;3;1;2;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:m6 }
                        #guitar-tuning
                        #"x;x;1;3;1;2;"

\storePredefinedDiagram #default-fret-table \chordmode { e:m6 }
                        #guitar-tuning
                        #"x;x;2;4;2;3;"

\storePredefinedDiagram #default-fret-table \chordmode { as:9 }
                        #guitar-tuning
                        #"x;1;o;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:9 }
                        #guitar-tuning
                        #"x;1;o;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { b:9 }
                        #guitar-tuning
                        #"x;2;1;2;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:9 }
                        #guitar-tuning
                        #"x;3;2;3;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:9 }
                        #guitar-tuning
                        #"x;4;3;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { df:9 }
                        #guitar-tuning
                        #"x;4;3;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { d:9 }
                        #guitar-tuning
                        #"x;5;4;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:9 }
                        #guitar-tuning
                        #"x;6;5;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:9 }
                        #guitar-tuning
                        #"x;6;5;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { e:9 }
                        #guitar-tuning
                        #"x;7;6;7;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:9 }
                        #guitar-tuning
                        #"x;x;3;2;4;3;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:9 }
                        #guitar-tuning
                        #"x;x;4;3;5;4;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:9 }
                        #guitar-tuning
                        #"x;x;4;3;5;4;"

\storePredefinedDiagram #default-fret-table \chordmode { g:9 }
                        #guitar-tuning
                        #"3;x;3;2;o;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:9 }
                        #guitar-tuning
                        #"4;x;4;3;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:9 }
                        #guitar-tuning
                        #"4;x;4;3;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:9 }
                        #guitar-tuning
                        #"5;x;5;4;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:m7 }
                        #guitar-tuning
                        #"1;x;1;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:m7 }
                        #guitar-tuning
                        #"2;x;2;2;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:m7 }
                        #guitar-tuning
                        #"2;x;2;2;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:m7 }
                        #guitar-tuning
                        #"3;x;3;3;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:m7 }
                        #guitar-tuning
                        #"4;x;4;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:m7 }
                        #guitar-tuning
                        #"4;x;4;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:m7 }
                        #guitar-tuning
                        #"5;x;5;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { as:m7 }
                        #guitar-tuning
                        #"6;x;6;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:m7 }
                        #guitar-tuning
                        #"6;x;6;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { b:m7 }
                        #guitar-tuning
                        #"7;x;7;7;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:m7 }
                        #guitar-tuning
                        #"8;x;8;8;8;x;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:m7 }
                        #guitar-tuning
                        #"x;4;x;4;5;4;"

\storePredefinedDiagram #default-fret-table \chordmode { df:m7 }
                        #guitar-tuning
                        #"x;4;x;4;5;4;"

\storePredefinedDiagram #default-fret-table \chordmode { d:m7 }
                        #guitar-tuning
                        #"x;5;x;5;6;5;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:m7 }
                        #guitar-tuning
                        #"x;6;x;6;7;6;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:m7 }
                        #guitar-tuning
                        #"x;6;x;6;7;6;"

\storePredefinedDiagram #default-fret-table \chordmode { e:m7 }
                        #guitar-tuning
                        #"x;7;x;7;8;7;"

\storePredefinedDiagram #default-fret-table \chordmode { as:sus9 }
                        #guitar-tuning
                        #"x;1;1;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:sus9 }
                        #guitar-tuning
                        #"x;1;1;1;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { b:sus9 }
                        #guitar-tuning
                        #"x;2;2;2;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:sus9 }
                        #guitar-tuning
                        #"x;3;3;3;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:sus9 }
                        #guitar-tuning
                        #"x;4;4;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { df:sus9 }
                        #guitar-tuning
                        #"x;4;4;4;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { d:sus9 }
                        #guitar-tuning
                        #"x;5;5;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:sus9 }
                        #guitar-tuning
                        #"x;6;6;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:sus9 }
                        #guitar-tuning
                        #"x;6;6;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { e:sus9 }
                        #guitar-tuning
                        #"x;7;7;7;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:sus9 }
                        #guitar-tuning
                        #"x;8;8;8;8;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:sus9 }
                        #guitar-tuning
                        #"2;x;2;1;o;x;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:sus9 }
                        #guitar-tuning
                        #"2;x;2;1;o;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:sus9 }
                        #guitar-tuning
                        #"3;x;3;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:sus9 }
                        #guitar-tuning
                        #"4;x;4;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:sus9 }
                        #guitar-tuning
                        #"4;x;4;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:sus9 }
                        #guitar-tuning
                        #"5;x;5;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { as:7.9- }
                        #guitar-tuning
                        #"x;1;o;1;o;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:7.9- }
                        #guitar-tuning
                        #"x;1;o;1;o;x;"

\storePredefinedDiagram #default-fret-table \chordmode { b:7.9- }
                        #guitar-tuning
                        #"x;2;1;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:7.9- }
                        #guitar-tuning
                        #"x;3;2;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:7.9- }
                        #guitar-tuning
                        #"x;4;3;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { df:7.9- }
                        #guitar-tuning
                        #"x;4;3;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { d:7.9- }
                        #guitar-tuning
                        #"x;5;4;5;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:7.9- }
                        #guitar-tuning
                        #"x;6;5;6;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:7.9- }
                        #guitar-tuning
                        #"x;6;5;6;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { e:7.9- }
                        #guitar-tuning
                        #"x;7;6;7;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:7.9- }
                        #guitar-tuning
                        #"x;x;3;2;4;2;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:7.9- }
                        #guitar-tuning
                        #"x;x;4;3;5;3;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:7.9- }
                        #guitar-tuning
                        #"x;x;4;3;5;3;"

\storePredefinedDiagram #default-fret-table \chordmode { g:7.9- }
                        #guitar-tuning
                        #"3;x;3;1;o;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:7.9- }
                        #guitar-tuning
                        #"4;x;4;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:7.9- }
                        #guitar-tuning
                        #"4;x;4;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:7.9- }
                        #guitar-tuning
                        #"5;x;5;3;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:dim7.13- }
                        #guitar-tuning
                        #"1;x;o;1;2;x;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:dim7.13- }
                        #guitar-tuning
                        #"2;x;1;2;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:dim7.13- }
                        #guitar-tuning
                        #"2;x;1;2;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { g:dim7.13- }
                        #guitar-tuning
                        #"3;x;2;3;4;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:dim7.13- }
                        #guitar-tuning
                        #"4;x;3;4;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:dim7.13- }
                        #guitar-tuning
                        #"4;x;3;4;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:dim7.13- }
                        #guitar-tuning
                        #"5;x;4;5;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { as:dim7.13- }
                        #guitar-tuning
                        #"6;x;5;6;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:dim7.13- }
                        #guitar-tuning
                        #"6;x;5;6;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { b:dim7.13- }
                        #guitar-tuning
                        #"x;2;x;1;3;3;"

\storePredefinedDiagram #default-fret-table \chordmode { c:dim7.13- }
                        #guitar-tuning
                        #"x;3;x;2;4;4;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:dim7.13- }
                        #guitar-tuning
                        #"x;4;x;3;5;5;"

\storePredefinedDiagram #default-fret-table \chordmode { df:dim7.13- }
                        #guitar-tuning
                        #"x;4;x;3;5;5;"

\storePredefinedDiagram #default-fret-table \chordmode { d:dim7.13- }
                        #guitar-tuning
                        #"x;5;x;4;6;6;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:dim7.13- }
                        #guitar-tuning
                        #"x;6;x;5;7;7;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:dim7.13- }
                        #guitar-tuning
                        #"x;6;x;5;7;7;"

\storePredefinedDiagram #default-fret-table \chordmode { e:dim7.13- }
                        #guitar-tuning
                        #"x;7;x;6;8;8;"

\storePredefinedDiagram #default-fret-table \chordmode { f:7.9-.13- }
                        #guitar-tuning
                        #"1;x;1;2;2;2;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:7.9-.13- }
                        #guitar-tuning
                        #"2;x;2;3;3;3;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:7.9-.13- }
                        #guitar-tuning
                        #"2;x;2;3;3;3;"

\storePredefinedDiagram #default-fret-table \chordmode { g:7.9-.13- }
                        #guitar-tuning
                        #"3;x;3;4;4;4;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:7.9-.13- }
                        #guitar-tuning
                        #"4;x;4;5;5;5;"

\storePredefinedDiagram #default-fret-table \chordmode { af:7.9-.13- }
                        #guitar-tuning
                        #"4;x;4;5;5;5;"

\storePredefinedDiagram #default-fret-table \chordmode { a:7.9-.13- }
                        #guitar-tuning
                        #"5;x;5;6;6;6;"

\storePredefinedDiagram #default-fret-table \chordmode { as:7.9-.13- }
                        #guitar-tuning
                        #"6;x;6;7;7;7;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:7.9-.13- }
                        #guitar-tuning
                        #"6;x;6;7;7;7;"

\storePredefinedDiagram #default-fret-table \chordmode { b:7.9-.13- }
                        #guitar-tuning
                        #"x;2;1;2;1;3;"

\storePredefinedDiagram #default-fret-table \chordmode { c:7.9-.13- }
                        #guitar-tuning
                        #"x;3;2;3;2;4;"

\storePredefinedDiagram #default-fret-table \chordmode { cs:7.9-.13- }
                        #guitar-tuning
                        #"x;4;3;4;3;5;"

\storePredefinedDiagram #default-fret-table \chordmode { df:7.9-.13- }
                        #guitar-tuning
                        #"x;4;3;4;3;5;"

\storePredefinedDiagram #default-fret-table \chordmode { d:7.9-.13- }
                        #guitar-tuning
                        #"x;5;4;5;4;6;"

\storePredefinedDiagram #default-fret-table \chordmode { ds:7.9-.13- }
                        #guitar-tuning
                        #"x;6;5;6;5;7;"

\storePredefinedDiagram #default-fret-table \chordmode { ef:7.9-.13- }
                        #guitar-tuning
                        #"x;6;5;6;5;7;"

\storePredefinedDiagram #default-fret-table \chordmode { e:7.9-.13- }
                        #guitar-tuning
                        #"x;7;6;7;6;8;"

\storePredefinedDiagram #default-fret-table \chordmode { af:dim7 }
                        #guitar-tuning
                        #"4;x;3;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { fs:dim7 }
                        #guitar-tuning
                        #"2;x;1;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gf:dim7 }
                        #guitar-tuning
                        #"2;x;1;2;1;x;"

\storePredefinedDiagram #default-fret-table \chordmode { gs:dim7 }
                        #guitar-tuning
                        #"4;x;3;4;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { a:7.13- }
                        #guitar-tuning
                        #"5;x;5;6;6;x;"

\storePredefinedDiagram #default-fret-table \chordmode { f:maj7/a }
                        #guitar-tuning
                        #"5;x;3;5;5;x;"

\storePredefinedDiagram #default-fret-table \chordmode { c:7/bf }
                        #guitar-tuning
                        #"6;x;5;5;5;x;"

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

\storePredefinedDiagram #default-fret-table \chordmode { ef:7.9+ }
                        #guitar-tuning
                        #"x;6;5;6;7;x;"

\storePredefinedDiagram #default-fret-table \chordmode { af:7.11+ }
                        #guitar-tuning
                        #"4;x;4;5;3;x;"

\storePredefinedDiagram #default-fret-table \chordmode { bf:7.9+ }
                        #guitar-tuning
                        #"x;1;0;1;2;x;"
