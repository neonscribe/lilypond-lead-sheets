%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Moon River - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moon River - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Moon River - Ly - C Bass for Standard"}

%}
