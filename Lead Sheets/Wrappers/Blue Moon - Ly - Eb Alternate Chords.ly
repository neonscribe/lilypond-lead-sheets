%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Chords"
whatKey = ef
whatClef = "treble"

useAlternateChords = ##t

\include "../Core/Blue Moon - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Moon - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Blue Moon - Ly - Eb Alternate Chords"}

%}
