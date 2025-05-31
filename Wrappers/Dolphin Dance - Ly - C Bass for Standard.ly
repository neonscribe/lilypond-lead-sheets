%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Dolphin Dance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dolphin Dance - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dolphin Dance - Ly - C Bass for Standard"}

%}
