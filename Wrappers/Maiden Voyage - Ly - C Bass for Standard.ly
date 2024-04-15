%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
bassKey = c
whatClef = "bass"

\include "../Core/Maiden Voyage - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Maiden Voyage - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Maiden Voyage - Ly - C Bass for Standard"}

%}
