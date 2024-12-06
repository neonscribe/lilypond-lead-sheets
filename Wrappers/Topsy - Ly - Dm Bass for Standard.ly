%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Topsy - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Topsy - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Topsy - Ly - Dm Bass for Standard"}

%}
