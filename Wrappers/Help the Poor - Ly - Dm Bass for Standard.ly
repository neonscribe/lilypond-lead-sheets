%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Help the Poor - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Help the Poor - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Help the Poor - Ly - Dm Bass for Standard"}

%}
