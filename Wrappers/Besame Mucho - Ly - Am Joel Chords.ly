%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key, Joel Chords"
whatKey = a
whatClef = "treble"

useJoelChords = ##t

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Others/Besame Mucho - Ly - Am Joel Chords"}

%}
