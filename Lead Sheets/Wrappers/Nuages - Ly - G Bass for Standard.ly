%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Nuages - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nuages - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Nuages - Ly - G Bass for Standard"}

%}
