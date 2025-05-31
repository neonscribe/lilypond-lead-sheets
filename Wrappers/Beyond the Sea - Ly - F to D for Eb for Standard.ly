%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Beyond the Sea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beyond the Sea - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Beyond the Sea - Ly - F to D for Eb for Standard"}

%}
