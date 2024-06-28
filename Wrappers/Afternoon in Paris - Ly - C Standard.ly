%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Afternoon in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Afternoon in Paris - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Afternoon in Paris - Ly - C Standard"}

%}
