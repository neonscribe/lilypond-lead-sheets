%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Lover Waltz - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (3/4) - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lover Waltz - Ly - C Bass for Standard"}

%}
