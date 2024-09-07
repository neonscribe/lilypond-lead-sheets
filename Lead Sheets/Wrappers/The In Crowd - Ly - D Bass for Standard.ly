%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/The In Crowd - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The “In” Crowd - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The In Crowd - Ly - D Bass for Standard"}

%}
