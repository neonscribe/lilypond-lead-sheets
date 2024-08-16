%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Too Close for Comfort - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Close for Comfort - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Too Close for Comfort - Ly - C Bass for Standard"}

%}
