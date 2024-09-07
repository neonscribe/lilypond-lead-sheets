%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/A Foggy Day - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Foggy Day - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/A Foggy Day - Ly - F Bass for Standard"}

%}
