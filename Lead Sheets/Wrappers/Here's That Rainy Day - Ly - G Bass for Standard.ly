%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Here's That Rainy Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Here's That Rainy Day - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Here's That Rainy Day - Ly - G Bass for Standard"}

%}
