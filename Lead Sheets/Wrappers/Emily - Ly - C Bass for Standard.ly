%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Emily - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Emily - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Emily - Ly - C Bass for Standard"}

%}
