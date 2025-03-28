%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Dearly Beloved - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dearly Beloved - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dearly Beloved - Ly - C Bass for Standard"}

%}
