%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Just One of Those Things - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just One of Those Things - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Just One of Those Things - Ly - F Bass for Standard"}

%}
