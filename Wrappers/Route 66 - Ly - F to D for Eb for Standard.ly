%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Route 66 - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Route 66 - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Route 66 - Ly - F to D for Eb for Standard"}

%}
