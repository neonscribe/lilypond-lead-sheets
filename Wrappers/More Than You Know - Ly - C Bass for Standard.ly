%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/More Than You Know - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{More Than You Know - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/More Than You Know - Ly - C Bass for Standard"}

%}
