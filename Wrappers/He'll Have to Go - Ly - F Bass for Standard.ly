%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/He'll Have to Go - Ly - F Bass for Standard"}

%}
