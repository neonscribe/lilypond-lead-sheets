%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/September in the Rain - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September in the Rain - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/September in the Rain - Ly - Eb to C for Eb for Standard"}

%}
