%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Afternoon in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Afternoon in Paris - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Afternoon in Paris - Ly - C Bass for Standard"}

%}
