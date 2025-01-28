%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Singin' in the Rain - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Singin' in the Rain - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Singin' in the Rain - Ly - G Bass for Standard"}

%}
