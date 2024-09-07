%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/A Foggy Day - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Foggy Day (In London Town) - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/A Foggy Day - Ly - F to D for Eb for Standard"}

%}
