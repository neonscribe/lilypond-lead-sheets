%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Road Song - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Road Song - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Road Song - Ly - Gm Bass for Standard"}

%}
