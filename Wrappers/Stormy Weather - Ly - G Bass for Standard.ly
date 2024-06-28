%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Stormy Weather - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stormy Weather - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Stormy Weather - Ly - G Bass for Standard"}

%}
