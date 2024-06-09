%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Any Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Any Time - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Any Time - Ly - F Bass for Standard"}

%}
