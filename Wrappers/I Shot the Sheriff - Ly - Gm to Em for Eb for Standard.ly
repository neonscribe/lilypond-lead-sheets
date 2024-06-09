%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/I Shot the Sheriff - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Shot the Sheriff - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Shot the Sheriff - Ly - Gm to Em for Eb for Standard"}

%}
