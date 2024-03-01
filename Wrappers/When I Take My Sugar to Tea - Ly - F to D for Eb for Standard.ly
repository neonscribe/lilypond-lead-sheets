%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/When I Take My Sugar to Tea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Take My Sugar to Tea - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/When I Take My Sugar to Tea - Ly - F to D for Eb for Standard"}

%}
