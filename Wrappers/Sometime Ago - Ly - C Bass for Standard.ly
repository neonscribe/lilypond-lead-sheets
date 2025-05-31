%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Sometime Ago - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sometime Ago - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sometime Ago - Ly - C Bass for Standard"}

%}
