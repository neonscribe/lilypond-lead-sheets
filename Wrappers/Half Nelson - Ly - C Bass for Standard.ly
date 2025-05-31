%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Half Nelson - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Half Nelson - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Half Nelson - Ly - C Bass for Standard"}

%}
