%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/When I Take My Sugar to Tea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Take My Sugar to Tea - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/When I Take My Sugar to Tea - Ly - F Bass for Standard"}

%}
