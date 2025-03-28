%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Cool Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cool Blues - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Cool Blues - Ly - C Bass for Standard"}

%}
