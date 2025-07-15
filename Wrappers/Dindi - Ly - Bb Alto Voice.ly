%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sylvia Telles Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Dindi - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dindi - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Dindi - Ly - Bb Alto Voice"}

%}
