%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Stay a Little Longer - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stay a Little Longer - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Stay a Little Longer - Ly - G Bass for Standard"}

%}
