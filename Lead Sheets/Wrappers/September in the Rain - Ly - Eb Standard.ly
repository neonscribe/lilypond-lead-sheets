%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/September in the Rain - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September in the Rain - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/September in the Rain - Ly - Eb Standard"}

%}
