%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/This Time the Dream's on Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{This Time the Dream's on Me - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/This Time the Dream's on Me - Ly - G Bass for Standard"}

%}
