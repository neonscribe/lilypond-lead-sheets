%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Am I Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Am I Blue - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Am I Blue - Ly - F to D for Eb for Standard"}

%}
