%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Afternoon in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Afternoon in Paris - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Afternoon in Paris - Ly - C to D for Bb for Standard"}

%}
