%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/I Shot the Sheriff - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Shot the Sheriff - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Shot the Sheriff - Ly - Gm Bass for Standard"}

%}
