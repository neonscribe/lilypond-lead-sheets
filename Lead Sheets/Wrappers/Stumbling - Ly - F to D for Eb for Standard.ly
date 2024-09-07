%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Two Parts, in F, to D for Eb"
whatKey = d'
whatClef = "treble"

\include "../Core/Stumbling - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stumbling - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Stumbling - Ly - F to D for Eb for Standard"}

%}
