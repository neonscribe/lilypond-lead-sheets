%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Afternoon in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Afternoon in Paris - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Afternoon in Paris - Ly - C to A for Eb for Standard"}

%}
