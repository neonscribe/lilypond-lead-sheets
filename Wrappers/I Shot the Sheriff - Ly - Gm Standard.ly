%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/I Shot the Sheriff - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Shot the Sheriff - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/I Shot the Sheriff - Ly - Gm Standard"}

%}
