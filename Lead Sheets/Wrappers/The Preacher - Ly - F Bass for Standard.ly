%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/The Preacher - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Preacher - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Preacher - Ly - F Bass for Standard"}

%}
