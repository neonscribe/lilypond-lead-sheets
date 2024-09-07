%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/At Last - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{At Last - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/At Last - Ly - C Bass for Standard"}

%}
