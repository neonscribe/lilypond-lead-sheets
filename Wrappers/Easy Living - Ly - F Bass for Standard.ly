%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Easy Living - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Easy Living - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Easy Living - Ly - F Bass for Standard"}

%}
